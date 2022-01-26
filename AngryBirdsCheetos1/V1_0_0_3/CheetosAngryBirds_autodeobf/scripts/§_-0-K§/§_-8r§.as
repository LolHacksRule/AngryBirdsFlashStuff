package §_-0-K§
{
   public class §_-8r§
   {
      
      public static const §_-x5§:String = "damage";
      
      public static const §_-Hh§:String = "removed";
      
      public static const §_-PM§:String = "extraBird";
      
      private static var §_-nt§:Array;
      
      private static var §_-sW§:Array;
      
      private static var §_-j§:Array;
       
      
      public function §_-8r§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-nt§ = [];
         §_-sW§ = [];
         §_-j§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §_-x5§:
               §_-nt§.push(param1);
               break;
            case §_-Hh§:
               §_-sW§.push(param1);
               break;
            case §_-PM§:
               §_-j§.push(param1);
         }
      }
      
      public static function §_-MQ§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-nt§.toString();
         if(§_-sW§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-sW§.toString();
         }
         if(§_-j§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-j§.toString();
         }
         return _loc1_;
      }
   }
}
