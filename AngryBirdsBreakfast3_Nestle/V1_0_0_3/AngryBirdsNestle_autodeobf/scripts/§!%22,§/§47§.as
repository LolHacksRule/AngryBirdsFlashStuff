package §!",§
{
   public class §47§
   {
      
      public static const §5s§:String = "_";
      
      public static const §=6§:String = "start";
      
      public static const §>i§:String = "end";
      
      public static const §5"$§:String = "exit";
      
      public static const §6!O§:String = "run";
      
      public static const §0d§:String = "transition_in";
      
      public static const §24§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §47§()
      {
         super();
      }
      
      public static function §;]§() : String
      {
         return §=6§ + §5s§ + §6!O§;
      }
      
      public static function §"!3§() : String
      {
         return §=6§ + §5s§ + §0d§ + §5s§ + DEFAULT;
      }
      
      public static function §`H§() : String
      {
         return §=6§ + §5s§ + §24§ + §5s§ + DEFAULT;
      }
      
      public static function §]!5§(param1:String = "") : String
      {
         var _loc2_:String = §=6§ + §5s§ + §0d§;
         return _loc2_ + (param1 != "" ? §5s§ + param1.toLowerCase() : "");
      }
      
      public static function §+>§(param1:String = "") : String
      {
         var _loc2_:String = §=6§ + §5s§ + §24§;
         return _loc2_ + (param1 != "" ? §5s§ + param1.toLowerCase() : "");
      }
   }
}
