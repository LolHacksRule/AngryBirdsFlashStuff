package §0"!§
{
   public class b2FilterData
   {
       
      
      public var §^!d§:uint = 1;
      
      public var §+!+§:uint = 65535;
      
      public var §?!x§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!_loc2_)
         {
            _loc1_.§^!d§ = this.§^!d§;
            do
            {
               _loc1_.§+!+§ = this.§+!+§;
               do
               {
                  _loc1_.§?!x§ = this.§?!x§;
               }
               while(!(_loc3_ || _loc1_));
               
            }
            while(_loc2_ && _loc1_);
            
         }
         return _loc1_;
      }
   }
}
