package §3!A§
{
   import §+&§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §1!K§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§#!a§;
         this.joint1 = null;
         this.joint2 = null;
         this.§1!K§ = 1;
      }
   }
}
