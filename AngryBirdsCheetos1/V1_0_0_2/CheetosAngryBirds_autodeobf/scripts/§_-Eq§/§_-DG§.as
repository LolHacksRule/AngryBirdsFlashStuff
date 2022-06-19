package §_-Eq§
{
   public class §_-DG§
   {
      
      public static const §_-As§:Boolean = false;
      
      private static var §_-fC§:Array;
       
      
      public function §_-DG§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-fC§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-fC§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-As§ && §_-fC§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-fC§[param1];
      }
   }
}
