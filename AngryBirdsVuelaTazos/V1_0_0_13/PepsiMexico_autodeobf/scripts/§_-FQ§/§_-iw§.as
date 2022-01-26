package §_-FQ§
{
   public class §_-iw§
   {
      
      public static const §_-fA§:String = "damage";
      
      public static const §_-ao§:String = "removed";
      
      public static const §_-1K§:String = "extraBird";
      
      private static var §_-Cv§:Array;
      
      private static var §_-kB§:Array;
      
      private static var §_-PZ§:Array;
       
      
      public function §_-iw§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-Cv§ = [];
         §_-kB§ = [];
         §_-PZ§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         switch(param2)
         {
            case §_-fA§:
               §_-Cv§.push(param1);
               break;
            case §_-ao§:
               §_-kB§.push(param1);
               break;
            case §_-1K§:
               §_-PZ§.push(param1);
         }
      }
      
      public static function §_-VQ§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-Cv§.toString();
         _loc1_ += ",";
         _loc1_ += §_-kB§.toString();
         if(§_-PZ§.length > 0)
         {
            _loc1_ += ",";
            _loc1_ += §_-PZ§.toString();
         }
         return _loc1_;
      }
   }
}
