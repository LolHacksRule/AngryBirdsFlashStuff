package §+#$§
{
   public class b2FilterData
   {
       
      
      public var §=#0§:uint = 1;
      
      public var §8"A§:uint = 65535;
      
      public var §4#"§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!_loc3_)
         {
            _loc1_.§=#0§ = this.§=#0§;
         }
         while(true)
         {
            _loc1_.§8"A§ = this.§8"A§;
            while(!(_loc3_ && _loc3_))
            {
               _loc1_.§4#"§ = this.§4#"§;
               if(!_loc3_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
