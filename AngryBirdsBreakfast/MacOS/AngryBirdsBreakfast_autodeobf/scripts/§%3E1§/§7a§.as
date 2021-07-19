package §>1§
{
   public class §7a§
   {
      
      public static const §<!q§:String = "_";
      
      public static const §2!s§:String = "start";
      
      public static const §=A§:String = "end";
      
      public static const §5z§:String = "exit";
      
      public static const §>R§:String = "run";
      
      public static const §?!i§:String = "transition_in";
      
      public static const §^I§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §7a§()
      {
         super();
      }
      
      public static function §0-§() : String
      {
         return §2!s§ + §<!q§ + §>R§;
      }
      
      public static function §;!W§() : String
      {
         return §2!s§ + §<!q§ + §?!i§ + §<!q§ + DEFAULT;
      }
      
      public static function §!7§() : String
      {
         return §2!s§ + §<!q§ + §^I§ + §<!q§ + DEFAULT;
      }
      
      public static function §%!H§(param1:String = "") : String
      {
         var _loc2_:String = §2!s§ + §<!q§ + §?!i§;
         return _loc2_ + (param1 != "" ? §<!q§ + param1.toLowerCase() : "");
      }
      
      public static function §9h§(param1:String = "") : String
      {
         var _loc2_:String = §2!s§ + §<!q§ + §^I§;
         return _loc2_ + (param1 != "" ? §<!q§ + param1.toLowerCase() : "");
      }
   }
}
