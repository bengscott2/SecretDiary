require 'secret_diary'
describe SecretDiary do

  it 'throws an error when trying to add_entry while locked' do
    secret_diary = SecretDiary.new
    expect { secret_diary.add_entry }.to raise_error('Diary is locked')
  end

  it 'does not raise error after secret_diary.unlock' do
    secret_diary = SecretDiary.new
    secret_diary.unlock
    expect { secret_diary.add_entry }.not_to raise_error
  end

  it 'raises an error when trying to get_entries while locked' do
    secret_diary = SecretDiary.new
    expect { secret_diary.get_entries }.to raise_error('Diary is locked')
  end

  it 'raise error trying to get_entries once locked and then locked' do
    secret_diary = SecretDiary.new
    secret_diary.unlock
    secret_diary.lock
    expect { secret_diary.get_entries }.to raise_error('Diary is locked')
  end

end
