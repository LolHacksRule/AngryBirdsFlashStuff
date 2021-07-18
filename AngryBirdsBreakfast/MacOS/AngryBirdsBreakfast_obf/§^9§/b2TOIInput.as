package §^9§
{
   import §6Z§.b2Sweep;
   
   public class b2TOIInput
   {
       
      
      public var §2J§:b2DistanceProxy;
      
      public var §4"$§:b2DistanceProxy;
      
      public var §]!^§:b2Sweep;
      
      public var §2T§:b2Sweep;
      
      public var §"!t§:Number;
      
      public function b2TOIInput()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§2J§ = new b2DistanceProxy();
            while(true)
            {
               this.§4"$§ = new b2DistanceProxy();
               loop1:
               while(_loc1_ || _loc2_)
               {
                  this.§]!^§ = new b2Sweep();
                  while(true)
                  {
                     this.§2T§ = new b2Sweep();
                     while(!(_loc2_ && _loc2_))
                     {
                        super();
                        if(_loc1_ || this)
                        {
                           if(_loc2_ && _loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr55);
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
   }
}
