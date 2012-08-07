describe 'user creation' do
  it 'allows a user to sign in via twitter' do
   visit '/users/new'
   page.should have_button 'Sign In With Twitter'
  end
end