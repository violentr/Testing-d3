module WheelsHelper
	# class Wheel
		def nest(count, hash, name)
			nested = hash
			1.upto(count) do |n|
				opts = {name: name, size: 1}
				opts[:children] = [nested] unless nested.empty?

				nested = hash.merge(opts)
			end

			return nested	
		end
	# end
end
