package §&!"§
{
   public class b2FilterData
   {
       
      
      public var §]@§:uint = 1;
      
      public var §+!0§:uint = 65535;
      
      public var §&T§:int = 0;
      
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(_loc3_)
         {
            _loc1_.§]@§ = this.§]@§;
            do
            {
               _loc1_.§+!0§ = this.§+!0§;
               do
               {
                  _loc1_.§&T§ = this.§&T§;
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
         return _loc1_;
      }
   }
}
