package §9G§
{
   public class §7!y§
   {
      
      public static const §%p§:String = "damage";
      
      public static const §?! §:String = "removed";
      
      public static const §default§:String = "extraBird";
      
      private static var §1%§:Array;
      
      private static var §@2§:Array;
      
      private static var §4'§:Array;
       
      
      public function §7!y§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §1%§ = [];
         §@2§ = [];
         §4'§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §%p§:
               §1%§.push(param1);
               break;
            case §?! §:
               §@2§.push(param1);
               break;
            case §default§:
               §4'§.push(param1);
         }
      }
      
      public static function § !6§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §1%§.toString();
         if(§@2§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §@2§.toString();
         }
         if(§4'§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §4'§.toString();
         }
         return _loc1_;
      }
   }
}
