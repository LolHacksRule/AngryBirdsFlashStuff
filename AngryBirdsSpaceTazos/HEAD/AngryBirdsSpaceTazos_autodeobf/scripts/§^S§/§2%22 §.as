package §^S§
{
   public class §2" §
   {
      
      public static const §<!v§:String = "_";
      
      public static const §0!l§:String = "start";
      
      public static const § Q§:String = "end";
      
      public static const §<Z§:String = "exit";
      
      public static const §!2§:String = "run";
      
      public static const §>!C§:String = "transition_in";
      
      public static const §5!P§:String = "transition_out";
      
      public static const §3"4§:String = "default";
       
      
      public function §2" §()
      {
         super();
      }
      
      public static function §[!-§() : String
      {
         return §0!l§ + §<!v§ + §!2§;
      }
      
      public static function §2!I§() : String
      {
         return §0!l§ + §<!v§ + §>!C§ + §<!v§ + §3"4§;
      }
      
      public static function §"u§() : String
      {
         return §0!l§ + §<!v§ + §5!P§ + §<!v§ + §3"4§;
      }
      
      public static function §+!b§(param1:String = "") : String
      {
         var _loc2_:String = §0!l§ + §<!v§ + §>!C§;
         return _loc2_ + (param1 != "" ? §<!v§ + param1.toLowerCase() : "");
      }
      
      public static function §,!5§(param1:String = "") : String
      {
         var _loc2_:String = §0!l§ + §<!v§ + §5!P§;
         return _loc2_ + (param1 != "" ? §<!v§ + param1.toLowerCase() : "");
      }
   }
}
