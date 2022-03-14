class AdminUsersController < ApplicationController
  def login
    user = AdminUser.find_by(email: admin_users_params['email'])

    if user.password == admin_users_params['password']
      render status: :ok
    else
      render status: :unauthorized, json: { error: 'error' }
    end
  end

  private

  def admin_users_params
    params.permit(:email, :password)
  end
end
