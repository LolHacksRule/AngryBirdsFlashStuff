package §[!N§
{
   import § D§.b2Body;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §1o§;
      
      public var §-!O§:b2Body;
      
      public var §3!u§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.type = b2Joint.§?!N§;
               loop1:
               while(true)
               {
                  this.§1o§ = null;
                  addr85:
                  while(_loc1_)
                  {
                     this.§-!O§ = null;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr68);
      }
   }
}
