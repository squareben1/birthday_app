feature 'shows countdown to birthday' do 
  scenario 'there is 1 day until user birthday' do 
    visit('/')
    fill_in :user_name, with: "Alice"
    select('17', from: :day)
    select :January, from: "month"
    click_button 'Submit'
    expect(page).to have_content "Your Birthday is in 1 day."
  end 
end