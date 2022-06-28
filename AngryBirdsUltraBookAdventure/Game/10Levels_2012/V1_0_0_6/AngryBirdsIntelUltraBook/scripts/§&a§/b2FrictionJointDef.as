package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §2A§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§4!%§ = new b2Vec2();
         this.§=!I§ = new b2Vec2();
         super();
         type = b2Joint.§0!!§;
         this.§2A§ = 0;
         this.maxTorque = 0;
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0w§ = param1;
         §^2§ = param2;
         this.§4!%§.SetV(§0w§.GetLocalPoint(param3));
         this.§=!I§.SetV(§^2§.GetLocalPoint(param3));
      }
   }
}
