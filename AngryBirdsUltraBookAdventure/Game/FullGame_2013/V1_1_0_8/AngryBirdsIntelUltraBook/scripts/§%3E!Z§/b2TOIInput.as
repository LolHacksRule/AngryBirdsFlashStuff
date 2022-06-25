package §>!Z§
{
   import §&H§.b2Sweep;
   
   public class b2TOIInput
   {
       
      
      public var §,N§:b2DistanceProxy;
      
      public var §#y§:b2DistanceProxy;
      
      public var §,!+§:b2Sweep;
      
      public var §5!v§:b2Sweep;
      
      public var §^b§:Number;
      
      public function b2TOIInput()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,N§ = new b2DistanceProxy();
         }
         loop0:
         do
         {
            this.§#y§ = new b2DistanceProxy();
            while(true)
            {
               this.§,!+§ = new b2Sweep();
               while(!_loc2_)
               {
                  this.§5!v§ = new b2Sweep();
                  do
                  {
                     super();
                  }
                  while(_loc2_);
                  
                  if(_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
   }
}
