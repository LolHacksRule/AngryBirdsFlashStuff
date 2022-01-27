package §%"§
{
   public class §^!J§
   {
      
      public static const §6!8§:String = "damage";
      
      public static const §+!?§:String = "removed";
      
      public static const §`!>§:String = "extraBird";
      
      private static var §;!;§:Array;
      
      private static var §6[§:Array;
      
      private static var §@=§:Array;
       
      
      public function §^!J§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §;!;§ = [];
         §6[§ = [];
         §@=§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §6!8§:
               §;!;§.push(param1);
               break;
            case §+!?§:
               §6[§.push(param1);
               break;
            case §`!>§:
               §@=§.push(param1);
         }
      }
      
      public static function §-t§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §;!;§.toString();
         if(§6[§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §6[§.toString();
         }
         if(§@=§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §@=§.toString();
         }
         return _loc1_;
      }
   }
}
