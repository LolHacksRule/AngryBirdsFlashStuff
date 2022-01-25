package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §%!;§:b2Vec2;
      
      public var §!j§:b2Vec2;
      
      public var §'&§:b2Vec2;
      
      public var §%"0§:b2Vec2;
      
      public var §8r§:Number;
      
      public var §'!E§:Number;
      
      public var §<!5§:Number;
      
      public var §!!'§:Number;
      
      public var §%"7§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§%!;§ = new b2Vec2();
         this.§!j§ = new b2Vec2();
         this.§'&§ = new b2Vec2();
         this.§%"0§ = new b2Vec2();
         super();
         type = b2Joint.§!7§;
         this.§%!;§.Set(-1,1);
         this.§!j§.Set(1,1);
         this.§'&§.Set(-1,0);
         this.§%"0§.Set(1,0);
         this.§8r§ = 0;
         this.§'!E§ = 0;
         this.§<!5§ = 0;
         this.§!!'§ = 0;
         this.§%"7§ = 1;
         collideConnected = true;
      }
      
      public function §implements§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §'!R§ = param1;
         §@V§ = param2;
         this.§%!;§.SetV(param3);
         this.§!j§.SetV(param4);
         this.§'&§ = §'!R§.GetLocalPoint(param5);
         this.§%"0§ = §@V§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§8r§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§<!5§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§%"7§ = param7;
         var _loc12_:Number = this.§8r§ + this.§%"7§ * this.§<!5§;
         this.§'!E§ = _loc12_ - this.§%"7§ * b2PulleyJoint.§0_§;
         this.§!!'§ = (_loc12_ - b2PulleyJoint.§0_§) / this.§%"7§;
      }
   }
}
