feature 'attacking player 2' do
  scenario 'reduces player 2 HP by 10 ' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content 'Mittens: 50 HP'
  end
end