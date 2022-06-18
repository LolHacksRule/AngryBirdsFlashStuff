package §0V§
{
   public class §;9§
   {
      
      public static const §";§:String = "damage";
      
      public static const §1!8§:String = "removed";
      
      public static const §@_§:String = "extraBird";
      
      private static var §5!M§:Array;
      
      private static var §<!2§:Array;
      
      private static var § !]§:Array;
       
      
      public function §;9§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §5!M§ = [];
         §<!2§ = [];
         § !]§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §";§:
               §5!M§.push(param1);
               break;
            case §1!8§:
               §<!2§.push(param1);
               break;
            case §@_§:
               § !]§.push(param1);
         }
      }
      
      public static function § §() : String
      {
         var _loc1_:* = "";
         _loc1_ = §5!M§.toString();
         if(§<!2§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §<!2§.toString();
         }
         if(§ !]§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += § !]§.toString();
         }
         return _loc1_;
      }
   }
}
