package § "q§
{
   public class §&Q§
   {
      
      public static const §3F§:String = "_";
      
      public static const §`"q§:String = "start";
      
      public static const §8"w§:String = "end";
      
      public static const §]#r§:String = "exit";
      
      public static const §5#C§:String = "run";
      
      public static const §,>§:String = "transition_in";
      
      public static const §@Y§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §&Q§()
      {
         super();
      }
      
      public static function §'"p§() : String
      {
         return §`"q§ + §3F§ + §5#C§;
      }
      
      public static function §0$E§() : String
      {
         return §`"q§ + §3F§ + §,>§ + §3F§ + DEFAULT;
      }
      
      public static function §^!0§() : String
      {
         return §`"q§ + §3F§ + §@Y§ + §3F§ + DEFAULT;
      }
      
      public static function §&#v§(param1:String = "") : String
      {
         var _loc2_:String = §`"q§ + §3F§ + §,>§;
         return _loc2_ + (param1 != "" ? §3F§ + param1.toLowerCase() : "");
      }
      
      public static function §6#5§(param1:String = "") : String
      {
         var _loc2_:String = §`"q§ + §3F§ + §@Y§;
         return _loc2_ + (param1 != "" ? §3F§ + param1.toLowerCase() : "");
      }
   }
}
