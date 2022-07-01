package §<!9§
{
   public class §'"$§
   {
      
      public static const §"i§:String = "_";
      
      public static const §9!g§:String = "start";
      
      public static const §0!F§:String = "end";
      
      public static const §9E§:String = "exit";
      
      public static const §?i§:String = "run";
      
      public static const §1!B§:String = "transition_in";
      
      public static const §5"5§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §'"$§()
      {
         super();
      }
      
      public static function §%!C§() : String
      {
         return §9!g§ + §"i§ + §?i§;
      }
      
      public static function §9!y§() : String
      {
         return §9!g§ + §"i§ + §1!B§ + §"i§ + DEFAULT;
      }
      
      public static function §?!i§() : String
      {
         return §9!g§ + §"i§ + §5"5§ + §"i§ + DEFAULT;
      }
      
      public static function §@K§(param1:String = "") : String
      {
         var _loc2_:String = §9!g§ + §"i§ + §1!B§;
         return _loc2_ + (param1 != "" ? §"i§ + param1.toLowerCase() : "");
      }
      
      public static function §@B§(param1:String = "") : String
      {
         var _loc2_:String = §9!g§ + §"i§ + §5"5§;
         return _loc2_ + (param1 != "" ? §"i§ + param1.toLowerCase() : "");
      }
   }
}
