package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §+'§:b2Vec2;
      
      public var § !]§:b2Vec2;
      
      public var §#J§:b2Vec2;
      
      public var §7!A§:b2Vec2;
      
      public var §<!B§:Number;
      
      public var §5x§:Number;
      
      public var §7!u§:Number;
      
      public var §,!f§:Number;
      
      public var §3!@§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§+'§ = new b2Vec2();
         this.§ !]§ = new b2Vec2();
         this.§#J§ = new b2Vec2();
         this.§7!A§ = new b2Vec2();
         super();
         type = b2Joint.§+!+§;
         this.§+'§.Set(-1,1);
         this.§ !]§.Set(1,1);
         this.§#J§.Set(-1,0);
         this.§7!A§.Set(1,0);
         this.§<!B§ = 0;
         this.§5x§ = 0;
         this.§7!u§ = 0;
         this.§,!f§ = 0;
         this.§3!@§ = 1;
         collideConnected = true;
      }
      
      public function §3!,§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §%!T§ = param1;
         §,d§ = param2;
         this.§+'§.SetV(param3);
         this.§ !]§.SetV(param4);
         this.§#J§ = §%!T§.GetLocalPoint(param5);
         this.§7!A§ = §,d§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§<!B§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§7!u§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§3!@§ = param7;
         var _loc12_:Number = this.§<!B§ + this.§3!@§ * this.§7!u§;
         this.§5x§ = _loc12_ - this.§3!@§ * b2PulleyJoint.§0S§;
         this.§,!f§ = (_loc12_ - b2PulleyJoint.§0S§) / this.§3!@§;
      }
   }
}
