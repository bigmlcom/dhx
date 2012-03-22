package dhx;

import js.Dom;

extern class Sizzle
{
	public static function select(selector : String, ?doc : HtmlDom, ?result : Array<HtmlDom>) : Array<HtmlDom>;
	public static function uniqueSort(list : Array<HtmlDom>) : Array<HtmlDom>;

	private static function __init__() : Void untyped {
		#if !noEmbedJS
		haxe.macro.Tools.includeFile("dhx/sizzle.js");
		#end
		var s : Dynamic = SizzleEngine.getSizzle();
		dhx.Sizzle = s;
		dhx.Sizzle.select = s;
	}
}