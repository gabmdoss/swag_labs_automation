class Login < SitePrism::Page
    set_url CONFIG["uri"] 
    element :username_input, 'input[placeholder="Username"]'
    element :password_input, 'input[placeholder="Password"]'
    element :login_btn, 'input[data-test="login-button"]'
    element :header_logo, 'div[class="app_logo"]'

    def username(user)
        username_input.set(user)
    end
    
    def password(user)
        password_input.set(user)
    end

    def login
        login_btn.click
    end

    def header_validation
        has_header_logo?
    end
end