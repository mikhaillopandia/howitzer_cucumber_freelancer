#############################################################
#                      TRANSFORMERS                         #
#############################################################

ParameterType(
  name: 'page',
  regexp: /(.+)/,
  transformer: lambda do |page|
    page
  end
)

ParameterType(
  name: 'menu item',
  regexp: /(.+?)/,
  transformer: lambda do |menu_intem|
    menu_intem
  end
)

ParameterType(
  name: 'email',
  regexp: /(.+)/,
  transformer: lambda do |email|
    email
  end
)

ParameterType(
  name: 'employment type',
  regexp: /(.+)/,
  transformer: lambda do |email|
    email
  end
)
