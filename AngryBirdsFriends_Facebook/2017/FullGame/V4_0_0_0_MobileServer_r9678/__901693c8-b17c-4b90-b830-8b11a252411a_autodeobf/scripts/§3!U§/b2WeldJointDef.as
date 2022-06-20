package §3!U§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §?#O§:b2Vec2;
      
      public var § b§:b2Vec2;
      
      public var §'"f§:Number;
      
      public function b2WeldJointDef()
      {
         this.§?#O§ = new b2Vec2();
         this.§ b§ = new b2Vec2();
         super();
         type = b2Joint.§@"O§;
         this.§'"f§ = 0;
      }
      
      public function §6#Y§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0%§ = param1;
         §%"d§ = param2;
         this.§?#O§.SetV(§0%§.GetLocalPoint(param3));
         this.§ b§.SetV(§%"d§.GetLocalPoint(param3));
         this.§'"f§ = §%"d§.GetAngle() - §0%§.GetAngle();
      }
   }
}
