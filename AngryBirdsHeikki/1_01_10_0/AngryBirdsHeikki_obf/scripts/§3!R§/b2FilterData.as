package §3!R§
{
   public class b2FilterData
   {
       
      
      public var §]!&§:uint = 1;
      
      public var §+Q§:uint = 65535;
      
      public var §7!-§:int = 0;
      
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!_loc2_)
         {
            _loc1_.§]!&§ = this.§]!&§;
         }
         while(true)
         {
            _loc1_.§+Q§ = this.§+Q§;
            while(!(_loc2_ && _loc1_))
            {
               _loc1_.§7!-§ = this.§7!-§;
               if(!(_loc2_ && _loc3_))
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
