package §3g§
{
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §]7§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§9T§;
         this.joint1 = null;
         this.joint2 = null;
         this.§]7§ = 1;
      }
   }
}
