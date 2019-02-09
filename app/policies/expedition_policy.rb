class ExpeditionPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def show?
    user.cosmonaut? || user.commandor?
  end

  def update?
    user.commandor?
  end

  def destroy?
    user.commandor?
  end

end