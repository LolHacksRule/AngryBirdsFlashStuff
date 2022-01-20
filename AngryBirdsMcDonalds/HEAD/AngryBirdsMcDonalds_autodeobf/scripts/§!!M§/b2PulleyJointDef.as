package §!!M§
{
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §!m§:b2Vec2;
      
      public var §2+§:b2Vec2;
      
      public var §5!E§:b2Vec2;
      
      public var §21§:b2Vec2;
      
      public var §!S§:Number;
      
      public var §function§:Number;
      
      public var §%!P§:Number;
      
      public var §"!M§:Number;
      
      public var §`!c§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§!m§ = new b2Vec2();
         this.§2+§ = new b2Vec2();
         this.§5!E§ = new b2Vec2();
         this.§21§ = new b2Vec2();
         super();
         type = b2Joint.§'!r§;
         this.§!m§.Set(-1,1);
         this.§2+§.Set(1,1);
         this.§5!E§.Set(-1,0);
         this.§21§.Set(1,0);
         this.§!S§ = 0;
         this.§function§ = 0;
         this.§%!P§ = 0;
         this.§"!M§ = 0;
         this.§`!c§ = 1;
         collideConnected = true;
      }
      
      public function §`!9§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §-i§ = param1;
         §0!F§ = param2;
         this.§!m§.SetV(param3);
         this.§2+§.SetV(param4);
         this.§5!E§ = §-i§.GetLocalPoint(param5);
         this.§21§ = §0!F§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§!S§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§%!P§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§`!c§ = param7;
         var _loc12_:Number = this.§!S§ + this.§`!c§ * this.§%!P§;
         this.§function§ = _loc12_ - this.§`!c§ * b2PulleyJoint.§%"§;
         this.§"!M§ = (_loc12_ - b2PulleyJoint.§%"§) / this.§`!c§;
      }
   }
}
