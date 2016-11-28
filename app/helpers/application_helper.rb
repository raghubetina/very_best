module ApplicationHelper
  def collapse_search_form
    if params[:q].blank?
      "collapse"
    else
      ""
    end
  end

  def active_nav_link(path)
    request.path.split("/").second == path[1..-1] ? "active" : ""
  end
end
