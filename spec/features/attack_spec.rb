feature 'Testing attacking player 2' do
  scenario 'attacking' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end