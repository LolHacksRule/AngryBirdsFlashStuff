package § ! §
{
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §#"z§:b2Vec2;
      
      public var §>#C§:b2Vec2;
      
      public var §=#I§:Number;
      
      public function b2WeldJointDef()
      {
         this.§#"z§ = new b2Vec2();
         this.§>#C§ = new b2Vec2();
         super();
         type = b2Joint.§="9§;
         this.§=#I§ = 0;
      }
      
      public function §?#W§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §'§ = param1;
         §>!2§ = param2;
         this.§#"z§.SetV(§'§.GetLocalPoint(param3));
         this.§>#C§.SetV(§>!2§.GetLocalPoint(param3));
         this.§=#I§ = §>!2§.GetAngle() - §'§.GetAngle();
      }
   }
}
