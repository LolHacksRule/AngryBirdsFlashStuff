package §_-TG§
{
   public class §_-40§
   {
      
      public static const §_-0Av§:String = "damage";
      
      public static const §_-H-§:String = "removed";
      
      public static const §_-Rz§:String = "extraBird";
      
      private static var §_-01d§:Array;
      
      private static var §_-tv§:Array;
      
      private static var §_-4G§:Array;
       
      
      public function §_-40§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-01d§ = [];
         §_-tv§ = [];
         §_-4G§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §_-0Av§:
               §_-01d§.push(param1);
               break;
            case §_-H-§:
               §_-tv§.push(param1);
               break;
            case §_-Rz§:
               §_-4G§.push(param1);
         }
      }
      
      public static function §_-Cn§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-01d§.toString();
         if(§_-tv§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-tv§.toString();
         }
         if(§_-4G§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-4G§.toString();
         }
         return _loc1_;
      }
   }
}
