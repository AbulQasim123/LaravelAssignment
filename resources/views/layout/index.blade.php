@extends('layout.master')
@section('content')
    <div class="container mt-5 content">
        <div class="row">
            <div class="col-md-6">
                <h3>Welcome to Our Website</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor tortor non est bibendum, at
                    fermentum quam venenatis.
                </p>
                <button class="btn btn-outline-primary btn-sm">Learn More</button>
            </div>
            <div class="col-md-6">
                <div id="loginForm">
                    <h3>Login</h3>
                    <div id="credential" class="text-danger"></div>
                    <form id="loginUser">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" name="email" id="email">
                            <div class="invalid-feedback" id="emailError"></div>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" id="password">
                            <div class="invalid-feedback" id="passwordError"></div>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                            <button type="submit" class="btn btn-primary" id="loginButton">Login</button>
                            <p>Don't have an account? <a href="javascript:void(0)" id="showRegister">Register</a></p>
                        </div>
                    </form>
                </div>

                <div id="registerForm" style="display: none;">
                    <h2>Register</h2>
                    <form id="registerUser">
                        @csrf
                        <div class="mb-3">
                            <label for="register_name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="register_name" name="register_name">
                            <div class="invalid-feedback" id="register_nameError"></div>
                        </div>
                        <div class="mb-3">
                            <label for="register_email" class="form-label">Email address</label>
                            <input type="text" class="form-control" id="register_email" name="register_email">
                            <div class="invalid-feedback" id="register_emailError"></div>
                        </div>
                        <div class="mb-3">
                            <label for="register_password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="register_password" name="register_password">
                            <div class="invalid-feedback" id="register_passwordError"></div>
                        </div>
                        <div class="mb-3">
                            <label for="password_confirmation" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" id="password_confirmation"
                                name="password_confirmation">
                                <div class="invalid-feedback" id="password_confirmationError"></div>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                            <button type="submit" id="registerButton" class="btn btn-primary">Register</button>
                            <p>Already have an account? <a href="javascript:void(0)" id="showLogin">Login</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
            </div>
            <div class="col-md-6">
            </div>
        </div>
    </div>
@endsection()
