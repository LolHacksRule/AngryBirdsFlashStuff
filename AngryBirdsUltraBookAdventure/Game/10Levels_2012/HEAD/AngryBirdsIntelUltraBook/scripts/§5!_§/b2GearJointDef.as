package §5!_§
{
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §"b§:Number;
      
      public function b2GearJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               type = b2Joint.§5R§;
               loop1:
               do
               {
                  this.joint1 = null;
                  while(!_loc1_)
                  {
                     this.joint2 = null;
                     do
                     {
                        this.§"b§ = 1;
                     }
                     while(_loc1_ && _loc2_);
                     
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc2_ || _loc1_));
               
            }
         }
      }
   }
}
