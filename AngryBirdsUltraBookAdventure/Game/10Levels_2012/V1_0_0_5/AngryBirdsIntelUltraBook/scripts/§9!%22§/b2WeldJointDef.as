package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §-!Y§:Number;
      
      public function b2WeldJointDef()
      {
         this.§<?§ = new b2Vec2();
         this.§%!e§ = new b2Vec2();
         super();
         type = b2Joint.§]!n§;
         this.§-!Y§ = 0;
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §3x§ = param1;
         §8P§ = param2;
         this.§<?§.SetV(§3x§.GetLocalPoint(param3));
         this.§%!e§.SetV(§8P§.GetLocalPoint(param3));
         this.§-!Y§ = §8P§.GetAngle() - §3x§.GetAngle();
      }
   }
}
