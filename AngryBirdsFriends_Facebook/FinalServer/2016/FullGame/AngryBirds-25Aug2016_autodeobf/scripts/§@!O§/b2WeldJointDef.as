package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §@2§:b2Vec2;
      
      public var §7#$§:b2Vec2;
      
      public var §[$"§:Number;
      
      public function b2WeldJointDef()
      {
         this.§@2§ = new b2Vec2();
         this.§7#$§ = new b2Vec2();
         super();
         type = b2Joint.§+%§;
         this.§[$"§ = 0;
      }
      
      public function §1[§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9"Z§ = param1;
         §'!Y§ = param2;
         this.§@2§.SetV(§9"Z§.GetLocalPoint(param3));
         this.§7#$§.SetV(§'!Y§.GetLocalPoint(param3));
         this.§[$"§ = §'!Y§.GetAngle() - §9"Z§.GetAngle();
      }
   }
}
