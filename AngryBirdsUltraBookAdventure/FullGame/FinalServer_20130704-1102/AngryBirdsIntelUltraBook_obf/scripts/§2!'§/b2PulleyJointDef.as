package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §^!s§:b2Vec2;
      
      public var §%!0§:b2Vec2;
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var §!!H§:Number;
      
      public var §4!J§:Number;
      
      public var §"M§:Number;
      
      public var §&!9§:Number;
      
      public var §?!s§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§^!s§ = new b2Vec2();
         this.§%!0§ = new b2Vec2();
         this.§'G§ = new b2Vec2();
         this.§true§ = new b2Vec2();
         super();
         type = b2Joint.§3!+§;
         this.§^!s§.Set(-1,1);
         this.§%!0§.Set(1,1);
         this.§'G§.Set(-1,0);
         this.§true§.Set(1,0);
         this.§!!H§ = 0;
         this.§4!J§ = 0;
         this.§"M§ = 0;
         this.§&!9§ = 0;
         this.§?!s§ = 1;
         collideConnected = true;
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §19§ = param1;
         §"@§ = param2;
         this.§^!s§.SetV(param3);
         this.§%!0§.SetV(param4);
         this.§'G§ = §19§.GetLocalPoint(param5);
         this.§true§ = §"@§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§!!H§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§"M§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§?!s§ = param7;
         var _loc12_:Number = this.§!!H§ + this.§?!s§ * this.§"M§;
         this.§4!J§ = _loc12_ - this.§?!s§ * b2PulleyJoint.§=!5§;
         this.§&!9§ = (_loc12_ - b2PulleyJoint.§=!5§) / this.§?!s§;
      }
   }
}
