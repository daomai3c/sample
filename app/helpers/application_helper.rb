module ApplicationHelper
  def full_title(page_title)
    base_title = "Sample"
    if page_title.nil?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
