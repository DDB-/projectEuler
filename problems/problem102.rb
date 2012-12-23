def minus(a,b)
	c = Array.new()
	for i in 0..a.length-1
		c[i] = a[i]-b[i]
	end
	return c
end

def dot(a,b)
	c = 0
	for i in 0..a.length-1
		c += a[i]*b[i]
	end
	return c
end

def calcUV(a,b,c)
	p = [0,0]
	v0 = minus(c,a)
	v1 = minus(b,a)
	v2 = minus(p,a)

	dot00 = dot(v0, v0)
	dot01 = dot(v0, v1)
	dot02 = dot(v0, v2)
	dot11 = dot(v1, v1)
	dot12 = dot(v1, v2)

	invDenom = 1.0 / (dot00 * dot11 - dot01 * dot01)
	u = (dot11 * dot02 - dot01 * dot12) * invDenom
	v = (dot00 * dot12 - dot01 * dot02) * invDenom
	
	return ((u > 0) and (v > 0) and (u+v < 1))
end

a,b,c = Array.new(), Array.new(), Array.new()
for i in 0..1
	a[i],b[i],c[i] = 0,0,0
end

file = File.new("triangles.txt", "r")
sum = 0
while line = file.gets
	line = line.split(",")
	a[0],a[1] = line[0].to_i, line[1].to_i
	b[0],b[1] = line[2].to_i, line[3].to_i
	c[0],c[1] = line[4].to_i, line[5].to_i
	sum += 1 if calcUV(a,b,c)
end
puts sum
