package §]!$§
{
   public class §`#?§
   {
      
      public static const §;h§:String = "_";
      
      public static const §]w§:String = "start";
      
      public static const §1#$§:String = "end";
      
      public static const §;!&§:String = "exit";
      
      public static const §9!F§:String = "run";
      
      public static const §#X§:String = "transition_in";
      
      public static const §5#a§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §`#?§()
      {
         super();
      }
      
      public static function §[! §() : String
      {
         return §]w§ + §;h§ + §9!F§;
      }
      
      public static function §9!-§() : String
      {
         return §]w§ + §;h§ + §#X§ + §;h§ + DEFAULT;
      }
      
      public static function §`J§() : String
      {
         return §]w§ + §;h§ + §5#a§ + §;h§ + DEFAULT;
      }
      
      public static function §@!!§(param1:String = "") : String
      {
         var _loc2_:String = §]w§ + §;h§ + §#X§;
         return _loc2_ + (param1 != "" ? §;h§ + param1.toLowerCase() : "");
      }
      
      public static function §8#@§(param1:String = "") : String
      {
         var _loc2_:String = §]w§ + §;h§ + §5#a§;
         return _loc2_ + (param1 != "" ? §;h§ + param1.toLowerCase() : "");
      }
   }
}
