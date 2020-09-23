module ApplicationHelper

  def current_url(new_params = {}, except_params = [])
    ep = params.dup.permit!
    except_params.each do |p|
      ep.delete p
    end
    url_for ep.merge(new_params)
  end


end
