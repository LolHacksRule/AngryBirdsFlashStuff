package §5=§
{
   public class Integer
   {
       
      
      private var §+p§:Vector.<int>;
      
      public function Integer(param1:int = 0)
      {
         super();
         this.§+p§ = new Vector.<int>(32);
         this.assign(param1);
      }
      
      public function assign(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§+p§.length)
         {
            _loc4_ = Math.round((Math.random() * 2 - 1) * int.MAX_VALUE);
            _loc5_ = param1 & _loc2_;
            if(_loc5_)
            {
               _loc4_ |= _loc2_;
            }
            else
            {
               _loc4_ &= ~_loc2_;
            }
            this.§+p§[_loc3_] = _loc4_;
            _loc2_ <<= 1;
            _loc3_++;
         }
         if(this.getValue() != param1)
         {
         }
      }
      
      public function getValue() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§+p§.length)
         {
            _loc1_ |= this.§+p§[_loc3_] & _loc2_;
            _loc2_ <<= 1;
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
