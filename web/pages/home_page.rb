require_relative 'demo_app_page'
class HomePage < DemoAppPage
  path '/'
  validate :title, /\AFreelancer | Online Jobs | Freelance Employment | Outsourcing Services | Programmers | Web Design | Freelancers\z/
  validate :url, %r{freelancer.com/(?:dashboard)?/?\z}

  def find_form_text(panel_title)
    panel_heading_element(panel_title).text
  end
end
