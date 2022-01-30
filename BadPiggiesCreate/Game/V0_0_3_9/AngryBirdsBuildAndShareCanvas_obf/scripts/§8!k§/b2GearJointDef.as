package §8!k§
{
   import §7"'§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §=u§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§18§;
         this.joint1 = null;
         this.joint2 = null;
         this.§=u§ = 1;
      }
   }
}
