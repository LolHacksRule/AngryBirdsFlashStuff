package §>2§
{
   public class §&L§
   {
      
      public static const §68§:String = "damage";
      
      public static const §8+§:String = "removed";
      
      public static const §=-§:String = "extraBird";
      
      private static var §9N§:Array;
      
      private static var §#9§:Array;
      
      private static var §8<§:Array;
       
      
      public function §&L§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §9N§ = [];
         §#9§ = [];
         §8<§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §68§:
               §9N§.push(param1);
               break;
            case §8+§:
               §#9§.push(param1);
               break;
            case §=-§:
               §8<§.push(param1);
         }
      }
      
      public static function §,Q§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §9N§.toString();
         if(§#9§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §#9§.toString();
         }
         if(§8<§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §8<§.toString();
         }
         return _loc1_;
      }
   }
}
