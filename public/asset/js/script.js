$(document).ready(function () {
    // Hide and Show Login and Register form
    $("#showRegister").click(function () {
        $("#loginForm").hide();
        $("#registerForm").show();
    });

    $("#showLogin").click(function () {
        $("#loginForm").show();
        $("#registerForm").hide();
    });

    var apiUrl = "http://127.0.0.1:2023/api/";
    // Register User
    $("#registerUser").submit(function (event) {
        event.preventDefault();
        var formData = $(this).serialize();
        $.ajax({
            type: "POST",
            url: apiUrl + "register",
            data: formData,
            success: function (response) {
                if (response.status == true) {
                    $("#registerUser")[0].reset();
                    $(".is-invalid").removeClass("is-invalid");
                    $(".invalid-feedback").text("");
                    $("#loginForm").show();
                    $("#registerForm").hide();
                    toastr.success(response.message);
                } else {
                    handleValidationRegisterErrors(response.data);
                }
            },
        });
    });

    // Login User
    $("#loginUser").submit(function (event) {
        event.preventDefault();
        var formData = $(this).serialize();
        $.ajax({
            type: "POST",
            url: apiUrl + "login",
            data: formData,
            success: function (response) {
                console.log(response);
                if (response.status == true) {
                    $("#loginUser")[0].reset();
                    $(".is-invalid").removeClass("is-invalid");
                    $(".invalid-feedback").text("");
                    window.location.href = "/dashboard";
                } else if (response.status == false) {
                    toastr.error(response.message);
                } else {
                    handleValidationLoginErrors(response.data);
                }
            },
        });
    });

    // Handle Validation Error Messages
    function handleValidationRegisterErrors(errors) {
        $(".is-invalid").removeClass("is-invalid");
        $(".invalid-feedback").text("");

        $.each(errors, function (field, messages) {
            $("#" + field).addClass("is-invalid");
            $("#" + field + "Error").html(messages.join("<br>"));
        });
    }

    function handleValidationLoginErrors(errors) {
        $(".is-invalid").removeClass("is-invalid");
        $(".invalid-feedback").text("");

        $.each(errors, function (field, messages) {
            $("#" + field).addClass("is-invalid");
            $("#" + field + "Error").html(messages.join("<br>"));
        });
    }

    var proUrl = "http://127.0.0.1:2023/";
    // Add Product
    $("#addProductForm").validate({
        rules: {
            title: "required",
            description: "required",
            image: "required",
            price: {
                required: true,
                number: true,
            },
        },
        messages: {
            title: "Please enter a title.",
            description: "Please enter a description.",
            image: "Please select an image.",
            price: {
                required: "Please enter a price.",
                number: "Please enter a valid number.",
            },
        },
        submitHandler: function (form) {
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: proUrl + "products",
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    if (response.message) {
                        toastr.success(response.message);
                        form.reset();
                        $("#addProductModal").modal("hide");
                        $("#productTable").DataTable().ajax.reload();
                    }
                },
            });
        },
    });

    // Fetch Product Details
    $(document).on("click", ".edit-btn", function () {
        $("#editProductModal").modal("show");
        var productId = $(this).data("id");
        var editUrl = "/products/" + productId + "/edit"; // Create a route to fetch product details
        $.ajax({
            type: "GET",
            url: editUrl,
            success: function (response) {
                $("#editId").val(response.data.id);
                $("#editTitle").val(response.data.title);
                $("#editDescription").val(response.data.description);
                var currentImageSrc = "/storage/" + response.data.image;
                $("#currentImage").attr("src", currentImageSrc);
                $("#editPrice").val(response.data.price);
            },
        });
    });

    // Update Product
    $("#editProductForm").validate({
        rules: {
            editTitle: "required",
            editDescription: "required",
            editPrice: {
                required: true,
                number: true,
            },
        },
        messages: {
            editTitle: "Please enter a title.",
            editDescription: "Please enter a description.",
            editPrice: {
                required: "Please enter a price.",
                number: "Please enter a valid number.",
            },
        },
        submitHandler: function (form) {
            var edittitle = $('#editTitle').val();
            // console.log(edittitle);
            var formData = new FormData(form);
            var productId = $("#editId").val();
            var updateUrl = "/products/" + productId;
            $.ajax({
                type: "PUT",
                url: updateUrl,
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
                },
                data: {formData: formData, title: edittitle},
                processData: false,
                contentType: false,
                success: function (response) {
                    if (response.message) {
                        toastr.success(response.message);
                        form.reset();
                        $("#editProductModal").modal("hide");
                        $("#productTable").DataTable().ajax.reload();
                    }
                },
            });
        },
    });

    // Delete Product
    $(document).on("click", ".delete-btn", function () {
        var productId = $(this).data("id");
        var deleteUrl = "/products/" + productId;

        if (confirm("Are you sure you want to delete this product?")) {
            $.ajax({
                type: "DELETE",
                url: deleteUrl,
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                        "content"
                    ),
                },
                success: function (response) {
                    if (response.message) {
                        toastr.success(response.message);
                        $("#productTable").DataTable().ajax.reload();
                    }
                },
                error: function (xhr) {
                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        toastr.error(xhr.responseJSON.message);
                    }
                },
            });
        }
    });

    // Get Products using YajraBox
    $(document).ready(function () {
        $("#productTable").DataTable({
            processing: true,
            serverSide: true,
            scrollY: "500px",
            scrollCollapse: true,
            ajax: "/get-products",
            columns: [
                { data: "id", name: "id" },
                { data: "title", name: "title" },
                { data: "description", name: "description" },
                { data: "price", name: "price" },
                {
                    data: "action",
                    name: "action",
                    orderable: false,
                    searchable: false,
                },
            ],
        });
    });
});
