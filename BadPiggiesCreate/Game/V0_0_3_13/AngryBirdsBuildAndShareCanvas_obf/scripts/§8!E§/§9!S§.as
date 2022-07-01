package §8!E§
{
   public class §9!S§
   {
      
      public static const §'$§:String = "damage";
      
      public static const §-!G§:String = "removed";
      
      public static const §[9§:String = "extraBird";
      
      private static var §!!K§:Array;
      
      private static var §'!%§:Array;
      
      private static var §2!!§:Array;
       
      
      public function §9!S§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §!!K§ = [];
         §'!%§ = [];
         §2!!§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §'$§:
               §!!K§.push(param1);
               break;
            case §-!G§:
               §'!%§.push(param1);
               break;
            case §[9§:
               §2!!§.push(param1);
         }
      }
      
      public static function §`!-§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §!!K§.toString();
         if(§'!%§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §'!%§.toString();
         }
         if(§2!!§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §2!!§.toString();
         }
         return _loc1_;
      }
   }
}
