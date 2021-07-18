package §"J§
{
   public class b2FilterData
   {
       
      
      public var §=6§:uint = 1;
      
      public var §'"2§:uint = 65535;
      
      public var §6"2§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = new b2FilterData();
         if(_loc2_)
         {
            _loc1_.§=6§ = this.§=6§;
            do
            {
               _loc1_.§'"2§ = this.§'"2§;
               do
               {
                  _loc1_.§6"2§ = this.§6"2§;
               }
               while(_loc3_ && _loc2_);
               
            }
            while(!_loc2_);
            
         }
         return _loc1_;
      }
   }
}
