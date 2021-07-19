package §;!#§
{
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §[!G§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            type = b2Joint.§^!g§;
            loop1:
            while(true)
            {
               this.joint1 = null;
               loop2:
               do
               {
                  this.joint2 = null;
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        this.§[!G§ = 1;
                        if(_loc1_ || _loc2_)
                        {
                           continue loop2;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               return;
            }
         }
      }
   }
}
