package § o§
{
   public class b2FilterData
   {
       
      
      public var §5!G§:uint = 1;
      
      public var §&!6§:uint = 65535;
      
      public var §=!d§:int = 0;
      
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(_loc3_ || _loc1_)
         {
            _loc1_.§5!G§ = this.§5!G§;
         }
         do
         {
            _loc1_.§&!6§ = this.§&!6§;
            do
            {
               _loc1_.§=!d§ = this.§=!d§;
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
         return _loc1_;
      }
   }
}
