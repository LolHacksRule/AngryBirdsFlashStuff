package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §7v§:b2Vec2;
      
      public var §5!F§:b2Vec2;
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §]!g§:Number;
      
      public var §1$§:Number;
      
      public var §?u§:Number;
      
      public var §>§:Number;
      
      public var §"b§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§7v§ = new b2Vec2();
         this.§5!F§ = new b2Vec2();
         this.§'!<§ = new b2Vec2();
         this.§1!0§ = new b2Vec2();
         super();
         type = b2Joint.§[!$§;
         this.§7v§.Set(-1,1);
         this.§5!F§.Set(1,1);
         this.§'!<§.Set(-1,0);
         this.§1!0§.Set(1,0);
         this.§]!g§ = 0;
         this.§1$§ = 0;
         this.§?u§ = 0;
         this.§>§ = 0;
         this.§"b§ = 1;
         collideConnected = true;
      }
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §7!K§ = param1;
         §'P§ = param2;
         this.§7v§.SetV(param3);
         this.§5!F§.SetV(param4);
         this.§'!<§ = §7!K§.GetLocalPoint(param5);
         this.§1!0§ = §'P§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§]!g§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§?u§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§"b§ = param7;
         var _loc12_:Number = this.§]!g§ + this.§"b§ * this.§?u§;
         this.§1$§ = _loc12_ - this.§"b§ * b2PulleyJoint.§7!C§;
         this.§>§ = (_loc12_ - b2PulleyJoint.§7!C§) / this.§"b§;
      }
   }
}
