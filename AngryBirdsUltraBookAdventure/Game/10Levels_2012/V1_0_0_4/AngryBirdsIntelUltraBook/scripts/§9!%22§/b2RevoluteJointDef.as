package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §-!Y§:Number;
      
      public var §&%§:Boolean;
      
      public var §6!x§:Number;
      
      public var §#f§:Number;
      
      public var §!;§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §5!?§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§<?§ = new b2Vec2();
         this.§%!e§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§<?§.Set(0,0);
         this.§%!e§.Set(0,0);
         this.§-!Y§ = 0;
         this.§6!x§ = 0;
         this.§#f§ = 0;
         this.§5!?§ = 0;
         this.motorSpeed = 0;
         this.§&%§ = false;
         this.§!;§ = false;
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §3x§ = param1;
         §8P§ = param2;
         this.§<?§ = §3x§.GetLocalPoint(param3);
         this.§%!e§ = §8P§.GetLocalPoint(param3);
         this.§-!Y§ = §8P§.GetAngle() - §3x§.GetAngle();
      }
   }
}
