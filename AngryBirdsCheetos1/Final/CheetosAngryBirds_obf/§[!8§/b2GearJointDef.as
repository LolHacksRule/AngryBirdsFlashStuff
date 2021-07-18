package §[!8§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §6F§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            type = b2Joint.§[-§;
            while(true)
            {
               this.joint1 = null;
               while(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     this.joint2 = null;
                     do
                     {
                        this.§6F§ = 1;
                     }
                     while(!_loc1_);
                     
                     if(_loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
