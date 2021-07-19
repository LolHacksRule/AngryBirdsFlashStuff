package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §4g§:b2Vec2;
      
      public var §2l§:b2Vec2;
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §-t§:Number;
      
      public var §!0§:Number;
      
      public var §-f§:Number;
      
      public var §@!w§:Number;
      
      public var §&D§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§4g§ = new b2Vec2();
         this.§2l§ = new b2Vec2();
         this.§0O§ = new b2Vec2();
         this.§ @§ = new b2Vec2();
         super();
         type = b2Joint.§[!0§;
         this.§4g§.Set(-1,1);
         this.§2l§.Set(1,1);
         this.§0O§.Set(-1,0);
         this.§ @§.Set(1,0);
         this.§-t§ = 0;
         this.§!0§ = 0;
         this.§-f§ = 0;
         this.§@!w§ = 0;
         this.§&D§ = 1;
         collideConnected = true;
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §'!n§ = param1;
         § 5§ = param2;
         this.§4g§.SetV(param3);
         this.§2l§.SetV(param4);
         this.§0O§ = §'!n§.GetLocalPoint(param5);
         this.§ @§ = § 5§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§-t§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§-f§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§&D§ = param7;
         var _loc12_:Number = this.§-t§ + this.§&D§ * this.§-f§;
         this.§!0§ = _loc12_ - this.§&D§ * b2PulleyJoint.§9!2§;
         this.§@!w§ = (_loc12_ - b2PulleyJoint.§9!2§) / this.§&D§;
      }
   }
}
