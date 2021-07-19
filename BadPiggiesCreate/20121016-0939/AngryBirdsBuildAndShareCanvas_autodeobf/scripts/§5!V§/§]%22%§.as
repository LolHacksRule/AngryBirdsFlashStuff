package §5!V§
{
   public class §]"%§
   {
      
      public static const §>!%§:String = "damage";
      
      public static const §-!R§:String = "removed";
      
      public static const §9"?§:String = "extraBird";
      
      private static var §2!?§:Array;
      
      private static var §5o§:Array;
      
      private static var §;@§:Array;
       
      
      public function §]"%§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §2!?§ = [];
         §5o§ = [];
         §;@§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §>!%§:
               §2!?§.push(param1);
               break;
            case §-!R§:
               §5o§.push(param1);
               break;
            case §9"?§:
               §;@§.push(param1);
         }
      }
      
      public static function §4x§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §2!?§.toString();
         if(§5o§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §5o§.toString();
         }
         if(§;@§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;@§.toString();
         }
         return _loc1_;
      }
   }
}
