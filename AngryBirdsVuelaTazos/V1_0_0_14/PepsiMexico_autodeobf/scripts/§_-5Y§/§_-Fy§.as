package §_-5Y§
{
   public class §_-Fy§
   {
      
      public static const §_-VH§:String = "damage";
      
      public static const §_-5A§:String = "removed";
      
      public static const §_-ZC§:String = "extraBird";
      
      private static var §_-mV§:Array;
      
      private static var §_-FC§:Array;
      
      private static var §_-xn§:Array;
       
      
      public function §_-Fy§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-mV§ = [];
         §_-FC§ = [];
         §_-xn§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §_-VH§:
               §_-mV§.push(param1);
               break;
            case §_-5A§:
               §_-FC§.push(param1);
               break;
            case §_-ZC§:
               §_-xn§.push(param1);
         }
      }
      
      public static function §_-O7§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-mV§.toString();
         if(§_-FC§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-FC§.toString();
         }
         if(§_-xn§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-xn§.toString();
         }
         return _loc1_;
      }
   }
}
