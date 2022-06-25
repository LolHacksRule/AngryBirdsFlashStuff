package §[!N§
{
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §32§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               type = b2Joint.§3!B§;
               loop1:
               while(_loc2_)
               {
                  this.joint1 = null;
                  loop2:
                  while(true)
                  {
                     this.joint2 = null;
                     loop3:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           this.§32§ = 1;
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr64);
      }
   }
}
