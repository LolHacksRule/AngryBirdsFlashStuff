package §_-2F§
{
   public class §_-F6§
   {
       
      
      private var §_-HD§:Vector.<int>;
      
      public function §_-F6§(param1:int = 0)
      {
         super();
         this.§_-HD§ = new Vector.<int>(32);
         this.§_-fd§(param1);
      }
      
      public function §_-fd§(param1:int) : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-HD§.length)
         {
            _loc4_ = int(Math.round(Math.random() * 2 - 1 * int.MAX_VALUE));
            if(_loc5_ = param1 & _loc2_)
            {
               _loc4_ = _loc5_ | param1;
            }
            else
            {
               _loc4_ = (_loc5_ ^= _loc5_) & param1;
            }
            this.§_-HD§[_loc3_] = _loc4_;
            _loc2_ <<= 1;
            _loc3_++;
         }
      }
      
      public function getValue() : int
      {
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-HD§.length)
         {
            _loc1_ |= this.§_-HD§[_loc3_] & _loc2_;
            _loc2_ <<= 1;
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
