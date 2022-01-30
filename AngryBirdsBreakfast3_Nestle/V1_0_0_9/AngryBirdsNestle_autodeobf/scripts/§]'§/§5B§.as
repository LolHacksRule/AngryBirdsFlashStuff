package §]'§
{
   public class §5B§
   {
      
      public static const §"G§:String = "_";
      
      public static const §&!i§:String = "start";
      
      public static const §#!2§:String = "end";
      
      public static const §<Z§:String = "exit";
      
      public static const §=^§:String = "run";
      
      public static const §[!x§:String = "transition_in";
      
      public static const §?c§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §5B§()
      {
         super();
      }
      
      public static function §3!=§() : String
      {
         return §&!i§ + §"G§ + §=^§;
      }
      
      public static function §@!Z§() : String
      {
         return §&!i§ + §"G§ + §[!x§ + §"G§ + DEFAULT;
      }
      
      public static function §5!^§() : String
      {
         return §&!i§ + §"G§ + §?c§ + §"G§ + DEFAULT;
      }
      
      public static function §]o§(param1:String = "") : String
      {
         var _loc2_:String = §&!i§ + §"G§ + §[!x§;
         return _loc2_ + (param1 != "" ? §"G§ + param1.toLowerCase() : "");
      }
      
      public static function §&!M§(param1:String = "") : String
      {
         var _loc2_:String = §&!i§ + §"G§ + §?c§;
         return _loc2_ + (param1 != "" ? §"G§ + param1.toLowerCase() : "");
      }
   }
}
