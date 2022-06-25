package §>!L§
{
   public class b2FilterData
   {
       
      
      public var §4!<§:uint = 1;
      
      public var §"!`§:uint = 65535;
      
      public var §4U§:int = 0;
      
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
         if(_loc2_ || _loc3_)
         {
            _loc1_.§4!<§ = this.§4!<§;
            while(true)
            {
               _loc1_.§"!`§ = this.§"!`§;
               while(_loc2_ || _loc1_)
               {
                  _loc1_.§4U§ = this.§4U§;
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
