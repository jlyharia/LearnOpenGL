#version 330 core
out vec4 FragColor;

in vec2 TexCoords;
in vec4 viewPos;
uniform sampler2D texture1;

const float near = 0.1;
const float far = 10.0;
void main()
{
    // FragColor = texture(texture1, TexCoords);

    float depth_1 = (-viewPos.z - near) / (far - near);


    FragColor = vec4(vec3(depth_1), 1.0);// visualize depth buffer
}