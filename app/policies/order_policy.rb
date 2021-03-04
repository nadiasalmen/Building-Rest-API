class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    true
    # record.user == user
  end

  def create?
    true
  end

  def destroy?
    true
  end
end
