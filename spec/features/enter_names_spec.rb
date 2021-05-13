feature 'Testing enter names' do
  scenario 'submitting the names' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end