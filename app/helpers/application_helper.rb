module ApplicationHelper
  def flash_messages
		flash.each do |msg_type, message|
			concat(
				content_tag(:div, id: "flash-wrapper", class: "container-fluid", style: "padding-top:0.5rem;") do
					concat(
						content_tag(:div, message) do
							concat content_tag(:span, message.html_safe, class: 'message')
						end
					)
				end
			)
		end
		nil
	end
end