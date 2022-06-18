package §7C§
{
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §7!S§:b2Vec2;
      
      public var §%!6§:b2Vec2;
      
      public var §,!K§:b2Vec2;
      
      public var §[!5§:b2Vec2;
      
      public var §=%§:Number;
      
      public var §%u§:Number;
      
      public var §%![§:Number;
      
      public var §8J§:Number;
      
      public var §5!;§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§7!S§ = new b2Vec2();
         this.§%!6§ = new b2Vec2();
         this.§,!K§ = new b2Vec2();
         this.§[!5§ = new b2Vec2();
         super();
         type = b2Joint.§6!0§;
         this.§7!S§.Set(-1,1);
         this.§%!6§.Set(1,1);
         this.§,!K§.Set(-1,0);
         this.§[!5§.Set(1,0);
         this.§=%§ = 0;
         this.§%u§ = 0;
         this.§%![§ = 0;
         this.§8J§ = 0;
         this.§5!;§ = 1;
         collideConnected = true;
      }
      
      public function §1U§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §;!L§ = param1;
         §0!U§ = param2;
         this.§7!S§.SetV(param3);
         this.§%!6§.SetV(param4);
         this.§,!K§ = §;!L§.GetLocalPoint(param5);
         this.§[!5§ = §0!U§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§=%§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§%![§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§5!;§ = param7;
         var _loc12_:Number = this.§=%§ + this.§5!;§ * this.§%![§;
         this.§%u§ = _loc12_ - this.§5!;§ * b2PulleyJoint.§-!7§;
         this.§8J§ = (_loc12_ - b2PulleyJoint.§-!7§) / this.§5!;§;
      }
   }
}
