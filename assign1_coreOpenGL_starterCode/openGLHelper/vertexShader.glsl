#version 150

in vec3 position;
in vec3 positionLeft;
in vec3 positionRight;
in vec3 positionUp;
in vec3 positionDown;

in vec4 color;
out vec4 col;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform int mode;
uniform float scale;
uniform float exponent;

void main()
{
  if (mode == 0) {
      // compute the transformed and projected vertex position (into gl_Position) 
      // compute the vertex color (into col)

      gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0f);
      col = color;
  }
  else {
    float finalX;
    float tempY;
    float finalY;
    float finalZ;

    finalX = (position.x + positionLeft.x + positionRight.x + positionUp.x + positionDown.x) / 5.0;
    tempY = (position.y + positionLeft.y + positionRight.y + positionUp.y + positionDown.y) / 5.0;
    finalZ = (position.z + positionLeft.z + positionRight.z + positionUp.z + positionDown.z) / 5.0;

    finalY = scale * pow(tempY, exponent);
    gl_Position = projectionMatrix * modelViewMatrix * vec4(finalX, finalY, finalZ, 1.0f);

    vec4 finalColor;
    finalColor.r = color.r * pow(position.y, exponent);
    finalColor.g = color.g * pow(position.y, exponent);
    finalColor.b = color.b * pow(position.y, exponent);
    finalColor.a = 1.0;

    col = finalColor;
  }
}

