package §>#s§
{
   public class §-$$§
   {
      
      public static const §%"7§:String = "_";
      
      public static const §2$7§:String = "start";
      
      public static const §%#U§:String = "end";
      
      public static const §0e§:String = "exit";
      
      public static const §'=§:String = "run";
      
      public static const §>#>§:String = "transition_in";
      
      public static const §##-§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §-$$§()
      {
         super();
      }
      
      public static function §`d§() : String
      {
         return §2$7§ + §%"7§ + §'=§;
      }
      
      public static function §"#0§() : String
      {
         return §2$7§ + §%"7§ + §>#>§ + §%"7§ + DEFAULT;
      }
      
      public static function §%#Z§() : String
      {
         return §2$7§ + §%"7§ + §##-§ + §%"7§ + DEFAULT;
      }
      
      public static function §>!'§(param1:String = "") : String
      {
         var _loc2_:String = §2$7§ + §%"7§ + §>#>§;
         return _loc2_ + (param1 != "" ? §%"7§ + param1.toLowerCase() : "");
      }
      
      public static function §3u§(param1:String = "") : String
      {
         var _loc2_:String = §2$7§ + §%"7§ + §##-§;
         return _loc2_ + (param1 != "" ? §%"7§ + param1.toLowerCase() : "");
      }
   }
}
