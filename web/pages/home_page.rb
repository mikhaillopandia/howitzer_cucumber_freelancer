class HomePage < FreelancerPage
  path '/'
  validate :url, %r{\A(?:.*?:\/\/)?[^\/]*\/?(?:\z|\?.*utm_expid=\d+-\d+)}
end
