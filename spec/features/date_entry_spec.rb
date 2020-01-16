feature 'date count down page' do
  scenario 'it asks for date via drop downs and directs to countdown whe not bday' do 
    visit('/')
    fill_in :user_name, with: "Alice"
    select :"17", from: :day
    select 'January', from: :month
    click_button "Submit"
    expect(page).to have_content "Hello, Alice!"
  end 
end 