module ApplicationHelper
  def context_menu(links)
    menu = controller.render_to_string partial: "shared/dropdown_links", collection: links
    content_tag :div, menu.html_safe, class: 'dropdown-menu', aria: { labelledBy: 'expedition-dropdown' }
  end


  def expedition_links
    [
        ['Список', expeditions_path],
        ['Корабли', '#'],
        ['Команда', '#'],
    ]
  end
end
