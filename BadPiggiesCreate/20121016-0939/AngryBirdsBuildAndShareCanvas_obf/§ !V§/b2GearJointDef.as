package § !V§
{
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §`x§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            while(true)
            {
               type = b2Joint.§[i§;
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     this.joint1 = null;
                     while(true)
                     {
                        this.joint2 = null;
                        while(_loc2_)
                        {
                           this.§`x§ = 1;
                           if(!_loc1_)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              §§goto(addr52);
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr87);
      }
   }
}
