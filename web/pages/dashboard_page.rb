class DashboardPage < FreelancerPage
  path '/'
  validate :url, %r{dashboard/?\z}
end
