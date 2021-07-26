package §>2§
{
   public class § $,§
   {
      
      public static const § ";§:String = "damage";
      
      public static const §!"2§:String = "removed";
      
      public static const §-B§:String = "extraBird";
      
      private static var §6"Q§:Array;
      
      private static var §7!V§:Array;
      
      private static var §>#`§:Array;
       
      
      public function § $,§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §6"Q§ = [];
         §7!V§ = [];
         §>#`§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case § ";§:
               §6"Q§.push(param1);
               break;
            case §!"2§:
               §7!V§.push(param1);
               break;
            case §-B§:
               §>#`§.push(param1);
         }
      }
      
      public static function §=!^§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §6"Q§.toString();
         if(§7!V§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7!V§.toString();
         }
         if(§>#`§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §>#`§.toString();
         }
         return _loc1_;
      }
      
      public static function §=f§() : void
      {
         §>#`§ = [];
      }
   }
}
