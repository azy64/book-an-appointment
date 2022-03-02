# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new

    alias_action :create, :read, :update, :destroy, to: :crud

    if user.id 
      can [:crud], Reservation, {user_id: user.id}
    end

    if user.admin?
      can :manage, :all
    end
  end
end
