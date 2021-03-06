describe User do

  before(:each) { @user = User.new(email: 'admin@admin.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'admin@admin.com'
  end

end
