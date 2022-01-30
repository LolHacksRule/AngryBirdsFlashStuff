package §#A§
{
   public class §!!'§
   {
      
      public static const §8!x§:String = "_";
      
      public static const §]"6§:String = "start";
      
      public static const §<j§:String = "end";
      
      public static const §"!0§:String = "exit";
      
      public static const §#W§:String = "run";
      
      public static const §2+§:String = "transition_in";
      
      public static const §8!T§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §!!'§()
      {
         super();
      }
      
      public static function §4"$§() : String
      {
         return §]"6§ + §8!x§ + §#W§;
      }
      
      public static function §5?§() : String
      {
         return §]"6§ + §8!x§ + §2+§ + §8!x§ + DEFAULT;
      }
      
      public static function §7V§() : String
      {
         return §]"6§ + §8!x§ + §8!T§ + §8!x§ + DEFAULT;
      }
      
      public static function §5w§(param1:String = "") : String
      {
         var _loc2_:String = §]"6§ + §8!x§ + §2+§;
         return _loc2_ + (param1 != "" ? §8!x§ + param1.toLowerCase() : "");
      }
      
      public static function §2!^§(param1:String = "") : String
      {
         var _loc2_:String = §]"6§ + §8!x§ + §8!T§;
         return _loc2_ + (param1 != "" ? §8!x§ + param1.toLowerCase() : "");
      }
   }
}
