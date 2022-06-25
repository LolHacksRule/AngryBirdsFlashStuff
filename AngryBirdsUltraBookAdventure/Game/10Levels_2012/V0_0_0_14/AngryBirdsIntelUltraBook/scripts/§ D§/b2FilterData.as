package § D§
{
   public class b2FilterData
   {
       
      
      public var § H§:uint = 1;
      
      public var §,9§:uint = 65535;
      
      public var §6!e§:int = 0;
      
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
         if(!_loc3_)
         {
            _loc1_.§ H§ = this.§ H§;
         }
         do
         {
            _loc1_.§,9§ = this.§,9§;
            do
            {
               _loc1_.§6!e§ = this.§6!e§;
            }
            while(_loc3_ && _loc3_);
            
         }
         while(!(_loc2_ || _loc3_));
         
         return _loc1_;
      }
   }
}
