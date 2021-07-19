package §"!I§
{
   public class § !;§
   {
      
      public static const §[F§:String = "damage";
      
      public static const §!9§:String = "removed";
      
      public static const §<!A§:String = "extraBird";
      
      private static var §]s§:Array;
      
      private static var §-!d§:Array;
      
      private static var §=J§:Array;
       
      
      public function § !;§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §]s§ = [];
         §-!d§ = [];
         §=J§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §[F§:
               §]s§.push(param1);
               break;
            case §!9§:
               §-!d§.push(param1);
               break;
            case §<!A§:
               §=J§.push(param1);
         }
      }
      
      public static function §4!4§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §]s§.toString();
         if(§-!d§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §-!d§.toString();
         }
         if(§=J§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §=J§.toString();
         }
         return _loc1_;
      }
   }
}
