package §1%§
{
   public class b2FilterData
   {
       
      
      public var §,j§:uint = 1;
      
      public var §7f§:uint = 65535;
      
      public var §?!<§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!(_loc3_ && this))
         {
            _loc1_.§,j§ = this.§,j§;
            while(true)
            {
               _loc1_.§7f§ = this.§7f§;
               while(_loc2_ || this)
               {
                  _loc1_.§?!<§ = this.§?!<§;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
   }
}
