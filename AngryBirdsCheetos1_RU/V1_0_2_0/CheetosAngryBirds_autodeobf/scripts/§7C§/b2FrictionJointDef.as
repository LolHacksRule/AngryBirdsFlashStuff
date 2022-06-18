package §7C§
{
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §,!K§:b2Vec2;
      
      public var §[!5§:b2Vec2;
      
      public var §=R§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§,!K§ = new b2Vec2();
         this.§[!5§ = new b2Vec2();
         super();
         type = b2Joint.§+p§;
         this.§=R§ = 0;
         this.maxTorque = 0;
      }
      
      public function §1U§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;!L§ = param1;
         §0!U§ = param2;
         this.§,!K§.SetV(§;!L§.GetLocalPoint(param3));
         this.§[!5§.SetV(§0!U§.GetLocalPoint(param3));
      }
   }
}
