package §?!<§
{
   public class §8R§
   {
      
      public static const §^!g§:String = "damage";
      
      public static const §!d§:String = "removed";
      
      public static const §2?§:String = "extraBird";
      
      private static var §?!'§:Array;
      
      private static var §7!d§:Array;
      
      private static var §?9§:Array;
       
      
      public function §8R§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §?!'§ = [];
         §7!d§ = [];
         §?9§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §^!g§:
               §?!'§.push(param1);
               break;
            case §!d§:
               §7!d§.push(param1);
               break;
            case §2?§:
               §?9§.push(param1);
         }
      }
      
      public static function §[!;§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §?!'§.toString();
         if(§7!d§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7!d§.toString();
         }
         if(§?9§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?9§.toString();
         }
         return _loc1_;
      }
   }
}
