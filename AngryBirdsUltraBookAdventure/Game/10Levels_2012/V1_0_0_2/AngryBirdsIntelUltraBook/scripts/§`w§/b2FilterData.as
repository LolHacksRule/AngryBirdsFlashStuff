package §`w§
{
   public class b2FilterData
   {
       
      
      public var §`!U§:uint = 1;
      
      public var §?!^§:uint = 65535;
      
      public var §6L§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§`!U§ = this.§`!U§;
            while(true)
            {
               _loc1_.§?!^§ = this.§?!^§;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            _loc1_.§6L§ = this.§6L§;
            if(_loc3_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
