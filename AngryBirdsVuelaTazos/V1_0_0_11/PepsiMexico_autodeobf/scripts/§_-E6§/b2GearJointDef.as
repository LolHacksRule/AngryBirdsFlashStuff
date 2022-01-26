package §_-E6§
{
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §_-8n§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§_-6C§;
         this.joint1 = null;
         this.joint2 = null;
         this.§_-8n§ = 1;
      }
   }
}
