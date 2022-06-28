package §,!5§
{
   public class §;v§
   {
      
      public static const §+?§:String = "damage";
      
      public static const §-!A§:String = "removed";
      
      public static const §^!2§:String = "extraBird";
      
      private static var §+!n§:Array;
      
      private static var §4!V§:Array;
      
      private static var §;!C§:Array;
       
      
      public function §;v§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §+!n§ = [];
         §4!V§ = [];
         §;!C§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §+?§:
               §+!n§.push(param1);
               break;
            case §-!A§:
               §4!V§.push(param1);
               break;
            case §^!2§:
               §;!C§.push(param1);
         }
      }
      
      public static function §-1§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §+!n§.toString();
         if(§4!V§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §4!V§.toString();
         }
         if(§;!C§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;!C§.toString();
         }
         return _loc1_;
      }
   }
}
