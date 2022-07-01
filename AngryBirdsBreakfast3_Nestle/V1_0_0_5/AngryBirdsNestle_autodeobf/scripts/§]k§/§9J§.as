package §]k§
{
   public class §9J§
   {
      
      public static const §5^§:String = "damage";
      
      public static const §9""§:String = "removed";
      
      public static const § !$§:String = "extraBird";
      
      private static var §+"%§:Array;
      
      private static var §-" §:Array;
      
      private static var §`%§:Array;
       
      
      public function §9J§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §+"%§ = [];
         §-" § = [];
         §`%§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §5^§:
               §+"%§.push(param1);
               break;
            case §9""§:
               §-" §.push(param1);
               break;
            case § !$§:
               §`%§.push(param1);
         }
      }
      
      public static function §1!v§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §+"%§.toString();
         if(§-" §.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §-" §.toString();
         }
         if(§`%§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §`%§.toString();
         }
         return _loc1_;
      }
   }
}
