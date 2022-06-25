package §#I§
{
   public class b2FilterData
   {
       
      
      public var §[!k§:uint = 1;
      
      public var §?!K§:uint = 65535;
      
      public var §"!7§:int = 0;
      
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(_loc3_ || _loc3_)
         {
            _loc1_.§[!k§ = this.§[!k§;
            while(true)
            {
               _loc1_.§?!K§ = this.§?!K§;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            _loc1_.§"!7§ = this.§"!7§;
            if(_loc3_ || this)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
