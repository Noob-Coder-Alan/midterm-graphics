#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 texCoord;

uniform float offSet;

void main()
{
	gl_Position = vec4(aPos.x - offSet, aPos.y + offSet, aPos.z, 1.0);
	texCoord = vec2(aTexCoord.x, aTexCoord.y);
}