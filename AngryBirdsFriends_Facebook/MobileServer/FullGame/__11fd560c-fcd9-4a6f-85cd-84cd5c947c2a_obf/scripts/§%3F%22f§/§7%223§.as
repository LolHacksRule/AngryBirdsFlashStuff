package §?"f§
{
   public class §7"3§
   {
      
      public static const §^#^§:String = "_";
      
      public static const §#![§:String = "start";
      
      public static const §]0§:String = "end";
      
      public static const §`"§:String = "exit";
      
      public static const §%!c§:String = "run";
      
      public static const §?"I§:String = "transition_in";
      
      public static const §9!x§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §7"3§()
      {
         super();
      }
      
      public static function §7>§() : String
      {
         return §#![§ + §^#^§ + §%!c§;
      }
      
      public static function §3#%§() : String
      {
         return §#![§ + §^#^§ + §?"I§ + §^#^§ + DEFAULT;
      }
      
      public static function § !%§() : String
      {
         return §#![§ + §^#^§ + §9!x§ + §^#^§ + DEFAULT;
      }
      
      public static function §[+§(param1:String = "") : String
      {
         var _loc2_:String = §#![§ + §^#^§ + §?"I§;
         return _loc2_ + (param1 != "" ? §^#^§ + param1.toLowerCase() : "");
      }
      
      public static function §66§(param1:String = "") : String
      {
         var _loc2_:String = §#![§ + §^#^§ + §9!x§;
         return _loc2_ + (param1 != "" ? §^#^§ + param1.toLowerCase() : "");
      }
   }
}
