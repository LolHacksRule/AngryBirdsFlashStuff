package §8!k§
{
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §]I§:b2Vec2;
      
      public var §"s§:b2Vec2;
      
      public var §"!O§:b2Vec2;
      
      public var § W§:b2Vec2;
      
      public var §&,§:Number;
      
      public var §,!'§:Number;
      
      public var §#!+§:Number;
      
      public var §[z§:Number;
      
      public var §=u§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§]I§ = new b2Vec2();
         this.§"s§ = new b2Vec2();
         this.§"!O§ = new b2Vec2();
         this.§ W§ = new b2Vec2();
         super();
         type = b2Joint.§^;§;
         this.§]I§.Set(-1,1);
         this.§"s§.Set(1,1);
         this.§"!O§.Set(-1,0);
         this.§ W§.Set(1,0);
         this.§&,§ = 0;
         this.§,!'§ = 0;
         this.§#!+§ = 0;
         this.§[z§ = 0;
         this.§=u§ = 1;
         collideConnected = true;
      }
      
      public function §+"'§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §<!S§ = param1;
         §=Y§ = param2;
         this.§]I§.SetV(param3);
         this.§"s§.SetV(param4);
         this.§"!O§ = §<!S§.GetLocalPoint(param5);
         this.§ W§ = §=Y§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§&,§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§#!+§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§=u§ = param7;
         var _loc12_:Number = this.§&,§ + this.§=u§ * this.§#!+§;
         this.§,!'§ = _loc12_ - this.§=u§ * b2PulleyJoint.§9w§;
         this.§[z§ = (_loc12_ - b2PulleyJoint.§9w§) / this.§=u§;
      }
   }
}
