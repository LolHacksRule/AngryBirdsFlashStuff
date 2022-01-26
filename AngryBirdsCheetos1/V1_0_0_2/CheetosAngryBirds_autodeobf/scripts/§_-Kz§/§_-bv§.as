package §_-Kz§
{
   public class §_-bv§
   {
      
      public static const §_-fb§:String = "damage";
      
      public static const §_-8g§:String = "removed";
      
      public static const §_-25§:String = "extraBird";
      
      private static var §_-pD§:Array;
      
      private static var §_-kn§:Array;
      
      private static var §_-Vi§:Array;
       
      
      public function §_-bv§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-pD§ = [];
         §_-kn§ = [];
         §_-Vi§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §_-fb§:
               §_-pD§.push(param1);
               break;
            case §_-8g§:
               §_-kn§.push(param1);
               break;
            case §_-25§:
               §_-Vi§.push(param1);
         }
      }
      
      public static function §_-dh§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-pD§.toString();
         if(§_-kn§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-kn§.toString();
         }
         if(§_-Vi§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-Vi§.toString();
         }
         return _loc1_;
      }
   }
}
