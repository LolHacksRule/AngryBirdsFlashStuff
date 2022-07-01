package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'&§:b2Vec2;
      
      public var §%"0§:b2Vec2;
      
      public var §=0§:Number;
      
      public function b2WeldJointDef()
      {
         this.§'&§ = new b2Vec2();
         this.§%"0§ = new b2Vec2();
         super();
         type = b2Joint.§53§;
         this.§=0§ = 0;
      }
      
      public function §implements§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §'!R§ = param1;
         §@V§ = param2;
         this.§'&§.SetV(§'!R§.GetLocalPoint(param3));
         this.§%"0§.SetV(§@V§.GetLocalPoint(param3));
         this.§=0§ = §@V§.GetAngle() - §'!R§.GetAngle();
      }
   }
}
