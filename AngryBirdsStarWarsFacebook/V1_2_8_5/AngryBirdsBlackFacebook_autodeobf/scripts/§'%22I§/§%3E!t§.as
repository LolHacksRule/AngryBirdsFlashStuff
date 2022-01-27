package §'"I§
{
   public class §>!t§
   {
      
      public static const §3"y§:String = "_";
      
      public static const §#!"§:String = "start";
      
      public static const §?>§:String = "end";
      
      public static const §%M§:String = "exit";
      
      public static const §&"G§:String = "run";
      
      public static const §4"U§:String = "transition_in";
      
      public static const §;X§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §>!t§()
      {
         super();
      }
      
      public static function §,"x§() : String
      {
         return §#!"§ + §3"y§ + §&"G§;
      }
      
      public static function §3O§() : String
      {
         return §#!"§ + §3"y§ + §4"U§ + §3"y§ + DEFAULT;
      }
      
      public static function §-!,§() : String
      {
         return §#!"§ + §3"y§ + §;X§ + §3"y§ + DEFAULT;
      }
      
      public static function §4#&§(param1:String = "") : String
      {
         var _loc2_:String = §#!"§ + §3"y§ + §4"U§;
         return _loc2_ + (param1 != "" ? §3"y§ + param1.toLowerCase() : "");
      }
      
      public static function §#!e§(param1:String = "") : String
      {
         var _loc2_:String = §#!"§ + §3"y§ + §;X§;
         return _loc2_ + (param1 != "" ? §3"y§ + param1.toLowerCase() : "");
      }
   }
}
