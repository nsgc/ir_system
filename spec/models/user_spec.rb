describe User do
  context 'validation' do
    before do
      user.valid?
    end

    let(:user) { build(:user, name: name, email: email, password: password) }
    let(:name) { 'Sample User' }
    let(:email) { 'user@sample.com' }
    let(:password) { 'validpassword' }

    subject { user.errors }

    it { is_expected.to be_empty }
  end
end
