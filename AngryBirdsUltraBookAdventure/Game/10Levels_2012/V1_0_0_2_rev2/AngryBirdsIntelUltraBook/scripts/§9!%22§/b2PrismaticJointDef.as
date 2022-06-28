package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §5!Q§:b2Vec2;
      
      public var §-!Y§:Number;
      
      public var §&%§:Boolean;
      
      public var § !B§:Number;
      
      public var §!!l§:Number;
      
      public var §!;§:Boolean;
      
      public var §>!a§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§<?§ = new b2Vec2();
         this.§%!e§ = new b2Vec2();
         this.§5!Q§ = new b2Vec2();
         super();
         type = b2Joint.§1r§;
         this.§5!Q§.Set(1,0);
         this.§-!Y§ = 0;
         this.§&%§ = false;
         this.§ !B§ = 0;
         this.§!!l§ = 0;
         this.§!;§ = false;
         this.§>!a§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §3x§ = param1;
         §8P§ = param2;
         this.§<?§ = §3x§.GetLocalPoint(param3);
         this.§%!e§ = §8P§.GetLocalPoint(param3);
         this.§5!Q§ = §3x§.GetLocalVector(param4);
         this.§-!Y§ = §8P§.GetAngle() - §3x§.GetAngle();
      }
   }
}
