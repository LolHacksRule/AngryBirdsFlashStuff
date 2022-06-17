package §?$#§
{
   public class §-V§
   {
      
      public static const §5"§:String = "damage";
      
      public static const §34§:String = "removed";
      
      public static const §-"u§:String = "extraBird";
      
      private static var §+##§:Array;
      
      private static var §%"?§:Array;
      
      private static var §"!0§:Array;
       
      
      public function §-V§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §+##§ = [];
         §%"?§ = [];
         §"!0§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §5"§:
               §+##§.push(param1);
               break;
            case §34§:
               §%"?§.push(param1);
               break;
            case §-"u§:
               §"!0§.push(param1);
         }
      }
      
      public static function §`"e§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §+##§.toString();
         if(§%"?§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §%"?§.toString();
         }
         if(§"!0§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"!0§.toString();
         }
         return _loc1_;
      }
      
      public static function §+!-§() : void
      {
         §"!0§ = [];
      }
   }
}
