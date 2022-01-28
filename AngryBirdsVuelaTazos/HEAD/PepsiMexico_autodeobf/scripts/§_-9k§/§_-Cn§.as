package §_-9k§
{
   public class §_-Cn§
   {
      
      public static const §_-PH§:Boolean = false;
      
      private static var §_-Y9§:Array;
       
      
      public function §_-Cn§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-Y9§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-Y9§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-PH§ && §_-Y9§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-Y9§[param1];
      }
   }
}
