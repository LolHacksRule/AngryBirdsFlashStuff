package §3!U§
{
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §3"g§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§3#,§;
         this.joint1 = null;
         this.joint2 = null;
         this.§3"g§ = 1;
      }
   }
}
