package §,T§
{
   public class §9I§
   {
      
      public static const §1!"§:String = "damage";
      
      public static const §0!-§:String = "removed";
      
      public static const §"!O§:String = "extraBird";
      
      private static var §4!I§:Array;
      
      private static var §32§:Array;
      
      private static var §7$§:Array;
       
      
      public function §9I§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §4!I§ = [];
         §32§ = [];
         §7$§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §1!"§:
               §4!I§.push(param1);
               break;
            case §0!-§:
               §32§.push(param1);
               break;
            case §"!O§:
               §7$§.push(param1);
         }
      }
      
      public static function §#!3§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §4!I§.toString();
         if(§32§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §32§.toString();
         }
         if(§7$§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7$§.toString();
         }
         return _loc1_;
      }
   }
}
