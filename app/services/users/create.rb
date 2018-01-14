module Users
  class Create
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def call
      create_user
      return @user, @user.errors
    end

    private

    def create_user
      @user = User.new(params)
      @user.save
    end
  end
end
