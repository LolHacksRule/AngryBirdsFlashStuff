package §7!3§
{
   import §+d§.b2Body;
   import §6%§.b2internal;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §5!Y§:b2Vec2;
      
      public var §3!B§:b2Vec2;
      
      public var § 3§:b2Vec2;
      
      public var §&!-§:b2Vec2;
      
      public var §@d§:Number;
      
      public var §=2§:Number;
      
      public var §>6§:Number;
      
      public var §2!D§:Number;
      
      public var §+Z§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§5!Y§ = new b2Vec2();
         this.§3!B§ = new b2Vec2();
         this.§ 3§ = new b2Vec2();
         this.§&!-§ = new b2Vec2();
         super();
         type = b2Joint.§';§;
         this.§5!Y§.Set(-1,1);
         this.§3!B§.Set(1,1);
         this.§ 3§.Set(-1,0);
         this.§&!-§.Set(1,0);
         this.§@d§ = 0;
         this.§=2§ = 0;
         this.§>6§ = 0;
         this.§2!D§ = 0;
         this.§+Z§ = 1;
         collideConnected = true;
      }
      
      public function §9!M§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §1!V§ = param1;
         §;!?§ = param2;
         this.§5!Y§.SetV(param3);
         this.§3!B§.SetV(param4);
         this.§ 3§ = §1!V§.GetLocalPoint(param5);
         this.§&!-§ = §;!?§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§@d§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§>6§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§+Z§ = param7;
         var _loc12_:Number = this.§@d§ + this.§+Z§ * this.§>6§;
         this.§=2§ = _loc12_ - this.§+Z§ * b2PulleyJoint.§;'§;
         this.§2!D§ = (_loc12_ - b2PulleyJoint.§;'§) / this.§+Z§;
      }
   }
}
