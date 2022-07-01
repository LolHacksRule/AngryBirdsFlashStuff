package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §'&§:b2Vec2;
      
      public var §%"0§:b2Vec2;
      
      public var §^!Q§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§'&§ = new b2Vec2();
         this.§%"0§ = new b2Vec2();
         super();
         type = b2Joint.§0!E§;
         this.§^!Q§ = 0;
         this.maxTorque = 0;
      }
      
      public function §implements§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §'!R§ = param1;
         §@V§ = param2;
         this.§'&§.SetV(§'!R§.GetLocalPoint(param3));
         this.§%"0§.SetV(§@V§.GetLocalPoint(param3));
      }
   }
}
