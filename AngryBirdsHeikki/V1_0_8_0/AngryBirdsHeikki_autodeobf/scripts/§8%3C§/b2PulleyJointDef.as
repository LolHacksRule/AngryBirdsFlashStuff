package §8<§
{
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §?!§:b2Vec2;
      
      public var §&-§:b2Vec2;
      
      public var §@!T§:b2Vec2;
      
      public var §,!;§:b2Vec2;
      
      public var §,8§:Number;
      
      public var §#&§:Number;
      
      public var §6!H§:Number;
      
      public var §"Z§:Number;
      
      public var §9!Y§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§?!§ = new b2Vec2();
         this.§&-§ = new b2Vec2();
         this.§@!T§ = new b2Vec2();
         this.§,!;§ = new b2Vec2();
         super();
         type = b2Joint.§@e§;
         this.§?!§.Set(-1,1);
         this.§&-§.Set(1,1);
         this.§@!T§.Set(-1,0);
         this.§,!;§.Set(1,0);
         this.§,8§ = 0;
         this.§#&§ = 0;
         this.§6!H§ = 0;
         this.§"Z§ = 0;
         this.§9!Y§ = 1;
         collideConnected = true;
      }
      
      public function §8!6§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §?$§ = param1;
         §%!§ = param2;
         this.§?!§.SetV(param3);
         this.§&-§.SetV(param4);
         this.§@!T§ = §?$§.GetLocalPoint(param5);
         this.§,!;§ = §%!§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§,8§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§6!H§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§9!Y§ = param7;
         var _loc12_:Number = this.§,8§ + this.§9!Y§ * this.§6!H§;
         this.§#&§ = _loc12_ - this.§9!Y§ * b2PulleyJoint.§1G§;
         this.§"Z§ = (_loc12_ - b2PulleyJoint.§1G§) / this.§9!Y§;
      }
   }
}
