package §!H§
{
   import §!!B§.b2Body;
   import §;0§.b2internal;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §7p§:b2Vec2;
      
      public var §"!C§:b2Vec2;
      
      public var §#!V§:Number;
      
      public function b2WeldJointDef()
      {
         this.§7p§ = new b2Vec2();
         this.§"!C§ = new b2Vec2();
         super();
         type = b2Joint.§?!$§;
         this.§#!V§ = 0;
      }
      
      public function §`!0§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1U§ = param1;
         §"=§ = param2;
         this.§7p§.SetV(§1U§.GetLocalPoint(param3));
         this.§"!C§.SetV(§"=§.GetLocalPoint(param3));
         this.§#!V§ = §"=§.GetAngle() - §1U§.GetAngle();
      }
   }
}
