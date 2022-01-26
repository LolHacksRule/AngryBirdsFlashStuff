package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §2!E§:b2Vec2;
      
      public var §-[§:b2Vec2;
      
      public var §`!X§:b2Vec2;
      
      public var §+!,§:b2Vec2;
      
      public var §97§:Number;
      
      public var §8!J§:Number;
      
      public var §=4§:Number;
      
      public var § W§:Number;
      
      public var §',§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§2!E§ = new b2Vec2();
         this.§-[§ = new b2Vec2();
         this.§`!X§ = new b2Vec2();
         this.§+!,§ = new b2Vec2();
         super();
         type = b2Joint.§-!A§;
         this.§2!E§.Set(-1,1);
         this.§-[§.Set(1,1);
         this.§`!X§.Set(-1,0);
         this.§+!,§.Set(1,0);
         this.§97§ = 0;
         this.§8!J§ = 0;
         this.§=4§ = 0;
         this.§ W§ = 0;
         this.§',§ = 1;
         collideConnected = true;
      }
      
      public function §;!W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §#1§ = param1;
         §"!<§ = param2;
         this.§2!E§.SetV(param3);
         this.§-[§.SetV(param4);
         this.§`!X§ = §#1§.GetLocalPoint(param5);
         this.§+!,§ = §"!<§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§97§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§=4§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§',§ = param7;
         var _loc12_:Number = this.§97§ + this.§',§ * this.§=4§;
         this.§8!J§ = _loc12_ - this.§',§ * b2PulleyJoint.§;Y§;
         this.§ W§ = (_loc12_ - b2PulleyJoint.§;Y§) / this.§',§;
      }
   }
}
