package §7!3§
{
   import §6%§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §+Z§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§?U§;
         this.joint1 = null;
         this.joint2 = null;
         this.§+Z§ = 1;
      }
   }
}
