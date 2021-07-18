package §_-1N§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §_-Qg§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               type = b2Joint.§const§;
               addr20:
               if(!_loc1_)
               {
                  this.joint1 = null;
                  if(!_loc1_)
                  {
                     this.joint2 = null;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr55:
                        this.§_-Qg§ = 1;
                     }
                  }
                  return;
               }
            }
            §§goto(addr55);
         }
         §§goto(addr20);
      }
   }
}
