package §9!?§
{
   public class §%!+§
   {
      
      public static const §+]§:String = "damage";
      
      public static const §`n§:String = "removed";
      
      public static const §>?§:String = "extraBird";
      
      private static var §8N§:Array;
      
      private static var §"4§:Array;
      
      private static var §<;§:Array;
       
      
      public function §%!+§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §8N§ = [];
         §"4§ = [];
         §<;§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §+]§:
               §8N§.push(param1);
               break;
            case §`n§:
               §"4§.push(param1);
               break;
            case §>?§:
               §<;§.push(param1);
         }
      }
      
      public static function §64§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §8N§.toString();
         if(§"4§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"4§.toString();
         }
         if(§<;§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §<;§.toString();
         }
         return _loc1_;
      }
   }
}
