package §6$§
{
   import §&!L§.b2Vec2;
   import §3f§.b2Body;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §8!Z§:b2Vec2;
      
      public var §]!P§:b2Vec2;
      
      public var §[1§:Number;
      
      public var §>C§:Boolean;
      
      public var §=!P§:Number;
      
      public var §'!7§:Number;
      
      public var §+g§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §'!N§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§8!Z§ = new b2Vec2();
         this.§]!P§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§8!Z§.Set(0,0);
         this.§]!P§.Set(0,0);
         this.§[1§ = 0;
         this.§=!P§ = 0;
         this.§'!7§ = 0;
         this.§'!N§ = 0;
         this.motorSpeed = 0;
         this.§>C§ = false;
         this.§+g§ = false;
      }
      
      public function §1!5§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §?!!§ = param1;
         §`!6§ = param2;
         this.§8!Z§ = §?!!§.GetLocalPoint(param3);
         this.§]!P§ = §`!6§.GetLocalPoint(param3);
         this.§[1§ = §`!6§.GetAngle() - §?!!§.GetAngle();
      }
   }
}
