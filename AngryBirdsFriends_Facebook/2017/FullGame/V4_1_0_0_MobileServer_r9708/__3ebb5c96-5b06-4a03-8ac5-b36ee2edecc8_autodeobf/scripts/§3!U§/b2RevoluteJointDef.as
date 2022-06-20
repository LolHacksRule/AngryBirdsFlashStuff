package §3!U§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §?#O§:b2Vec2;
      
      public var § b§:b2Vec2;
      
      public var §'"f§:Number;
      
      public var §8!L§:Boolean;
      
      public var §9V§:Number;
      
      public var §;![§:Number;
      
      public var §2#8§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §#$;§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§?#O§ = new b2Vec2();
         this.§ b§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§?#O§.Set(0,0);
         this.§ b§.Set(0,0);
         this.§'"f§ = 0;
         this.§9V§ = 0;
         this.§;![§ = 0;
         this.§#$;§ = 0;
         this.motorSpeed = 0;
         this.§8!L§ = false;
         this.§2#8§ = false;
      }
      
      public function §6#Y§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0%§ = param1;
         §%"d§ = param2;
         this.§?#O§ = §0%§.GetLocalPoint(param3);
         this.§ b§ = §%"d§.GetLocalPoint(param3);
         this.§'"f§ = §%"d§.GetAngle() - §0%§.GetAngle();
      }
   }
}
