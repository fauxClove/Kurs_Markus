draw_self();

if (flash > 0)
{
	flash--;
	shader_set(shaderWhite);
	draw_self();
	shader_reset();
}