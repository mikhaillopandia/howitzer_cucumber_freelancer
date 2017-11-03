require_relative 'demo_app_page'
class HomePage < DemoAppPage
  path '/'
  validate :title, /\AFreelancer | Online Jobs | Freelance Employment | Outsourcing Services | Programmers | Web Design | Freelancers\z/
  validate :url, %r{freelancer.com/(?:dashboard)?/?\z}

  # element :article_link, :xpath, ->(title) { ".//a[.='#{title}']" }
  # element :panel_heading, :xpath, ->(title) { "//h3[text()=\"#{title}\"]/parent::*/following-sibling::*" }

  #  iframe :howitzer_home, 'howitzer'

  def find_form_text(panel_title)
    panel_heading_element(panel_title).text
  end
end
