package §`!H§
{
   import §?!&§.b2Sweep;
   
   public class b2TOIInput
   {
       
      
      public var §1&§:b2DistanceProxy;
      
      public var §5!f§:b2DistanceProxy;
      
      public var §>$§:b2Sweep;
      
      public var §^q§:b2Sweep;
      
      public var §8!K§:Number;
      
      public function b2TOIInput()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§1&§ = new b2DistanceProxy();
         }
         loop0:
         while(true)
         {
            this.§5!f§ = new b2DistanceProxy();
            while(true)
            {
               this.§>$§ = new b2Sweep();
               while(!_loc2_)
               {
                  continue loop0;
                  this.§^q§ = new b2Sweep();
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
