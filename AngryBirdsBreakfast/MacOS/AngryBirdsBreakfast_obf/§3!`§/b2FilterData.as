package §3!`§
{
   public class b2FilterData
   {
       
      
      public var §9!W§:uint = 1;
      
      public var §`"%§:uint = 65535;
      
      public var §5!F§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§9!W§ = this.§9!W§;
         }
         do
         {
            _loc1_.§`"%§ = this.§`"%§;
            do
            {
               _loc1_.§5!F§ = this.§5!F§;
            }
            while(_loc3_ && _loc1_);
            
         }
         while(_loc3_ && _loc2_);
         
         return _loc1_;
      }
   }
}
