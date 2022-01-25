package §"!4§
{
   import § y§.b2Body;
   import §54§.b2internal;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §4!A§:b2Vec2;
      
      public var §9Z§:b2Vec2;
      
      public var §9%§:b2Vec2;
      
      public var §+!"§:b2Vec2;
      
      public var §'!#§:Number;
      
      public var §6E§:Number;
      
      public var §=!&§:Number;
      
      public var §]!O§:Number;
      
      public var §;a§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§4!A§ = new b2Vec2();
         this.§9Z§ = new b2Vec2();
         this.§9%§ = new b2Vec2();
         this.§+!"§ = new b2Vec2();
         super();
         type = b2Joint.§&!H§;
         this.§4!A§.Set(-1,1);
         this.§9Z§.Set(1,1);
         this.§9%§.Set(-1,0);
         this.§+!"§.Set(1,0);
         this.§'!#§ = 0;
         this.§6E§ = 0;
         this.§=!&§ = 0;
         this.§]!O§ = 0;
         this.§;a§ = 1;
         collideConnected = true;
      }
      
      public function §#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §8L§ = param1;
         §4!H§ = param2;
         this.§4!A§.SetV(param3);
         this.§9Z§.SetV(param4);
         this.§9%§ = §8L§.GetLocalPoint(param5);
         this.§+!"§ = §4!H§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§'!#§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§=!&§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§;a§ = param7;
         var _loc12_:Number = this.§'!#§ + this.§;a§ * this.§=!&§;
         this.§6E§ = _loc12_ - this.§;a§ * b2PulleyJoint.§4!#§;
         this.§]!O§ = (_loc12_ - b2PulleyJoint.§4!#§) / this.§;a§;
      }
   }
}
