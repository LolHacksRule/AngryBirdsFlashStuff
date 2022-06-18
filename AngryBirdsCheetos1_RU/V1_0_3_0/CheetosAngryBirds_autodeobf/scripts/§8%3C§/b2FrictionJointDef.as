package §8<§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §;!,§:b2Vec2;
      
      public var §const§:b2Vec2;
      
      public var §%l§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§;!,§ = new b2Vec2();
         this.§const§ = new b2Vec2();
         super();
         type = b2Joint.§"!%§;
         this.§%l§ = 0;
         this.maxTorque = 0;
      }
      
      public function §9!K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §,w§ = param1;
         §2h§ = param2;
         this.§;!,§.SetV(§,w§.GetLocalPoint(param3));
         this.§const§.SetV(§2h§.GetLocalPoint(param3));
      }
   }
}
