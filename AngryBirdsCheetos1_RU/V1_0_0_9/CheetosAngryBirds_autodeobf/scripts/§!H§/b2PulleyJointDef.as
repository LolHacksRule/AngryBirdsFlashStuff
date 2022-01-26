package §!H§
{
   import §!!B§.b2Body;
   import §;0§.b2internal;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §1'§:b2Vec2;
      
      public var §%!O§:b2Vec2;
      
      public var §7p§:b2Vec2;
      
      public var §"!C§:b2Vec2;
      
      public var §"t§:Number;
      
      public var §<!§:Number;
      
      public var §`r§:Number;
      
      public var §#d§:Number;
      
      public var §!X§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§1'§ = new b2Vec2();
         this.§%!O§ = new b2Vec2();
         this.§7p§ = new b2Vec2();
         this.§"!C§ = new b2Vec2();
         super();
         type = b2Joint.§1+§;
         this.§1'§.Set(-1,1);
         this.§%!O§.Set(1,1);
         this.§7p§.Set(-1,0);
         this.§"!C§.Set(1,0);
         this.§"t§ = 0;
         this.§<!§ = 0;
         this.§`r§ = 0;
         this.§#d§ = 0;
         this.§!X§ = 1;
         collideConnected = true;
      }
      
      public function §`!0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §1U§ = param1;
         §"=§ = param2;
         this.§1'§.SetV(param3);
         this.§%!O§.SetV(param4);
         this.§7p§ = §1U§.GetLocalPoint(param5);
         this.§"!C§ = §"=§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§"t§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§`r§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§!X§ = param7;
         var _loc12_:Number = this.§"t§ + this.§!X§ * this.§`r§;
         this.§<!§ = _loc12_ - this.§!X§ * b2PulleyJoint.§'N§;
         this.§#d§ = (_loc12_ - b2PulleyJoint.§'N§) / this.§!X§;
      }
   }
}
