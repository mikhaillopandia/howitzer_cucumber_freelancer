require_relative 'freelancer_page'

class OnboardPage < FreelancerPage
  path '/onboard/#/welcome'
  validate :url, %r{/onboard/#/welcome/?\z}
end
