package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §7!L§:Number;
      
      public function b2WeldJointDef()
      {
         this.§8D§ = new b2Vec2();
         this.§@"$§ = new b2Vec2();
         super();
         type = b2Joint.§?!m§;
         this.§7!L§ = 0;
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9!w§ = param1;
         §>!W§ = param2;
         this.§8D§.SetV(§9!w§.GetLocalPoint(param3));
         this.§@"$§.SetV(§>!W§.GetLocalPoint(param3));
         this.§7!L§ = §>!W§.GetAngle() - §9!w§.GetAngle();
      }
   }
}
