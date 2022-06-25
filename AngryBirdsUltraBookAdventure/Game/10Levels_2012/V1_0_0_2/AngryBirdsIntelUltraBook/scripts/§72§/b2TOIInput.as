package §72§
{
   import §>H§.b2Sweep;
   
   public class b2TOIInput
   {
       
      
      public var §]!O§:b2DistanceProxy;
      
      public var §&d§:b2DistanceProxy;
      
      public var §'!S§:b2Sweep;
      
      public var §?X§:b2Sweep;
      
      public var §0%§:Number;
      
      public function b2TOIInput()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§]!O§ = new b2DistanceProxy();
            while(true)
            {
               this.§&d§ = new b2DistanceProxy();
            }
            addr98:
         }
         loop1:
         do
         {
            this.§'!S§ = new b2Sweep();
            while(!_loc1_)
            {
               this.§?X§ = new b2Sweep();
               do
               {
                  super();
               }
               while(_loc1_ && _loc2_);
               
               if(_loc2_ || _loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr98);
         }
         while(_loc1_ && _loc2_);
         
      }
   }
}
