package §_-09-§
{
   import §_-5§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §_-0Bd§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               type = b2Joint.§_-eV§;
               loop2:
               for(; !(_loc1_ && _loc1_); if(_loc2_ || _loc1_)
               {
                  return;
               })
               {
                  this.joint2 = null;
                  while(_loc2_)
                  {
                     this.§_-0Bd§ = 1;
                     if(_loc2_)
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
         §§goto(addr82);
      }
   }
}
