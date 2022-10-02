require "application_system_test_case"

class NewsTest < ApplicationSystemTestCase
  setup do
    @news = news(:one)
  end

  test "visiting the index" do
    visit news_url
    assert_selector "h1", text: "News"
  end

  test "should create news" do
    visit news_url
    click_on "New news"

    fill_in "Cuerpo", with: @news.cuerpo
    fill_in "Encabezado", with: @news.encabezado
    fill_in "Link", with: @news.link
    fill_in "Tipo", with: @news.tipo
    click_on "Create News"

    assert_text "News was successfully created"
    click_on "Back"
  end

  test "should update News" do
    visit news_url(@news)
    click_on "Edit this news", match: :first

    fill_in "Cuerpo", with: @news.cuerpo
    fill_in "Encabezado", with: @news.encabezado
    fill_in "Link", with: @news.link
    fill_in "Tipo", with: @news.tipo
    click_on "Update News"

    assert_text "News was successfully updated"
    click_on "Back"
  end

  test "should destroy News" do
    visit news_url(@news)
    click_on "Destroy this news", match: :first

    assert_text "News was successfully destroyed"
  end
end
