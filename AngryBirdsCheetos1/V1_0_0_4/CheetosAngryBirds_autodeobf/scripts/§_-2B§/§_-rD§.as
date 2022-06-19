package §_-2B§
{
   public class §_-rD§
   {
      
      public static const §_-9Z§:Boolean = false;
      
      private static var §_-Av§:Array;
       
      
      public function §_-rD§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-Av§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-Av§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-9Z§ && §_-Av§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-Av§[param1];
      }
   }
}
