package §=!P§
{
   import §4! §.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
       
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var §4v§:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint.§1Q§;
         this.joint1 = null;
         this.joint2 = null;
         this.§4v§ = 1;
      }
   }
}
