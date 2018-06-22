class User
  def initialize(name, bio, age)
    @name = name
    @bio = bio
    @age = age
  end

  def authenticate(candidate_password)
    user = AuthUser.new
    user.authenticate(candidate_password)
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end



class AuthUser
  def initialize(password)
    @password = password
  end

  def authenticate(candidate_password)
    return true if candidate_password == @password
    false
  end

end