class SecretDiary

  def lock
  end

  def unlock
  end

  def add_entry
    raise "Diary is locked" 
  end

  def get_entries
  end

end
