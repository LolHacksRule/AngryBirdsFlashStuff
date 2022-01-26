package §+D§
{
   public class §6+§
   {
      
      public static const §`+§:String = "damage";
      
      public static const §;f§:String = "removed";
      
      public static const §@!"§:String = "extraBird";
      
      private static var §7q§:Array;
      
      private static var §3!"§:Array;
      
      private static var §9!,§:Array;
       
      
      public function §6+§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §7q§ = [];
         §3!"§ = [];
         §9!,§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §`+§:
               §7q§.push(param1);
               break;
            case §;f§:
               §3!"§.push(param1);
               break;
            case §@!"§:
               §9!,§.push(param1);
         }
      }
      
      public static function §&?§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §7q§.toString();
         if(§3!"§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §3!"§.toString();
         }
         if(§9!,§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §9!,§.toString();
         }
         return _loc1_;
      }
   }
}
