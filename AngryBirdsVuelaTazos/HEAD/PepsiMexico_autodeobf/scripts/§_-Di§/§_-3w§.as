package §_-Di§
{
   public class §_-3w§
   {
      
      public static const §_-rv§:String = "damage";
      
      public static const §_-hp§:String = "removed";
      
      public static const §_-YO§:String = "extraBird";
      
      private static var §_-6v§:Array;
      
      private static var §_-3m§:Array;
      
      private static var §_-IG§:Array;
       
      
      public function §_-3w§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-6v§ = [];
         §_-3m§ = [];
         §_-IG§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §_-rv§:
               §_-6v§.push(param1);
               break;
            case §_-hp§:
               §_-3m§.push(param1);
               break;
            case §_-YO§:
               §_-IG§.push(param1);
         }
      }
      
      public static function §_-x9§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-6v§.toString();
         if(§_-3m§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-3m§.toString();
         }
         if(§_-IG§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-IG§.toString();
         }
         return _loc1_;
      }
   }
}
