require 'secret_diary'
describe SecretDiary do
  it { is_expected.to respond_to(:lock) }
  it { is_expected.to respond_to(:unlock) }
  it { is_expected.to respond_to(:get_entries) }

  it 'throws an error when trying to add_entry while locked' do
    secret_diary = SecretDiary.new
    expect { secret_diary.add_entry }.to raise_error('Diary is locked')
  end
end
