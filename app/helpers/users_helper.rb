module UsersHelper
  def role_value
    return controller.action_name == 'new_employer' ? 'employer' : 'seeker'
  end
end
