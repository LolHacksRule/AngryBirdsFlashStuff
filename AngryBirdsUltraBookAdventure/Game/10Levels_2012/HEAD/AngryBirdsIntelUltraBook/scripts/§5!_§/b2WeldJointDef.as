package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §5S§:Number;
      
      public function b2WeldJointDef()
      {
         this.§'!<§ = new b2Vec2();
         this.§1!0§ = new b2Vec2();
         super();
         type = b2Joint.§-!X§;
         this.§5S§ = 0;
      }
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §7!K§ = param1;
         §'P§ = param2;
         this.§'!<§.SetV(§7!K§.GetLocalPoint(param3));
         this.§1!0§.SetV(§'P§.GetLocalPoint(param3));
         this.§5S§ = §'P§.GetAngle() - §7!K§.GetAngle();
      }
   }
}
