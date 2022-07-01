package §^%§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §98§:b2Vec2;
      
      public var §?m§:b2Vec2;
      
      public var §""4§:Number;
      
      public function b2WeldJointDef()
      {
         this.§98§ = new b2Vec2();
         this.§?m§ = new b2Vec2();
         super();
         type = b2Joint.§;r§;
         this.§""4§ = 0;
      }
      
      public function §`!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0",§ = param1;
         §^W§ = param2;
         this.§98§.SetV(§0",§.GetLocalPoint(param3));
         this.§?m§.SetV(§^W§.GetLocalPoint(param3));
         this.§""4§ = §^W§.GetAngle() - §0",§.GetAngle();
      }
   }
}
