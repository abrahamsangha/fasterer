a = 1
b = 2

class User
  ROLES = ['mortal', 'admin', 'superadmin']

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = [@first_name, @last_name].join(' ')
  end
end
