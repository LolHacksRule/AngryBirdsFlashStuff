package §9!"§
{
   import §7!u§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §8B§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               type = b2Joint.§8!Y§;
               while(true)
               {
                  this.joint1 = null;
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           this.joint2 = null;
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                        return;
                        addr56:
                        addr75:
                     }
                     break;
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§goto(addr56);
                  }
               }
            }
         }
         §§goto(addr75);
      }
   }
}
