package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §9!^§:b2Vec2;
      
      public var §6c§:b2Vec2;
      
      public var § i§:b2Vec2;
      
      public var §<=§:b2Vec2;
      
      public var §@i§:Number;
      
      public var §;!L§:Number;
      
      public var §6F§:Number;
      
      public var §"!G§:Number;
      
      public var §+!_§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§9!^§ = new b2Vec2();
         this.§6c§ = new b2Vec2();
         this.§ i§ = new b2Vec2();
         this.§<=§ = new b2Vec2();
         super();
         type = b2Joint.§#!@§;
         this.§9!^§.Set(-1,1);
         this.§6c§.Set(1,1);
         this.§ i§.Set(-1,0);
         this.§<=§.Set(1,0);
         this.§@i§ = 0;
         this.§;!L§ = 0;
         this.§6F§ = 0;
         this.§"!G§ = 0;
         this.§+!_§ = 1;
         collideConnected = true;
      }
      
      public function §;!%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §;0§ = param1;
         §+4§ = param2;
         this.§9!^§.SetV(param3);
         this.§6c§.SetV(param4);
         this.§ i§ = §;0§.GetLocalPoint(param5);
         this.§<=§ = §+4§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§@i§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§6F§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§+!_§ = param7;
         var _loc12_:Number = this.§@i§ + this.§+!_§ * this.§6F§;
         this.§;!L§ = _loc12_ - this.§+!_§ * b2PulleyJoint.§@$§;
         this.§"!G§ = (_loc12_ - b2PulleyJoint.§@$§) / this.§+!_§;
      }
   }
}
