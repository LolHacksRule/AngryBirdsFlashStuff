package §3W§
{
   public function getNextPowerOfTwo(param1:int) : int
   {
      var _loc2_:int = 1;
      while(_loc2_ < param1)
      {
         _loc2_ *= 2;
      }
      return _loc2_;
   }
}
