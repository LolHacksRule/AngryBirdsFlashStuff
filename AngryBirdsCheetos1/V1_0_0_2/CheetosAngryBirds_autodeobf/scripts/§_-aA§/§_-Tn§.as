package §_-aA§
{
   public class §_-Tn§
   {
       
      
      public function §_-Tn§()
      {
         super();
      }
      
      public static function §_-eb§(param1:Number, param2:Boolean = true) : Number
      {
         if(param2)
         {
            param1 = 1 - param1;
            param1 *= param1;
            return 1 - param1;
         }
         return param1 * param1;
      }
      
      public static function §_-qR§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         if(param3 > 0 && param3 < 10)
         {
         }
         param2 = Math.max(0,param2);
         var _loc4_:Number = Math.pow(10,param2);
         param1 = Math.round(param1 * _loc4_) / _loc4_;
         if(param3 > 0 && param3 < 10)
         {
            param1 = §_-qR§(param1 * param3,param2 - 1,-1) / param3;
            param1 = §_-qR§(param1,param2,-1);
         }
         return param1;
      }
   }
}
