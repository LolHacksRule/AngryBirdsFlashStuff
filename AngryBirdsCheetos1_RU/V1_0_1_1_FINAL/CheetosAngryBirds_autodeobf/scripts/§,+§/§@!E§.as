package §,+§
{
   public class §@!E§
   {
       
      
      private var §&!8§:Vector.<int>;
      
      public function §@!E§(param1:int = 0)
      {
         super();
         this.§&!8§ = new Vector.<int>(32);
         this.§`!V§(param1);
      }
      
      public function §`!V§(param1:int) : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!8§.length)
         {
            _loc4_ = int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE));
            if(_loc5_ = param1 & _loc2_)
            {
               _loc4_ |= _loc2_;
            }
            else
            {
               _loc4_ &= ~_loc2_;
            }
            this.§&!8§[_loc3_] = _loc4_;
            _loc2_ <<= 1;
            _loc3_++;
         }
         if(this.getValue() != param1)
         {
         }
      }
      
      public function getValue() : int
      {
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!8§.length)
         {
            _loc1_ |= this.§&!8§[_loc3_] & _loc2_;
            _loc2_ <<= 1;
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
