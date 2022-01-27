package §5!q§
{
   public class §"!A§
   {
      
      public static const § m§:String = "damage";
      
      public static const §^%§:String = "removed";
      
      public static const §5"h§:String = "extraBird";
      
      private static var §5!w§:Array;
      
      private static var §[0§:Array;
      
      private static var §!!2§:Array;
       
      
      public function §"!A§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §5!w§ = [];
         §[0§ = [];
         §!!2§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case § m§:
               §5!w§.push(param1);
               break;
            case §^%§:
               §[0§.push(param1);
               break;
            case §5"h§:
               §!!2§.push(param1);
         }
      }
      
      public static function §3X§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §5!w§.toString();
         if(§[0§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §[0§.toString();
         }
         if(§!!2§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §!!2§.toString();
         }
         return _loc1_;
      }
   }
}
