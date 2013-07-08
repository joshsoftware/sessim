module ApplicationHelper

  def active?(*paths)
    paths.include?(request.path) ? 'active' : ''
  end

end
