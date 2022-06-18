package §`i§
{
   public class §;9§
   {
      
      public static const §!u§:String = "damage";
      
      public static const §5!§:String = "removed";
      
      public static const §9D§:String = "extraBird";
      
      private static var §0]§:Array;
      
      private static var §7i§:Array;
      
      private static var §?>§:Array;
       
      
      public function §;9§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §0]§ = [];
         §7i§ = [];
         §?>§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!u§:
               §0]§.push(param1);
               break;
            case §5!§:
               §7i§.push(param1);
               break;
            case §9D§:
               §?>§.push(param1);
         }
      }
      
      public static function §do§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §0]§.toString();
         if(§7i§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7i§.toString();
         }
         if(§?>§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?>§.toString();
         }
         return _loc1_;
      }
   }
}
