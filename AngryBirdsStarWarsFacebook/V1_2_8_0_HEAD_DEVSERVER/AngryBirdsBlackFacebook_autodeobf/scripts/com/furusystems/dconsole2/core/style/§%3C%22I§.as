package com.furusystems.dconsole2.core.style
{
   public class §<"I§
   {
      
      public static var §9"w§:uint = 8755456;
      
      public static var §%!U§:uint = 8755456;
      
      public static var §+"'§:uint = 8755456;
      
      public static var §'!0§:uint = 8755456;
      
      public static var §>x§:uint = 8755456;
      
      public static var §2"T§:uint = 8755456;
      
      public static var §&w§:uint = 8755456;
      
      public static var §4";§:uint = 8755456;
      
      public static var §%"7§:uint = 8755456;
      
      public static var TEXT_INPUT:uint = 8755456;
      
      public static var §%"r§:uint = 0;
       
      
      public function §<"I§()
      {
         super();
      }
      
      public static function update(param1:§7"h§) : void
      {
         §9"w§ = param1.theme.data.output.text.user;
         §%!U§ = param1.theme.data.output.text.system;
         §+"'§ = param1.theme.data.output.text.debug;
         §'!0§ = param1.theme.data.output.text.info;
         §>x§ = param1.theme.data.output.text.warning;
         §2"T§ = param1.theme.data.output.text.error;
         §&w§ = param1.theme.data.output.text.fatal;
         §4";§ = param1.theme.data.output.text.aux;
         §%"r§ = param1.theme.data.output.text.tag;
         §%"7§ = param1.theme.data.assistant.fore;
         TEXT_INPUT = param1.theme.data.input.fore;
      }
   }
}
