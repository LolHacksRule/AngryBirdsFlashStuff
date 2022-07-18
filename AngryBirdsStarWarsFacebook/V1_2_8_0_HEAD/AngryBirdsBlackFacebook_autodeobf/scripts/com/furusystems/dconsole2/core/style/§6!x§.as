package com.furusystems.dconsole2.core.style
{
   import com.furusystems.dconsole2.core.style.fonts.§-"u§;
   import flash.text.TextFormat;
   
   public final class §6!x§
   {
      
      public static const §4"[§:Number = 16;
      
      public static const §<<§:Number = 16;
      
      public static const § "y§:Number = 0;
      
      public static const §1"j§:String = §-"u§.§<f§.fontName;
      
      public static const §+!u§:String = §-"u§.§<f§.fontName;
      
      public static const §9!_§:String = §-"u§.§<f§.fontName;
      
      public static const §]#;§:Number = 16;
      
      public static const §8"D§:TextFormat = §7#D§(§9!_§,§]#;§,§<"I§.TEXT_INPUT);
      
      public static const §]!M§:TextFormat = §7#D§(§9!_§,§]#;§,§<"I§.§%"7§);
      
      public static const §!$§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§9"w§);
      
      public static const §9T§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§4";§);
      
      public static const §9#J§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§+"'§);
      
      public static const §6$§:TextFormat = §7#D§(§1"j§,§4"[§,§`D§.§'E§);
      
      public static const §[!L§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§%"r§);
      
      public static const §,!O§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§'!0§);
      
      public static const §[q§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§+"'§);
      
      public static const §6!>§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§%!U§);
      
      public static const §0!V§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§4";§);
      
      public static const §8W§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§+"'§);
      
      public static const §`!h§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§>x§);
      
      public static const §;!+§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§2"T§);
      
      public static const §[#N§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§&w§);
      
      public static const §,!G§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§'!0§);
      
      public static const §#;§:TextFormat = §7#D§(§1"j§,§4"[§,§<"I§.§4";§);
      
      public static const §'#N§:TextFormat = §7#D§(§+!u§,§<<§,§`D§.§4X§);
      
      public static const §"m§:TextFormat = §7#D§(§+!u§,§<<§,§`D§.§4X§);
       
      
      public function §6!x§()
      {
         super();
      }
      
      public static function §%!M§(param1:TextFormat) : TextFormat
      {
         var _loc2_:TextFormat = new TextFormat(param1.font,param1.size,param1.color,param1.bold,param1.italic,param1.underline,param1.url,param1.target,param1.align,param1.leftMargin,param1.rightMargin,param1.indent,param1.leading);
         _loc2_.color = §`D§.§4X§ - uint(param1.color);
         return _loc2_;
      }
      
      private static function §7#D§(param1:String, param2:int, param3:uint) : TextFormat
      {
         return new TextFormat(param1,param2,param3,null,null,null,null,null,null,0,0,0,0);
      }
      
      public static function refresh() : void
      {
         §8"D§.color = §<"I§.TEXT_INPUT;
         §]!M§.color = §<"I§.§%"7§;
         §!$§.color = §<"I§.§9"w§;
         §9T§.color = §<"I§.§4";§;
         §9#J§.color = §<"I§.§+"'§;
         §6$§.color = §`D§.§'E§;
         §[!L§.color = §<"I§.§%"r§;
         §,!O§.color = §<"I§.§'!0§;
         §[q§.color = §<"I§.§+"'§;
         §6!>§.color = §<"I§.§%!U§;
         §,!G§.color = §<"I§.§'!0§;
         §#;§.color = §<"I§.§4";§;
         §0!V§.color = §<"I§.§4";§;
         §8W§.color = §<"I§.§+"'§;
         §`!h§.color = §<"I§.§>x§;
         §;!+§.color = §<"I§.§2"T§;
         §[#N§.color = §<"I§.§&w§;
         §'#N§.color = §`D§.§4X§;
         §"m§.color = §`D§.§'E§;
      }
   }
}
