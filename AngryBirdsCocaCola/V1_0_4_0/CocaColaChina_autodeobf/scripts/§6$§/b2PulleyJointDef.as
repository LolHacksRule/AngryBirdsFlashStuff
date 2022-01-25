package §6$§
{
   import §&!L§.b2Vec2;
   import §3f§.b2Body;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §'!9§:b2Vec2;
      
      public var §7!L§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §]!P§:b2Vec2;
      
      public var §4Y§:Number;
      
      public var §#9§:Number;
      
      public var §1Z§:Number;
      
      public var §'t§:Number;
      
      public var §?!@§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§'!9§ = new b2Vec2();
         this.§7!L§ = new b2Vec2();
         this.§8!Z§ = new b2Vec2();
         this.§]!P§ = new b2Vec2();
         super();
         type = b2Joint.§[!`§;
         this.§'!9§.Set(-1,1);
         this.§7!L§.Set(1,1);
         this.§8!Z§.Set(-1,0);
         this.§]!P§.Set(1,0);
         this.§4Y§ = 0;
         this.§#9§ = 0;
         this.§1Z§ = 0;
         this.§'t§ = 0;
         this.§?!@§ = 1;
         collideConnected = true;
      }
      
      public function §1!5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §?!!§ = param1;
         §`!6§ = param2;
         this.§'!9§.SetV(param3);
         this.§7!L§.SetV(param4);
         this.§8!Z§ = §?!!§.GetLocalPoint(param5);
         this.§]!P§ = §`!6§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§4Y§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§1Z§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§?!@§ = param7;
         var _loc12_:Number = this.§4Y§ + this.§?!@§ * this.§1Z§;
         this.§#9§ = _loc12_ - this.§?!@§ * b2PulleyJoint.§3c§;
         this.§'t§ = (_loc12_ - b2PulleyJoint.§3c§) / this.§?!@§;
      }
   }
}
