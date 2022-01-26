package §_-Ox§
{
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §_-SD§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§_-4M§;
         this.joint1 = null;
         this.joint2 = null;
         this.§_-SD§ = 1;
      }
   }
}
