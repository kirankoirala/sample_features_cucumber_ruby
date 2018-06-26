class SamplePage
  include PageObject

  page_url("http://automationpractice.com/index.php")

  link(:sign_in_link, class:"login")
  text_field(:email_create, :id => 'email_create')
  button(:create, :id => 'SubmitCreate')
   h1(:page_header, class:'page-heading')

  def sign_in_link_exist?
    self.sign_in_link_element.exists?
  end

  def create_account
    self.create
  end
end