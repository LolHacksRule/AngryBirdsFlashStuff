package §0!2§
{
   public class §-6§
   {
      
      public static const §'!n§:String = "damage";
      
      public static const §%"H§:String = "removed";
      
      public static const §3!S§:String = "extraBird";
      
      private static var §=r§:Array;
      
      private static var §5P§:Array;
      
      private static var §=;§:Array;
       
      
      public function §-6§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §=r§ = [];
         §5P§ = [];
         §=;§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §'!n§:
               §=r§.push(param1);
               break;
            case §%"H§:
               §5P§.push(param1);
               break;
            case §3!S§:
               §=;§.push(param1);
         }
      }
      
      public static function §3W§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §=r§.toString();
         if(§5P§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §5P§.toString();
         }
         if(§=;§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §=;§.toString();
         }
         return _loc1_;
      }
   }
}
