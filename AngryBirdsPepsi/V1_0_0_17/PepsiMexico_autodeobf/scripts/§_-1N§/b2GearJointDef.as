package §_-1N§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §_-Qg§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§const§;
         this.joint1 = null;
         this.joint2 = null;
         this.§_-Qg§ = 1;
      }
   }
}
