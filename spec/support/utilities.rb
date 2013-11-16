# A copy of application_helper.rb, but it is used to make sure we have the correct title
def full_title(page_title)
  base_title = "SF DATE"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end