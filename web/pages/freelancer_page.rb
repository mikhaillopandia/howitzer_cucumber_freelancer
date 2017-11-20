class FreelancerPage < Howitzer::Web::Page
  section :main_menu

  def self.authenticated?
    instance.main_menu_section.authenticated?
  end

  def self.not_authenticated?
    instance.main_menu_section.not_authenticated?
  end
end
