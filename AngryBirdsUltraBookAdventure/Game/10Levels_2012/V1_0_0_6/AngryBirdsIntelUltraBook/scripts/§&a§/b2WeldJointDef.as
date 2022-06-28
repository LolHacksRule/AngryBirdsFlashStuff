package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §<?§:Number;
      
      public function b2WeldJointDef()
      {
         this.§4!%§ = new b2Vec2();
         this.§=!I§ = new b2Vec2();
         super();
         type = b2Joint.§@!>§;
         this.§<?§ = 0;
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0w§ = param1;
         §^2§ = param2;
         this.§4!%§.SetV(§0w§.GetLocalPoint(param3));
         this.§=!I§.SetV(§^2§.GetLocalPoint(param3));
         this.§<?§ = §^2§.GetAngle() - §0w§.GetAngle();
      }
   }
}
