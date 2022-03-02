class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    alias_action :create, :read, :update, :destroy, to: :crud

    can [:crud], Reservation, { user_id: user.id } if user.id

    can :manage, :all if user.admin?
  end
end
