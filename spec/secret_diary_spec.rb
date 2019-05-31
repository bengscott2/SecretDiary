require 'secret_diary'
describe SecretDiary do
  it { is_expected.to respond_to(:lock) }
  it { is_expected.to respond_to(:unlock) }
  it { is_expected.to respond_to(:get_entries) }

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

end
