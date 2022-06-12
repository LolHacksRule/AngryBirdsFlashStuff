package §52§
{
   public class §6" §
   {
      
      public static const §8#§:String = "damage";
      
      public static const §^#w§:String = "removed";
      
      public static const §!$%§:String = "extraBird";
      
      private static var §;!k§:Array;
      
      private static var §`!_§:Array;
      
      private static var §-"9§:Array;
       
      
      public function §6" §()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §;!k§ = [];
         §`!_§ = [];
         §-"9§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §8#§:
               §;!k§.push(param1);
               break;
            case §^#w§:
               §`!_§.push(param1);
               break;
            case §!$%§:
               §-"9§.push(param1);
         }
      }
      
      public static function §7#O§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §;!k§.toString();
         if(§`!_§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §`!_§.toString();
         }
         if(§-"9§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §-"9§.toString();
         }
         return _loc1_;
      }
      
      public static function §`P§() : void
      {
         §-"9§ = [];
      }
   }
}
