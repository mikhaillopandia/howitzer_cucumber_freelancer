#############################################################
#                      TRANSFORMERS                         #
#############################################################

ParameterType(
  name: 'page',
  regexp: /(.+)/,
  transformer: ->(page) { page }
)

ParameterType(
  name: 'menu item',
  regexp: /(.+?)/,
  transformer: ->(menu_intem) { menu_intem }
)

ParameterType(
  name: 'email',
  regexp: /(.+)/,
  transformer: ->(email) { email }
)

ParameterType(
  name: 'employment type',
  regexp: /(.+)/,
  transformer: ->(type) { type }
)
