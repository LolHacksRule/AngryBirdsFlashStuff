package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §%S§:b2Vec2;
      
      public var §41§:b2Vec2;
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var §`Y§:Number;
      
      public var §"W§:Number;
      
      public var §>`§:Number;
      
      public var §?"0§:Number;
      
      public var §+"2§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§%S§ = new b2Vec2();
         this.§41§ = new b2Vec2();
         this.§3!&§ = new b2Vec2();
         this.§2!P§ = new b2Vec2();
         super();
         type = b2Joint.§-i§;
         this.§%S§.Set(-1,1);
         this.§41§.Set(1,1);
         this.§3!&§.Set(-1,0);
         this.§2!P§.Set(1,0);
         this.§`Y§ = 0;
         this.§"W§ = 0;
         this.§>`§ = 0;
         this.§?"0§ = 0;
         this.§+"2§ = 1;
         collideConnected = true;
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         § !T§ = param1;
         §import§ = param2;
         this.§%S§.SetV(param3);
         this.§41§.SetV(param4);
         this.§3!&§ = § !T§.GetLocalPoint(param5);
         this.§2!P§ = §import§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§`Y§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§>`§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§+"2§ = param7;
         var _loc12_:Number = this.§`Y§ + this.§+"2§ * this.§>`§;
         this.§"W§ = _loc12_ - this.§+"2§ * b2PulleyJoint.§!q§;
         this.§?"0§ = (_loc12_ - b2PulleyJoint.§!q§) / this.§+"2§;
      }
   }
}
