GDPC                                                                                          P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scnp$            k�JVh�G&�D�v    P   res://.godot/exported/133200997/export-5590ed1765989fa96309ffcc9c3e8997-cell.scn�      |	      )8���T�m�v����    ,   res://.godot/global_script_class_cache.cfg  `8             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexp            ：Qt�E�cO���       res://.godot/uid_cache.bin  @<      T       ��t,��z�b���r�       res://cell.gd           �      �}�u�+7>���\f       res://cell.tscn.remap   �7      a       �Z3|fD���k�m�       res://icon.svg  �8      �      k����X3Y���f       res://icon.svg.import   �      �       ���e���!��x��       res://main.gd   P      	      �.4k�g ٸRdN       res://main.tscn.remap   �7      a       �J�Sw� ������       res://project.binary�<      ;      �jɃ�D��гJ�t�        extends Button
signal cell_updated(cell)

var main: Control

var cell_value: String = ""

@onready var background = $Background
@onready var border = $Border

func _ready():
	self_modulate.a = 0

func draw_x():
	var tween = get_tree().create_tween()
	self_modulate = Color("#00FFFF")
	self_modulate.a = 0
	text = "X"
	cell_value = "X"
	tween.tween_property(self, "self_modulate:a", 1, 0.5)

func draw_o():
	var tween = get_tree().create_tween()
	self_modulate = Color("#FF4200")
	self_modulate.a = 0
	text = "O"
	cell_value = "O"
	tween.tween_property(self, "self_modulate:a", 1, 0.5)

func draw_cell():
	if main.is_game_over: return
	if cell_value == "":
		match main.turn:
			0:
				main.turn = 1
				draw_x()
			1:
				main.turn = 0
				draw_o()
	
	mouse_default_cursor_shape = Control.CURSOR_ARROW
	cell_updated.emit(self)

func glow(color):
	var tween = get_tree().create_tween()
	background.modulate = color
	background.modulate.a = 0
	tween.tween_property(background, "modulate:a", 1, 0.5)
           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom    script 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size 	   _bundled       Script    res://cell.gd ��������      local://StyleBoxEmpty_mqfch �         local://StyleBoxFlat_461wc �         local://StyleBoxFlat_akr47          local://PackedScene_vecsx �         StyleBoxEmpty             StyleBoxFlat            �?  �?  �?  �?         StyleBoxFlat          ��?��?��?    
                                            �?  �?  �?  �?         PackedScene          	         names "         Cell    custom_minimum_size    offset_right    offset_bottom    mouse_default_cursor_shape !   theme_override_colors/font_color $   theme_override_font_sizes/font_size    theme_override_styles/focus    flat    script    Button    Background 	   modulate    show_behind_parent    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    mouse_filter    theme_override_styles/panel    Panel    Border 
   draw_cell    pressed    	   variants       
     �B  �B      A           �?  �?  �?  �?   (                                  �?  �?  �?                     �?                        node_count             nodes     M   ��������
       ����	                                                    	                        ����
                  	      
                              	                           ����	            	      
                              	                   conn_count             conns                                       node_paths              editable_instances              version             RSRC    GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://v56e6kg3tkh1"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 extends Control

const Cell = preload("res://cell.tscn")

@export_enum("Human", "AI") var play_with: String = "Human"

var cells: Array = []
var turn: int = 0

var is_game_over: bool = false

func _ready():
	for cell_count in range(9):
		var cell = Cell.instantiate()
		cell.main = self
		$Cells.add_child(cell)
		cells.append(cell)
		cell.cell_updated.connect(_on_cell_updated)

func _on_cell_updated(cell):
	randomize()
	var match_result = check_match()
	print(match_result)
	if match_result:
		is_game_over = true
		swanim(match_result)
	elif play_with == "AI" and turn == 1:
		var ai_cell = cells[randi() % cells.size()]
		if ai_cell.cell_value == "":
			ai_cell.draw_cell()
		else:
			_on_cell_updated(cell)
func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func check_match():
	for h in range(3):
		if cells[0+3*h].cell_value == "X" and cells[1+3*h].cell_value == "X" and cells[2+3*h].cell_value == "X":
			return ["X", 1+3*h, 2+3*h, 3+3*h]
	for v in range(3):
		if cells[0+v].cell_value == "X" and cells[3+v].cell_value == "X" and cells[6+v].cell_value == "X":
			return ["X", 1*v, 4*v, 7*v]
	if cells[0].cell_value == "X" and cells[4].cell_value == "X" and cells[8].cell_value == "X":
		return ["X", 1, 5, 9]
	elif cells[2].cell_value == "X" and cells[4].cell_value == "X" and cells[6].cell_value == "X":
			return ["X", 3, 5, 7]
	
	for h in range(3):
		if cells[0+3*h].cell_value == "O" and cells[1+3*h].cell_value == "O" and cells[2+3*h].cell_value == "O":
			return ["O", 1+3*h, 2+3*h, 3+3*h]
	for v in range(3):
		if cells[0+v].cell_value == "O" and cells[3+v].cell_value == "O" and cells[6+v].cell_value == "O":
			return ["O", 1*v, 4*v, 7*v]
	if cells[0].cell_value == "O" and cells[4].cell_value == "O" and cells[8].cell_value == "O":
		return ["O", 1, 5, 9]
	elif cells[2].cell_value == "O" and cells[4].cell_value == "O" and cells[6].cell_value == "O":
			return ["O", 3, 5, 7]
	
	var full = true
	for cell in cells:
		if cell.cell_value == "":
			full = false
	if full:
		return ["Draw", 0, 0, 0]

func swanim(match_result: Array):
	#var color: Color
	#
	#if match_result[0] == "X":
		#color = Color.BLUE
	#elif match_result[0] == "O":
		#color = Color.RED
	
	#for c in range(3):
		#cells[match_result[c+1]-1].glow(color)
	await get_tree().create_timer(1.0).timeout
	_on_restart_button_pressed()
 RSRC                    PackedScene            ��������                                            }      resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script    background_mode    background_color    background_energy_multiplier    background_intensity    background_canvas_max_layer    background_camera_feed_id    sky    sky_custom_fov    sky_rotation    ambient_light_source    ambient_light_color    ambient_light_sky_contribution    ambient_light_energy    reflected_light_source    tonemap_mode    tonemap_exposure    tonemap_white    ssr_enabled    ssr_max_steps    ssr_fade_in    ssr_fade_out    ssr_depth_tolerance    ssao_enabled    ssao_radius    ssao_intensity    ssao_power    ssao_detail    ssao_horizon    ssao_sharpness    ssao_light_affect    ssao_ao_channel_affect    ssil_enabled    ssil_radius    ssil_intensity    ssil_sharpness    ssil_normal_rejection    sdfgi_enabled    sdfgi_use_occlusion    sdfgi_read_sky_light    sdfgi_bounce_feedback    sdfgi_cascades    sdfgi_min_cell_size    sdfgi_cascade0_distance    sdfgi_max_distance    sdfgi_y_scale    sdfgi_energy    sdfgi_normal_bias    sdfgi_probe_bias    glow_enabled    glow_levels/1    glow_levels/2    glow_levels/3    glow_levels/4    glow_levels/5    glow_levels/6    glow_levels/7    glow_normalized    glow_intensity    glow_strength 	   glow_mix    glow_bloom    glow_blend_mode    glow_hdr_threshold    glow_hdr_scale    glow_hdr_luminance_cap    glow_map_strength 	   glow_map    fog_enabled    fog_light_color    fog_light_energy    fog_sun_scatter    fog_density    fog_aerial_perspective    fog_sky_affect    fog_height    fog_height_density    volumetric_fog_enabled    volumetric_fog_density    volumetric_fog_albedo    volumetric_fog_emission    volumetric_fog_emission_energy    volumetric_fog_gi_inject    volumetric_fog_anisotropy    volumetric_fog_length    volumetric_fog_detail_spread    volumetric_fog_ambient_inject    volumetric_fog_sky_affect -   volumetric_fog_temporal_reprojection_enabled ,   volumetric_fog_temporal_reprojection_amount    adjustment_enabled    adjustment_brightness    adjustment_contrast    adjustment_saturation    adjustment_color_correction 	   _bundled       Script    res://main.gd ��������      local://StyleBoxFlat_wnl0j �         local://Environment_sev0a �         local://PackedScene_ltsmf �         StyleBoxFlat          ���>          �?         Environment 
            N         O        `@P        `@R        �?T        �?U        �?Z      ���<[                  PackedScene    |      	         names "   $      Main    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script 
   play_with    Control    Background    color 
   ColorRect    Cells    offset_right    offset_bottom &   theme_override_constants/h_separation &   theme_override_constants/v_separation    columns    GridContainer    RestartButton    anchor_top    offset_top    mouse_default_cursor_shape !   theme_override_colors/font_color $   theme_override_font_sizes/font_size    theme_override_styles/normal    theme_override_styles/hover    theme_override_styles/pressed    theme_override_styles/focus    text    Button    WorldEnvironment    environment    _on_restart_button_pressed    pressed    	   variants                        �?                      AI                        �?             B           ��     �?  �?  �?  �?                RESTART                node_count             nodes     o   ��������	       ����                                                                   
   ����                                                               ����            	      	                                        ����            
                                                      
                                                     ����   !                conn_count             conns               #   "                    node_paths              editable_instances              version             RSRC            [remap]

path="res://.godot/exported/133200997/export-5590ed1765989fa96309ffcc9c3e8997-cell.scn"
               [remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
               list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              ��y4=�[   res://cell.tscn��=�RW   res://icon.svg�'�-�Q�,   res://main.tscn            ECFG      application/config/name      	   TicTacToe      application/config/descriptionP      G   A Simple Tic Tac Toe Game which you can play with friends. Made by KAS.    application/config/version         1.0.0      application/run/main_scene         res://main.tscn    application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �   #   display/window/size/viewport_height      �   )   display/window/size/window_width_override      \  *   display/window/size/window_height_override      \     display/window/stretch/mode         canvas_items#   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility     