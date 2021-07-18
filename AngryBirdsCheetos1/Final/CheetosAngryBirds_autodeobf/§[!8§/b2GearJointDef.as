package §[!8§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §6F§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§[-§;
         this.joint1 = null;
         this.joint2 = null;
         this.§6F§ = 1;
      }
   }
}
