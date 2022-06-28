package §?b§
{
   public class §3$§
   {
      
      public static const §4!F§:String = "damage";
      
      public static const §;V§:String = "removed";
      
      public static const §;!D§:String = "extraBird";
      
      private static var §<l§:Array;
      
      private static var §-!C§:Array;
      
      private static var §`!+§:Array;
       
      
      public function §3$§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §<l§ = [];
         §-!C§ = [];
         §`!+§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §4!F§:
               §<l§.push(param1);
               break;
            case §;V§:
               §-!C§.push(param1);
               break;
            case §;!D§:
               §`!+§.push(param1);
         }
      }
      
      public static function §[!7§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §<l§.toString();
         if(§-!C§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §-!C§.toString();
         }
         if(§`!+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §`!+§.toString();
         }
         return _loc1_;
      }
   }
}
