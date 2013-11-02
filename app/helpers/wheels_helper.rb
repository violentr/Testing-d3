module WheelsHelper
	# class Wheel
		def nest(count, hash, name)
			nested = hash
			1.upto(count) do |n|
				opts = {name: name, size: "1"}
				opts[:children] = [nested] unless nested.empty?

				nested = hash.merge(opts)
			end

			return nested	
		end

		# def sections_as_json(sections)
		# 	sections.map do |section| 
		# 	  nest(2, {}, section.section_name)
		# 	end.to_json
		# end

		#experiment show.json.rb
		#{
		#  "name": "wheel of life",
		#    "children": 
		# <%= sections_as_json(@sections).html_safe %>
		# }

		def nesting_for_sections(wheel)
			children = []

			wheel.answers.group_by(&:section).each do |section, answers|
				children << nest(answers.map(&:answer_value).sum, {}, section.section_name)
			end

			{ name: 'Wheel of life', children: children }
		end
	# end
end
