package §_-Iw§
{
   public class b2FilterData
   {
       
      
      public var §try§:uint = 1;
      
      public var §_-Gi§:uint = 65535;
      
      public var §_-oa§:int = 0;
      
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = new b2FilterData();
         if(_loc2_)
         {
            _loc1_.§try§ = this.§try§;
            if(_loc2_ || _loc2_)
            {
               _loc1_.§_-Gi§ = this.§_-Gi§;
               if(!(_loc3_ && _loc2_))
               {
                  addr55:
                  _loc1_.§_-oa§ = this.§_-oa§;
               }
            }
            return _loc1_;
         }
         §§goto(addr55);
      }
   }
}
