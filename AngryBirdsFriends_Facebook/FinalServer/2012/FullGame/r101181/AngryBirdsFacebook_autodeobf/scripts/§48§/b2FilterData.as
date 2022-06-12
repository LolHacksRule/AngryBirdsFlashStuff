package §48§
{
   public class b2FilterData
   {
       
      
      public var §>!t§:uint = 1;
      
      public var §"R§:uint = 65535;
      
      public var §^]§:int = 0;
      
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
         if(_loc3_ || this)
         {
            _loc1_.§>!t§ = this.§>!t§;
            do
            {
               _loc1_.§"R§ = this.§"R§;
               do
               {
                  _loc1_.§^]§ = this.§^]§;
               }
               while(!(_loc3_ || _loc1_));
               
            }
            while(!_loc3_);
            
         }
         return _loc1_;
      }
   }
}
