package §2!'§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §?!s§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               type = b2Joint.§%?§;
               loop1:
               for(; !_loc2_; loop3:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     this.§?!s§ = 1;
                     if(!_loc1_)
                     {
                        continue loop3;
                     }
                     §§goto(addr44);
                  }
                  §§goto(addr61);
               })
               {
                  this.joint1 = null;
                  while(true)
                  {
                     this.joint2 = null;
                     continue loop1;
                     addr44:
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                        addr61:
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
   }
}
