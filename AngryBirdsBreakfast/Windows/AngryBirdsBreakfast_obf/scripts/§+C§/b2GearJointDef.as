package §+C§
{
   import §'F§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §&D§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               type = b2Joint.§4<§;
               loop1:
               for(; _loc2_; if(!(_loc2_ || _loc1_))
               {
                  continue;
               },§§goto(addr59))
               {
                  this.joint1 = null;
                  loop2:
                  while(true)
                  {
                     this.joint2 = null;
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr59:
                        this.§&D§ = 1;
                        if(_loc2_ || _loc2_)
                        {
                           return;
                           addr45:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr45);
      }
   }
}
