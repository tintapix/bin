
uniform mat4 cam;

//uniform mat4 WorldMatrix;
//uniform mat4 ViewMatrix;


//varying vec4 pos;
//varying vec3 n;
varying vec4 vTexCoord;


void main(void)
{   
	
    //mat4 P = WorldMatrix * ViewMatrix * ProjectMatrix;
	//pos = ProjectMatrix * P;	
	vec4 pos = cam * gl_Vertex; //vec3      ( gl_ModelViewMatrix * gl_Vertex );             // transformed point to world space	
    //n   = normalize ( gl_NormalMatrix * gl_Normal );                // transformed n
   
	//vec4 cameraPosition = vec4( 0.0, 0.0, -50.0, 1.0);
	gl_Position = pos;
	vTexCoord = gl_MultiTexCoord0;
	 //gl_Position = vec4(-0.95,0.95,0.5,1);
	
}