package §_-vA§
{
   public class §_-sX§
   {
      
      public static const §_-9T§:Boolean = false;
      
      private static var §_-3M§:Array;
       
      
      public function §_-sX§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-3M§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-3M§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-9T§ && §_-3M§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-3M§[param1];
      }
   }
}
