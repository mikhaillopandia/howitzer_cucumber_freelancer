class ConfirmationEmployerEmailPage < FreelancerPage
  path '/users/onverify.php?id={token}'
  validate :url, %r{/users/onverify.php/?(w+)}
end
