package §;'§
{
   public class §3,§
   {
      
      public static const §+1§:String = "damage";
      
      public static const §=!N§:String = "removed";
      
      public static const §1!!§:String = "extraBird";
      
      private static var §?O§:Array;
      
      private static var §>k§:Array;
      
      private static var §5!%§:Array;
       
      
      public function §3,§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §?O§ = [];
         §>k§ = [];
         §5!%§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §+1§:
               §?O§.push(param1);
               break;
            case §=!N§:
               §>k§.push(param1);
               break;
            case §1!!§:
               §5!%§.push(param1);
         }
      }
      
      public static function §[6§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §?O§.toString();
         if(§>k§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §>k§.toString();
         }
         if(§5!%§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §5!%§.toString();
         }
         return _loc1_;
      }
   }
}
