package §@"1§
{
   public class §"1§
   {
      
      public static const §=c§:String = "damage";
      
      public static const §5!a§:String = "removed";
      
      public static const §]0§:String = "extraBird";
      
      private static var § L§:Array;
      
      private static var §"!`§:Array;
      
      private static var §0!p§:Array;
       
      
      public function §"1§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         § L§ = [];
         §"!`§ = [];
         §0!p§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §=c§:
               § L§.push(param1);
               break;
            case §5!a§:
               §"!`§.push(param1);
               break;
            case §]0§:
               §0!p§.push(param1);
         }
      }
      
      public static function §7!X§() : String
      {
         var _loc1_:* = "";
         _loc1_ = § L§.toString();
         if(§"!`§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"!`§.toString();
         }
         if(§0!p§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §0!p§.toString();
         }
         return _loc1_;
      }
   }
}
