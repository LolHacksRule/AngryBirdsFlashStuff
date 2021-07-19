package §`X§
{
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §-!X§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               type = b2Joint.§"!>§;
               loop2:
               for(; _loc2_ || this; if(_loc2_ || this)
               {
                  return;
               })
               {
                  this.joint2 = null;
                  while(_loc2_)
                  {
                     this.§-!X§ = 1;
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     this.joint1 = null;
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr87);
      }
   }
}
