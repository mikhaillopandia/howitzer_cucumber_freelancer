class ConfirmationEmailPage < FreelancerPage
  path '/users/login-quick.php?token={token}'
  validate :url, %r{/users/login-quick.php/?(w+)}
end
