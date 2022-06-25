package §#I§
{
   public class b2FilterData
   {
       
      
      public var §[!k§:uint = 1;
      
      public var §?!K§:uint = 65535;
      
      public var §"!7§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
            _loc1_.§[!k§ = this.§[!k§;
            while(true)
            {
               _loc1_.§?!K§ = this.§?!K§;
               loop1:
               while(_loc3_ || _loc1_)
               {
                  while(true)
                  {
                     _loc1_.§"!7§ = this.§"!7§;
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr74);
      }
   }
}
