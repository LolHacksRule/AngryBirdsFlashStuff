package §1#T§
{
   public class §+L§
   {
      
      public static const §9#x§:String = "_";
      
      public static const §&#&§:String = "start";
      
      public static const §-z§:String = "end";
      
      public static const §&W§:String = "exit";
      
      public static const §4Z§:String = "run";
      
      public static const §>,§:String = "transition_in";
      
      public static const §%"u§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §+L§()
      {
         super();
      }
      
      public static function §&!2§() : String
      {
         return §&#&§ + §9#x§ + §4Z§;
      }
      
      public static function §'F§() : String
      {
         return §&#&§ + §9#x§ + §>,§ + §9#x§ + DEFAULT;
      }
      
      public static function §"$,§() : String
      {
         return §&#&§ + §9#x§ + §%"u§ + §9#x§ + DEFAULT;
      }
      
      public static function §0I§(param1:String = "") : String
      {
         var _loc2_:String = §&#&§ + §9#x§ + §>,§;
         return _loc2_ + (param1 != "" ? §9#x§ + param1.toLowerCase() : "");
      }
      
      public static function §7"1§(param1:String = "") : String
      {
         var _loc2_:String = §&#&§ + §9#x§ + §%"u§;
         return _loc2_ + (param1 != "" ? §9#x§ + param1.toLowerCase() : "");
      }
   }
}
