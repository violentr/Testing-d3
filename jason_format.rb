def nest(count, hash)
	nested = hash
	count.times {nested = hash.merge({children: nested}) }
	return nested
end