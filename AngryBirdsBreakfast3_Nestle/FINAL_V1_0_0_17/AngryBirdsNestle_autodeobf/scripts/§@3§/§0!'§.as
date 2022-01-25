package §@3§
{
   public class §0!'§
   {
      
      public static const §6!b§:String = "_";
      
      public static const §9!_§:String = "start";
      
      public static const §8J§:String = "end";
      
      public static const §1"0§:String = "exit";
      
      public static const §@!$§:String = "run";
      
      public static const §@C§:String = "transition_in";
      
      public static const §[!M§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §0!'§()
      {
         super();
      }
      
      public static function §=N§() : String
      {
         return §9!_§ + §6!b§ + §@!$§;
      }
      
      public static function §^I§() : String
      {
         return §9!_§ + §6!b§ + §@C§ + §6!b§ + DEFAULT;
      }
      
      public static function §7!n§() : String
      {
         return §9!_§ + §6!b§ + §[!M§ + §6!b§ + DEFAULT;
      }
      
      public static function §-!h§(param1:String = "") : String
      {
         var _loc2_:String = §9!_§ + §6!b§ + §@C§;
         return _loc2_ + (param1 != "" ? §6!b§ + param1.toLowerCase() : "");
      }
      
      public static function §4!>§(param1:String = "") : String
      {
         var _loc2_:String = §9!_§ + §6!b§ + §[!M§;
         return _loc2_ + (param1 != "" ? §6!b§ + param1.toLowerCase() : "");
      }
   }
}
