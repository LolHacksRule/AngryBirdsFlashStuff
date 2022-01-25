package §4A§
{
   public class §-!3§
   {
      
      public static const §[!0§:String = "damage";
      
      public static const §0!U§:String = "removed";
      
      public static const §<F§:String = "extraBird";
      
      private static var §`I§:Array;
      
      private static var §^;§:Array;
      
      private static var §8?§:Array;
       
      
      public function §-!3§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §`I§ = [];
         §^;§ = [];
         §8?§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §[!0§:
               §`I§.push(param1);
               break;
            case §0!U§:
               §^;§.push(param1);
               break;
            case §<F§:
               §8?§.push(param1);
         }
      }
      
      public static function §6d§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §`I§.toString();
         if(§^;§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §^;§.toString();
         }
         if(§8?§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §8?§.toString();
         }
         return _loc1_;
      }
   }
}
