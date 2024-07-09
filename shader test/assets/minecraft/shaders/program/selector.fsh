#version 150

uniform sampler2D DiffuseSampler;
uniform sampler2D ParticlesSampler;

in vec2 texCoord;
out vec4 fragColor;

void main(){
    float marker = texture(ParticlesSampler, vec2(0, 0)).g * 255;

    if (230 < marker && marker <= 240){
        fragColor = texture(DiffuseSampler, 1 - texCoord);
    } else
    if (240 < marker && marker <= 250){
        fragColor = 1 - texture(DiffuseSampler, texCoord);
    } else
    if (250 < marker && marker <= 260){
        fragColor = texture(DiffuseSampler, texCoord);
    } else
    fragColor = texture(DiffuseSampler, texCoord);
}