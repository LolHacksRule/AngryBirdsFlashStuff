package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §>y§:b2Vec2;
      
      public var §]k§:b2Vec2;
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §`P§:Number;
      
      public var §0#§:Number;
      
      public var §'=§:Number;
      
      public var §"!<§:Number;
      
      public var § N§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§>y§ = new b2Vec2();
         this.§]k§ = new b2Vec2();
         this.§4!%§ = new b2Vec2();
         this.§=!I§ = new b2Vec2();
         super();
         type = b2Joint.§-L§;
         this.§>y§.Set(-1,1);
         this.§]k§.Set(1,1);
         this.§4!%§.Set(-1,0);
         this.§=!I§.Set(1,0);
         this.§`P§ = 0;
         this.§0#§ = 0;
         this.§'=§ = 0;
         this.§"!<§ = 0;
         this.§ N§ = 1;
         collideConnected = true;
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §0w§ = param1;
         §^2§ = param2;
         this.§>y§.SetV(param3);
         this.§]k§.SetV(param4);
         this.§4!%§ = §0w§.GetLocalPoint(param5);
         this.§=!I§ = §^2§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§`P§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§'=§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§ N§ = param7;
         var _loc12_:Number = this.§`P§ + this.§ N§ * this.§'=§;
         this.§0#§ = _loc12_ - this.§ N§ * b2PulleyJoint.§@!A§;
         this.§"!<§ = (_loc12_ - b2PulleyJoint.§@!A§) / this.§ N§;
      }
   }
}
