class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @locked = false
    @diary = diary
  end

  def read
    if @locked == false
      @diary
    else
      return "Go away spy!"
    end
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end