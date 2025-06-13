#version 300 es
precision highp float;

uniform float u_time;

layout(location = 0) out vec4 OutColor;

int I( vec2 z )
{
  vec2 z0 = z, c = vec2(0.38 + 0.03 * sin(2 * u_time), 0.38 + 0.03 * sin(2 * u_time * 1.1 + 2));
  int n = 0;
 
  while (n < 255 && length(z) < 2)
    z = vec2(z.x * z.x - z.y * z.y, 2 * z.x * z.y) + c, n++;
  return n;
}

void main() {
    ivec2 sc = ivec2(gl_FragCoord.xy);

    OutColor = (1, 1, 0, 1);
}