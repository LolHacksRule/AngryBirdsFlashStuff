package §,!F§
{
   public class §7!I§
   {
      
      public static const §2§:String = "damage";
      
      public static const §9B§:String = "removed";
      
      public static const §"N§:String = "extraBird";
      
      private static var §=v§:Array;
      
      private static var §-!A§:Array;
      
      private static var §`0§:Array;
       
      
      public function §7!I§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §=v§ = [];
         §-!A§ = [];
         §`0§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §2§:
               §=v§.push(param1);
               break;
            case §9B§:
               §-!A§.push(param1);
               break;
            case §"N§:
               §`0§.push(param1);
         }
      }
      
      public static function §4y§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §=v§.toString();
         if(§-!A§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §-!A§.toString();
         }
         if(§`0§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §`0§.toString();
         }
         return _loc1_;
      }
   }
}
