var l2549C892_0 = false;
l2549C892_0 = instance_exists(noone);
if(l2549C892_0)
{
	exit;
}

draw_self();

draw_set_font(Ft_Hud);

draw_text(x + -100, y + 0, string("") + string(global.coins));