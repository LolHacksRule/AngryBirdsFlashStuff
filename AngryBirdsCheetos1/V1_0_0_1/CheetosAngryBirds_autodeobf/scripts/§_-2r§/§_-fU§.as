package §_-2r§
{
   public class §_-fU§
   {
      
      public static const §_-6Y§:String = "damage";
      
      public static const §_-eU§:String = "removed";
      
      public static const §_-vU§:String = "extraBird";
      
      private static var §_-nN§:Array;
      
      private static var §_-HQ§:Array;
      
      private static var §_-ty§:Array;
       
      
      public function §_-fU§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-nN§ = [];
         §_-HQ§ = [];
         §_-ty§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §_-6Y§:
               §_-nN§.push(param1);
               break;
            case §_-eU§:
               §_-HQ§.push(param1);
               break;
            case §_-vU§:
               §_-ty§.push(param1);
         }
      }
      
      public static function §_-rb§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-nN§.toString();
         if(§_-HQ§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-HQ§.toString();
         }
         if(§_-ty§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-ty§.toString();
         }
         return _loc1_;
      }
   }
}
