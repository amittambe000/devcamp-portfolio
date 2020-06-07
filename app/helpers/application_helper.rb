module ApplicationHelper

  def login_helper style=''
     if !current_user.is_a?(GuestUser)
      link_to "Logout", destroy_user_session_path, method: :delete,class: style
    else
      (link_to "Sign Up", new_user_registration_path,class: style)+
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting="Thanks for visiting from #{session[:source]}, you are on #{layout_name} layout"
      content_tag(:p,greeting,class: "source-greeting")
    end
  end

  def copyright_generator
    ViewToolNonsenseTester::Renderer.copyright '&copy; 2020 | Amit Tambe','All rights reserved'
  end
end
