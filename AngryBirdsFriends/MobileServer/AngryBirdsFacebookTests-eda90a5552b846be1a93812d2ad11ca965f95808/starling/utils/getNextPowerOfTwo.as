package starling.utils
{
   public function getNextPowerOfTwo(number:int) : int
   {
      var result:* = 0;
      if(number > 0 && (number & number - 1) == 0)
      {
         return number;
      }
      for(result = 1; result < number; )
      {
         result <<= 1;
      }
      return result;
   }
}
