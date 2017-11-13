require_relative 'freelancer_page'
class HomePage < FreelancerPage
  path '/'
  validate :title, /\AHire Freelancers & Find Freelance Jobs Online - Freelancer\z/
  validate :url, %r{\A(?:.*?:\/\/)?[^\/]*\/?(?:\z|\?.*utm_expid=\d+-\d+)}

  def find_form_text(panel_title)
    panel_heading_element(panel_title).text
  end
end
