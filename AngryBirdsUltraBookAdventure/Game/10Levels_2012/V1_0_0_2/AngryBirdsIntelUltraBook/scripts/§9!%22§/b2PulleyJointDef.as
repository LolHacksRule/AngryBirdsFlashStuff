package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §^X§:b2Vec2;
      
      public var §#!,§:b2Vec2;
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §1!C§:Number;
      
      public var §@2§:Number;
      
      public var §-Q§:Number;
      
      public var §?! §:Number;
      
      public var §8B§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§^X§ = new b2Vec2();
         this.§#!,§ = new b2Vec2();
         this.§<?§ = new b2Vec2();
         this.§%!e§ = new b2Vec2();
         super();
         type = b2Joint.§+!L§;
         this.§^X§.Set(-1,1);
         this.§#!,§.Set(1,1);
         this.§<?§.Set(-1,0);
         this.§%!e§.Set(1,0);
         this.§1!C§ = 0;
         this.§@2§ = 0;
         this.§-Q§ = 0;
         this.§?! § = 0;
         this.§8B§ = 1;
         collideConnected = true;
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §3x§ = param1;
         §8P§ = param2;
         this.§^X§.SetV(param3);
         this.§#!,§.SetV(param4);
         this.§<?§ = §3x§.GetLocalPoint(param5);
         this.§%!e§ = §8P§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§1!C§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§-Q§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§8B§ = param7;
         var _loc12_:Number = this.§1!C§ + this.§8B§ * this.§-Q§;
         this.§@2§ = _loc12_ - this.§8B§ * b2PulleyJoint.§3!i§;
         this.§?! § = (_loc12_ - b2PulleyJoint.§3!i§) / this.§8B§;
      }
   }
}
