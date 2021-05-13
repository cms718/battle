feature 'players can switch turns' do
  scenario 'player 1 turn at start of game' do
    sign_in_and_play
    expect(page).to have_content 'Turn: Charlotte'
  end

  scenario 'player 2 turn after player 1 attacks' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'Turn: Mittens'
  end
end
