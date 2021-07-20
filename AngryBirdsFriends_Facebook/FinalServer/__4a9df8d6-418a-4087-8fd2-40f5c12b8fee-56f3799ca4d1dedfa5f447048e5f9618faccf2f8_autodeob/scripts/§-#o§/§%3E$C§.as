package §-#o§
{
   public class §>$C§
   {
       
      
      public function §>$C§()
      {
         super();
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / param4 - 1;
         return param3 * param1 * param1 * param1 + param2;
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / param4 - 1;
         return param3 * (param1 * param1 * param1 + 1) + param2;
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 /= param4 / 2;
         var _loc5_:Number = 0;
         if(param1 < 1)
         {
            _loc5_ = param3 / 2 * (param1 * param1 * param1) + param2;
         }
         else
         {
            param1 -= 2;
            _loc5_ = param3 / 2 * (param1 * param1 * param1 + 2) + param2;
         }
         return _loc5_;
      }
   }
}
