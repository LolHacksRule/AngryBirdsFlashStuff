package §!X§
{
   public class §7@§
   {
      
      public static const §0!3§:String = "damage";
      
      public static const §!!!§:String = "removed";
      
      public static const §3A§:String = "extraBird";
      
      private static var §%b§:Array;
      
      private static var §;6§:Array;
      
      private static var §48§:Array;
       
      
      public function §7@§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §%b§ = [];
         §;6§ = [];
         §48§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §0!3§:
               §%b§.push(param1);
               break;
            case §!!!§:
               §;6§.push(param1);
               break;
            case §3A§:
               §48§.push(param1);
         }
      }
      
      public static function §1'§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §%b§.toString();
         if(§;6§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;6§.toString();
         }
         if(§48§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §48§.toString();
         }
         return _loc1_;
      }
   }
}
