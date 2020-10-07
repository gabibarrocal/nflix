class LoginPage
  include Capybara::DSL

  def go
    visit "/"
  end

  def with(email, pass)
    find("#emailId").set email
    #find('input[name=email]')
    find("#passId").set pass
    #find('input[name=password]')
    click_button "Entrar"
  end

  def alert
    find(".alert").text
  end
end
