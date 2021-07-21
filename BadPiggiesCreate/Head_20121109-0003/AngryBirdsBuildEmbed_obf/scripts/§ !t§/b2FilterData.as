package § !t§
{
   public class b2FilterData
   {
       
      
      public var §]!J§:uint = 1;
      
      public var §#$§:uint = 65535;
      
      public var §%x§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            _loc1_.§]!J§ = this.§]!J§;
            if(_loc2_ || this)
            {
               addr48:
               _loc1_.§#$§ = this.§#$§;
               if(!_loc3_)
               {
                  _loc1_.§%x§ = this.§%x§;
               }
            }
            return _loc1_;
         }
         §§goto(addr48);
      }
   }
}
