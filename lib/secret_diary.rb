require './lib/secret_diary_key.rb'

class SecretDiary
  attr_reader :key

  def initialize
    @key = SecretDiaryKey.new
  end

  def add_entry
    raise "Diary is locked" if @key.locked
  end

  def get_entries
    raise "Diary is locked" if @key.locked
  end

end
