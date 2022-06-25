package §&a§
{
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var § N§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               type = b2Joint.§+!W§;
               while(_loc2_)
               {
                  this.joint1 = null;
                  do
                  {
                     this.joint2 = null;
                     do
                     {
                        this.§ N§ = 1;
                     }
                     while(!(_loc2_ || _loc1_));
                     
                  }
                  while(_loc1_ && this);
                  
                  if(!_loc1_)
                  {
                     return;
                     addr69:
                  }
               }
            }
         }
         §§goto(addr69);
      }
   }
}
