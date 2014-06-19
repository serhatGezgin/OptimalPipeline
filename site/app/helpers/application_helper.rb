module ApplicationHelper
  def library_file_type_class(res)
    "library_file_type_" + res.resource.file_ext
  end

  def draw_list_links(setting)
    names = RefinerySetting.find_or_set(setting, "").split(",").map { |x| x.strip }
    links = ""
    names.each do |name|
      page = Page.by_title(name).first
      if page.present?
        links += "<li>" + link_to(name, page.url_marketable) + "</li>\n"
      end
      page = nil
    end
    links
  end
end
