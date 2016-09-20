#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 texcoord;

out vec2 Texcoord;

uniform mat4 projection;
uniform mat4 model;

void main()
{   
   Texcoord = texcoord;
   gl_Position = projection * model * vec4(position, 1.0);
}
