require_relative 'demo_app_page'
class HomePage < DemoAppPage
  path '/'
  validate :title, /\AHire Freelancers & Find Freelance Jobs Online - Freelancer\z/
  validate :url, %r{/?t=a&utm_expid=294858-553.v56tHEK5QEmWFNtoUUBcgw.1/?\z}

  def find_form_text(panel_title)
    panel_heading_element(panel_title).text
  end
end
