package §%b§
{
   public class §?0§
   {
      
      public static const §`!2§:String = "damage";
      
      public static const §6!D§:String = "removed";
      
      public static const §^c§:String = "extraBird";
      
      private static var §'!0§:Array;
      
      private static var §+v§:Array;
      
      private static var §#g§:Array;
       
      
      public function §?0§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §'!0§ = [];
         §+v§ = [];
         §#g§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §`!2§:
               §'!0§.push(param1);
               break;
            case §6!D§:
               §+v§.push(param1);
               break;
            case §^c§:
               §#g§.push(param1);
         }
      }
      
      public static function §68§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §'!0§.toString();
         if(§+v§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+v§.toString();
         }
         if(§#g§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §#g§.toString();
         }
         return _loc1_;
      }
   }
}
