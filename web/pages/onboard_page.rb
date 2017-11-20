class OnboardPage < FreelancerPage
  path '/onboard/#/welcome'
  validate :url, %r{/onboard/#/welcome/?\z}
end
