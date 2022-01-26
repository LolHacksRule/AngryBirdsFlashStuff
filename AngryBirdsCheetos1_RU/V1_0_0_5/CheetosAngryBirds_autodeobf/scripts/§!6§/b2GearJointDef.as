package §!6§
{
   import § !5§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §#!J§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§#%§;
         this.joint1 = null;
         this.joint2 = null;
         this.§#!J§ = 1;
      }
   }
}
