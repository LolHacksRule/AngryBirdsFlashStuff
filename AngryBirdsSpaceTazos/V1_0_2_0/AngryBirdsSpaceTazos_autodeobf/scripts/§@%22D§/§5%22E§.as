package §@"D§
{
   public class §5"E§
   {
      
      public static const §[!&§:String = "_";
      
      public static const §0@§:String = "start";
      
      public static const § L§:String = "end";
      
      public static const §+!v§:String = "exit";
      
      public static const §%!?§:String = "run";
      
      public static const §@!L§:String = "transition_in";
      
      public static const §=!$§:String = "transition_out";
      
      public static const §0!n§:String = "default";
       
      
      public function §5"E§()
      {
         super();
      }
      
      public static function §8k§() : String
      {
         return §0@§ + §[!&§ + §%!?§;
      }
      
      public static function §4c§() : String
      {
         return §0@§ + §[!&§ + §@!L§ + §[!&§ + §0!n§;
      }
      
      public static function §6"8§() : String
      {
         return §0@§ + §[!&§ + §=!$§ + §[!&§ + §0!n§;
      }
      
      public static function §0p§(param1:String = "") : String
      {
         var _loc2_:String = §0@§ + §[!&§ + §@!L§;
         return _loc2_ + (param1 != "" ? §[!&§ + param1.toLowerCase() : "");
      }
      
      public static function §4H§(param1:String = "") : String
      {
         var _loc2_:String = §0@§ + §[!&§ + §=!$§;
         return _loc2_ + (param1 != "" ? §[!&§ + param1.toLowerCase() : "");
      }
   }
}
