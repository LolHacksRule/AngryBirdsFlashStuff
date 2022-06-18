package §3!U§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §?#O§:b2Vec2;
      
      public var § b§:b2Vec2;
      
      public var §5A§:b2Vec2;
      
      public var §'"f§:Number;
      
      public var §8!L§:Boolean;
      
      public var §3"&§:Number;
      
      public var §-"o§:Number;
      
      public var §2#8§:Boolean;
      
      public var §^"a§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§?#O§ = new b2Vec2();
         this.§ b§ = new b2Vec2();
         this.§5A§ = new b2Vec2();
         super();
         type = b2Joint.§8"#§;
         this.§5A§.Set(1,0);
         this.§'"f§ = 0;
         this.§8!L§ = false;
         this.§3"&§ = 0;
         this.§-"o§ = 0;
         this.§2#8§ = false;
         this.§^"a§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §6#Y§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0%§ = param1;
         §%"d§ = param2;
         this.§?#O§ = §0%§.GetLocalPoint(param3);
         this.§ b§ = §%"d§.GetLocalPoint(param3);
         this.§5A§ = §0%§.GetLocalVector(param4);
         this.§'"f§ = §%"d§.GetAngle() - §0%§.GetAngle();
      }
   }
}
