package §,,§
{
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §#9§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               type = b2Joint.§]x§;
               addr68:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               this.§#9§ = 1;
               addr75:
               if(!(_loc2_ && this))
               {
                  addr44:
                  if(!(_loc1_ || this))
                  {
                     while(true)
                     {
                        this.joint1 = null;
                        while(true)
                        {
                           this.joint2 = null;
                           addr66:
                           while(!_loc2_)
                           {
                              §§goto(addr68);
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr44);
                     }
                     addr86:
                  }
                  return;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr86);
      }
   }
}
