feature 'birthday page' do
  #CHANGE TO UPDATE AUTOMATICALLY TO TODAY
  scenario 'it wishes Alice a happy birthday on her birthday (today - 16 Jan)' do 
    visit('/')
    fill_in :user_name, with: "Alice"
    select('16', from: :day)
    select :January, from: "month"
    click_button 'Submit'
    expect(page).to have_content "Happy Birthday, Alice!"
  end
end