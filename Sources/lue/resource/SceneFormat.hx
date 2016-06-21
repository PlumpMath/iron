package lue.resource;

// typedef TSceneFormat = {
@:structInit class TSceneFormat {
	@:optional public var geometry_resources:Array<TGeometryResource>;
	@:optional public var light_resources:Array<TLightResource>;
	@:optional public var camera_resources:Array<TCameraResource>;
	@:optional public var material_resources:Array<TMaterialResource>;
	@:optional public var particle_resources:Array<TParticleResource>;
	@:optional public var shader_resources:Array<TShaderResource>;
	@:optional public var pipeline_resources:Array<TPipelineResource>;
	@:optional public var speaker_resources:Array<TSpeakerResource>;
	@:optional public var world_resources:Array<TWorldResource>;
	@:optional public var world_ref:String;
	@:optional public var nodes:Array<TNode>;
}

//typedef TGeometryResource = {
@:structInit class TGeometryResource {
	public var id:String;
	public var mesh:TMesh;
}

// typedef TMesh = {
@:structInit class TMesh {
	public var primitive:String;
	public var vertex_arrays:Array<TVertexArray>;
	public var index_arrays:Array<TIndexArray>;
	@:optional public var static_usage:Bool;
	@:optional public var skin:TSkin;
	@:optional public var instance_offsets:Array<Float>;
}

// typedef TSkin = {
@:structInit class TSkin {
	public var transform:TTransform;
	public var skeleton:TSkeleton;
	public var bone_count_array:Array<Int>;
	public var bone_index_array:Array<Int>;
	public var bone_weight_array:Array<Float>;
}

// typedef TSkeleton = {
@:structInit class TSkeleton {
	public var bone_ref_array:Array<String>;
	public var transforms:Array<Array<Float>>; // size = 16
}

// typedef TVertexArray = {
@:structInit class TVertexArray {
	public var attrib:String;
	public var size:Int;
	public var values:Array<Float>;
}

// typedef TIndexArray = {
@:structInit class TIndexArray {
	public var size:Int;
	public var values:Array<Int>;
	public var material:Int;
}

// typedef TLightResource = {
@:structInit class TLightResource {
	public var id:String;
	public var color:Array<Float>;
	public var strength:Float;
}

// typedef TCameraResource = {
@:structInit class TCameraResource {
	public var id:String;
	public var clear_color:Array<Float>;
	public var near_plane:Float;
	public var far_plane:Float;
	@:optional public var frustum_culling:Bool;
	@:optional public var draw_calls_sort:String;
	public var pipeline:String;
	public var type:String;
}

// typedef TMaterialResource = {
@:structInit class TMaterialResource {
	public var id:String;
	public var shader:String;
	@:optional public var skip_context:String;
	public var contexts:Array<TMaterialContext>;
}

// typedef TMaterialContext = {
@:structInit class TMaterialContext {
	public var id:String;
	@:optional public var bind_constants:Array<TBindConstant>;
	@:optional public var bind_textures:Array<TBindTexture>;
}

// typedef TBindConstant = {
@:structInit class TBindConstant {
	public var id:String;
	@:optional public var vec4:Array<Float>;
	@:optional public var vec3:Array<Float>;
	@:optional public var vec2:Array<Float>;
	@:optional public var float:Float;
	@:optional public var bool:Bool;
}

// typedef TBindTexture = {
@:structInit class TBindTexture {
	public var id:String;
	public var name:String;
	@:optional public var generate_mipmaps:Bool;
	@:optional public var mipmaps:Array<String>; // Reference image names
	@:optional public var u_addressing:String;
	@:optional public var v_addressing:String;
	@:optional public var min_filter:String;
	@:optional public var mag_filter:String;
	@:optional public var mipmap_filter:String;
	@:optional public var params_set:Bool; // Prevents setting texture params
	@:optional public var source:String; // file, movie 
}

// typedef TShaderResource = {
@:structInit class TShaderResource {
	public var id:String;
	public var vertex_structure:Array<TVertexData>;
	public var contexts:Array<TShaderContext>;
}

// typedef TVertexData = {
@:structInit class TVertexData {
	public var name:String;
	public var size:Int;
}

// typedef TShaderContext = {
@:structInit class TShaderContext {
	public var id:String;
	public var depth_write:Bool;
	public var compare_mode:String;
	public var cull_mode:String;
	@:optional public var blend_source:String;
	@:optional public var blend_destination:String;
	@:optional public var blend_operation:String;
	@:optional public var alpha_blend_source:String;
	@:optional public var alpha_blend_destination:String;
	@:optional public var alpha_blend_operation:String;
	@:optional public var stencil_mode:String;
	@:optional public var stencil_pass:String;
	@:optional public var stencil_fail:String;
	@:optional public var stencil_reference_value:Int;
	@:optional public var stencil_read_mask:Int;
	@:optional public var stencil_write_mask:Int;
	@:optional public var color_write_red:Bool;
	@:optional public var color_write_green:Bool;
	@:optional public var color_write_blue:Bool;
	@:optional public var color_write_alpha:Bool;
	public var vertex_shader:String;
	public var fragment_shader:String;
	public var constants:Array<TShaderConstant>;
	public var texture_units:Array<TTextureUnit>;
}

// typedef TShaderConstant = {
@:structInit class TShaderConstant {
	public var id:String;
	public var type:String;
	@:optional public var link:String;
	@:optional public var vec4:Array<Float>;
	@:optional public var vec3:Array<Float>;
	@:optional public var float:Float;
	@:optional public var bool:Bool;
}

// typedef TTextureUnit = {
@:structInit class TTextureUnit {
	public var id:String;
	@:optional public var link:String;
}

// typedef TPipelineResource = {
@:structInit class TPipelineResource {
	public var id:String;
	public var render_targets:Array<TPipelineRenderTarget>;
	@:optional public var depth_buffers:Array<TPipelineDepthBuffer>;
	public var stages:Array<TPipelineStage>;
}

// typedef TPipelineRenderTarget = {
@:structInit class TPipelineRenderTarget {
	public var id:String;
	public var width:Int;
	public var height:Int;
	@:optional public var format:String;
	@:optional public var depth_buffer:String;
	@:optional public var ping_pong:Bool;
}

// typedef TPipelineDepthBuffer = {
@:structInit class TPipelineDepthBuffer {
	public var id:String;
	@:optional public var stencil_buffer:Bool;
}

// typedef TPipelineStage = {
@:structInit class TPipelineStage {
	public var command:String;
	@:optional public var params:Array<String>;
	@:optional public var returns_true:Array<TPipelineStage>; // Nested commands
	@:optional public var returns_false:Array<TPipelineStage>;
}

// typedef TSpeakerResource = {
@:structInit class TSpeakerResource {
	public var id:String;
	public var sound:String;
}

// typedef TWorldResource = {
@:structInit class TWorldResource {
	public var id:String;
	// public var material_ref:String;
	// public var bind_constants:Array<TBindConstant>;
	// public var bind_textures:Array<TBindTexture>;
	public var brdf:String;
	public var probes:Array<TProbe>;
}

// typedef TProbe = {
@:structInit class TProbe {
	public var radiance:String;
	public var radiance_mipmaps:Int;
	public var irradiance:String; // Reference to TIrradiance blob
	public var strength:Float;
	public var blending:Float;
	public var volume:Array<Float>;
	public var volume_center:Array<Float>;
}

// typedef TIrradiance = { // Blob with spherical harmonics, bands 0,1,2
@:structInit class TIrradiance {
	public var irradiance:Array<Float>;
}

// typedef TParticleResource = {
@:structInit class TParticleResource {
	public var id:String;
	public var count:Int;
	public var lifetime:Float;
	public var normal_factor:Float;
	public var object_align_factor:Array<Float>;
	public var factor_random:Float;
}

// typedef TNode = {
@:structInit class TNode {
	public var type:String;
	public var id:String;
	public var object_ref:String;
	public var material_refs:Array<String>;
	public var particle_refs:Array<TParticleReference>;
	public var transform:TTransform;
	public var nodes:Array<TNode>;
	public var traits:Array<TTrait>;
	@:optional public var dimensions:Array<Float>; // Geometry nodes
	@:optional public var animation:TAnimation;
	@:optional public var bones_ref:String;
	@:optional public var parent:TNode;
	@:optional public var visible:Bool;
}

// typedef TParticleReference = {
@:structInit class TParticleReference {
	public var id:String;
	public var particle:String;
	public var seed:Int;
}

// typedef TTrait = {
@:structInit class TTrait {
	public var type:String;
	public var class_name:String;
	@:optional public var parameters:Array<Dynamic>;
}

// typedef TTransform = {
@:structInit class TTransform {
	@:optional public var target:String;
	public var values:Array<Float>;
}

// typedef TAnimation = {
@:structInit class TAnimation {
	//public var tracks:Array<TTrack>;
	public var track:TTrack;
}

// typedef TTrack = {
@:structInit class TTrack {
	public var target:String;
	public var time:TTime;
	public var value:TValue;
}

// typedef TTime = {
@:structInit class TTime {
	public var values:Array<Float>;
}

// typedef TValue = {
@:structInit class TValue {
	public var values:Array<Array<Float>>;
}

// Raw shader resource
/*
typedef TRawShader = {
	var contexts:Array<TRawContext>;
}

typedef TRawContext = {
	var id:String;
	var params:Array<TRawParam>;
	var links:Array<TRawLink>;
	var vertex_shader:String;
	var fragment_shader:String;
}

typedef TRawParam = {
	var id:String;
	var value:String;
}

typedef TRawLink = {
	var id:String;
	var link:String;
	@:optional var ifdef:Array<String>;
}
*/
