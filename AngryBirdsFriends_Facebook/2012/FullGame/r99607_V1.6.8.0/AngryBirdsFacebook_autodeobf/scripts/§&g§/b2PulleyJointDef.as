package §&g§
{
   import § !k§.b2Body;
   import §!"8§.b2Vec2;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §^X§:b2Vec2;
      
      public var §[!5§:b2Vec2;
      
      public var §'!v§:b2Vec2;
      
      public var §?!m§:b2Vec2;
      
      public var §=!J§:Number;
      
      public var §"!K§:Number;
      
      public var §'"0§:Number;
      
      public var §3!X§:Number;
      
      public var §<!]§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§^X§ = new b2Vec2();
         this.§[!5§ = new b2Vec2();
         this.§'!v§ = new b2Vec2();
         this.§?!m§ = new b2Vec2();
         super();
         type = b2Joint.§[!h§;
         this.§^X§.Set(-1,1);
         this.§[!5§.Set(1,1);
         this.§'!v§.Set(-1,0);
         this.§?!m§.Set(1,0);
         this.§=!J§ = 0;
         this.§"!K§ = 0;
         this.§'"0§ = 0;
         this.§3!X§ = 0;
         this.§<!]§ = 1;
         collideConnected = true;
      }
      
      public function §&!j§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §3"$§ = param1;
         §?!A§ = param2;
         this.§^X§.SetV(param3);
         this.§[!5§.SetV(param4);
         this.§'!v§ = §3"$§.GetLocalPoint(param5);
         this.§?!m§ = §?!A§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§=!J§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§'"0§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§<!]§ = param7;
         var _loc12_:Number = this.§=!J§ + this.§<!]§ * this.§'"0§;
         this.§"!K§ = _loc12_ - this.§<!]§ * b2PulleyJoint.§8!k§;
         this.§3!X§ = (_loc12_ - b2PulleyJoint.§8!k§) / this.§<!]§;
      }
   }
}
