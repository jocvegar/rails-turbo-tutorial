module ApplicationHelper
  # def flash_messages
	# 	flash.each do |msg_type, message|
	# 		concat(
	# 			content_tag(:div, id: "flash-wrapper", class: "container-fluid", style: "padding-top:0.5rem;") do
	# 				concat(
	# 					content_tag(:div, message) do
	# 						concat content_tag(:span, message.html_safe, class: 'message')
	# 					end
	# 				)
	# 			end
	# 		)
	# 	end
	# 	nil
	# end
	def render_turbo_stream_flash_messages
    turbo_stream.prepend "flash", partial: "layouts/flash"
  end

	def form_error_notification(object)
    if object.errors.any?
      tag.div class: "error-message" do
        object.errors.full_messages.to_sentence.capitalize
      end
    end
  end

	def nested_dom_id(*args)
    args.map { |arg| arg.respond_to?(:to_key) ? dom_id(arg) : arg }.join("_")
  end
end
