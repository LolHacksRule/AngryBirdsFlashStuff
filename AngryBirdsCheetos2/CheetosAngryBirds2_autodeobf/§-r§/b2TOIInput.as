package §-r§
{
   import §6!H§.b2Sweep;
   
   public class b2TOIInput
   {
       
      
      public var §-C§:b2DistanceProxy;
      
      public var §%!J§:b2DistanceProxy;
      
      public var §;U§:b2Sweep;
      
      public var §<`§:b2Sweep;
      
      public var §,!6§:Number;
      
      public function b2TOIInput()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-C§ = new b2DistanceProxy();
         }
         while(true)
         {
            this.§%!J§ = new b2DistanceProxy();
            loop1:
            while(!(_loc1_ && _loc1_))
            {
               this.§;U§ = new b2Sweep();
               do
               {
                  this.§<`§ = new b2Sweep();
                  while(!(_loc1_ && _loc2_))
                  {
                     super();
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr29);
                  }
                  continue loop1;
               }
               while(!(_loc2_ || this));
               
               return;
            }
         }
      }
   }
}
