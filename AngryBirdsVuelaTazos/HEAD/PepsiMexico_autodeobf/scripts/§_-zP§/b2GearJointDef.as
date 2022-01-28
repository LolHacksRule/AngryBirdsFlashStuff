package §_-zP§
{
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §_-An§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§_-lL§;
         this.joint1 = null;
         this.joint2 = null;
         this.§_-An§ = 1;
      }
   }
}
