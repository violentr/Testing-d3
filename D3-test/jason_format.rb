def nest(count, hash, name)
	nested = hash
	count.times {nested = hash.merge({name: name, size: 1, children: nested}) }
	return nested
end