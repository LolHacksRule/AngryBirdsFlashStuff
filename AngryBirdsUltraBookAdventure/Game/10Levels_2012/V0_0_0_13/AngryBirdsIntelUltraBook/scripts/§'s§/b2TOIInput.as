package §'s§
{
   import §&L§.b2Sweep;
   
   public class b2TOIInput
   {
       
      
      public var §5A§:b2DistanceProxy;
      
      public var §"T§:b2DistanceProxy;
      
      public var §6!h§:b2Sweep;
      
      public var §`!@§:b2Sweep;
      
      public var § !%§:Number;
      
      public function b2TOIInput()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§5A§ = new b2DistanceProxy();
         }
         loop0:
         while(true)
         {
            this.§"T§ = new b2DistanceProxy();
            while(true)
            {
               this.§6!h§ = new b2Sweep();
               while(!_loc2_)
               {
                  continue loop0;
                  this.§`!@§ = new b2Sweep();
                  do
                  {
                     super();
                  }
                  while(!_loc1_);
                  
                  if(_loc1_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
