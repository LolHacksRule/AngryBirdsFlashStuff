package §+!0§
{
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §=!&§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§2q§;
         this.joint1 = null;
         this.joint2 = null;
         this.§=!&§ = 1;
      }
   }
}
