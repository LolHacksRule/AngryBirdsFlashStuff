package §_-p7§
{
   public class §_-cv§
   {
      
      public static const §_-aR§:Boolean = false;
      
      private static var §_-Pj§:Array;
       
      
      public function §_-cv§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-Pj§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-Pj§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-aR§ && §_-Pj§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-Pj§[param1];
      }
   }
}
