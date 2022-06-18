package §+!%§
{
   public class §>3§
   {
      
      public static const §4'§:String = "damage";
      
      public static const §]!?§:String = "removed";
      
      public static const §8$§:String = "extraBird";
      
      private static var § t§:Array;
      
      private static var §1"§:Array;
      
      private static var §+?§:Array;
       
      
      public function §>3§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         § t§ = [];
         §1"§ = [];
         §+?§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §4'§:
               § t§.push(param1);
               break;
            case §]!?§:
               §1"§.push(param1);
               break;
            case §8$§:
               §+?§.push(param1);
         }
      }
      
      public static function §`9§() : String
      {
         var _loc1_:* = "";
         _loc1_ = § t§.toString();
         if(§1"§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §1"§.toString();
         }
         if(§+?§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+?§.toString();
         }
         return _loc1_;
      }
   }
}
