package §]=§
{
   public class b2FilterData
   {
       
      
      public var §6o§:uint = 1;
      
      public var §!W§:uint = 65535;
      
      public var §8!#§:int = 0;
      
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
            _loc1_.§6o§ = this.§6o§;
            while(true)
            {
               _loc1_.§!W§ = this.§!W§;
               while(_loc2_ || this)
               {
                  _loc1_.§8!#§ = this.§8!#§;
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
