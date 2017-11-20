class JobsPage < FreelancerPage
  path '/jobs/myskills/'
  validate :url, %r{freelancer.co.uk/jobs/myskills/?\z}
end
