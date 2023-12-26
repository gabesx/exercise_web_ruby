def credentials_for(user_type)
  users = {
    'standard_user' => ['standard_user', 'secret_sauce'],
    'locked_out_user' => ['locked_out_user', 'secret_sauce'],
    'problem_user' => ['problem_user', 'secret_sauce'],
    'performance_glitch_user' => ['performance_glitch_user', 'secret_sauce'],
    'error_user' => ['error_user', 'secret_sauce'],
    'visual_user' => ['visual_user', 'secret_sauce'],
  }

  if user_type == 'invalid_password'
    return ['standard_user', 'wrong_password']
  end

  users[user_type]
end