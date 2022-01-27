package §3R§
{
   public class §+7§
   {
      
      public static const §,O§:String = "damage";
      
      public static const §@e§:String = "removed";
      
      public static const §`!r§:String = "extraBird";
      
      private static var §<"?§:Array;
      
      private static var §2C§:Array;
      
      private static var §2[§:Array;
       
      
      public function §+7§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §<"?§ = [];
         §2C§ = [];
         §2[§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §,O§:
               §<"?§.push(param1);
               break;
            case §@e§:
               §2C§.push(param1);
               break;
            case §`!r§:
               §2[§.push(param1);
         }
      }
      
      public static function §,"-§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §<"?§.toString();
         if(§2C§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §2C§.toString();
         }
         if(§2[§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §2[§.toString();
         }
         return _loc1_;
      }
   }
}
