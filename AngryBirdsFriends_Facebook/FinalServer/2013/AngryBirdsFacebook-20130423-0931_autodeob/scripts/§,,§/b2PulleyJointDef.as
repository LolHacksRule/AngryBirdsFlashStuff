package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §#d§:b2Vec2;
      
      public var §8f§:b2Vec2;
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §'!<§:Number;
      
      public var §'"B§:Number;
      
      public var §"[§:Number;
      
      public var §-6§:Number;
      
      public var §#9§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§#d§ = new b2Vec2();
         this.§8f§ = new b2Vec2();
         this.§-!,§ = new b2Vec2();
         this.§["9§ = new b2Vec2();
         super();
         type = b2Joint.§3`§;
         this.§#d§.Set(-1,1);
         this.§8f§.Set(1,1);
         this.§-!,§.Set(-1,0);
         this.§["9§.Set(1,0);
         this.§'!<§ = 0;
         this.§'"B§ = 0;
         this.§"[§ = 0;
         this.§-6§ = 0;
         this.§#9§ = 1;
         collideConnected = true;
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §`y§ = param1;
         §8!7§ = param2;
         this.§#d§.SetV(param3);
         this.§8f§.SetV(param4);
         this.§-!,§ = §`y§.GetLocalPoint(param5);
         this.§["9§ = §8!7§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§'!<§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§"[§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§#9§ = param7;
         var _loc12_:Number = this.§'!<§ + this.§#9§ * this.§"[§;
         this.§'"B§ = _loc12_ - this.§#9§ * b2PulleyJoint.§%!A§;
         this.§-6§ = (_loc12_ - b2PulleyJoint.§%!A§) / this.§#9§;
      }
   }
}
