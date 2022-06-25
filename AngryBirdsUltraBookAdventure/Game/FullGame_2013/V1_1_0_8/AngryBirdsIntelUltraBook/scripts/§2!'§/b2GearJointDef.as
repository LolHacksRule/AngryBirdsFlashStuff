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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               type = b2Joint.§%?§;
               do
               {
                  this.joint1 = null;
                  continue loop0;
               }
               while(_loc1_ && this);
               
            }
         }
      }
   }
}
