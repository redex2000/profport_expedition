module ApplicationHelper
  def context_menu(links)
    menu = controller.render_to_string partial: "shared/dropdown_links", collection: links
    content_tag :div, menu.html_safe, class: 'dropdown-menu', aria: { labelledBy: 'expedition-dropdown' }
  end


  def expedition_links
    [
        ['Список', expeditions_path],
        ['Корабли', spaceships_path],
        ['Команда', '#'],
    ]
  end


  def page_title(title = nil)
    content_for(:page_title) do
      [title, ApplicationController::PAGE_TITLE].compact.join("|")
    end
  end

end
