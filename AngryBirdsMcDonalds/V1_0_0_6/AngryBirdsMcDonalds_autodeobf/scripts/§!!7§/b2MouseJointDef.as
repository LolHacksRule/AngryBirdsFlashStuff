package §!!7§
{
   import §7!Y§.b2internal;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §1!J§:Number;
      
      public var §6U§:Number;
      
      public var §%R§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§8!'§;
         this.§1!J§ = 0;
         this.§6U§ = 5;
         this.§%R§ = 0.7;
      }
   }
}
