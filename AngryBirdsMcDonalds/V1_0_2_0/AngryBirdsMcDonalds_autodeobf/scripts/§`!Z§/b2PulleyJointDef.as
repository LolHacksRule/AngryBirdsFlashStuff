package §`!Z§
{
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §]!j§:b2Vec2;
      
      public var §8!=§:b2Vec2;
      
      public var §<4§:b2Vec2;
      
      public var §2§:b2Vec2;
      
      public var §"o§:Number;
      
      public var §&!U§:Number;
      
      public var §`X§:Number;
      
      public var §`N§:Number;
      
      public var §5A§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§]!j§ = new b2Vec2();
         this.§8!=§ = new b2Vec2();
         this.§<4§ = new b2Vec2();
         this.§2§ = new b2Vec2();
         super();
         type = b2Joint.§#4§;
         this.§]!j§.Set(-1,1);
         this.§8!=§.Set(1,1);
         this.§<4§.Set(-1,0);
         this.§2§.Set(1,0);
         this.§"o§ = 0;
         this.§&!U§ = 0;
         this.§`X§ = 0;
         this.§`N§ = 0;
         this.§5A§ = 1;
         collideConnected = true;
      }
      
      public function §6!_§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §+!#§ = param1;
         §1!K§ = param2;
         this.§]!j§.SetV(param3);
         this.§8!=§.SetV(param4);
         this.§<4§ = §+!#§.GetLocalPoint(param5);
         this.§2§ = §1!K§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§"o§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§`X§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§5A§ = param7;
         var _loc12_:Number = this.§"o§ + this.§5A§ * this.§`X§;
         this.§&!U§ = _loc12_ - this.§5A§ * b2PulleyJoint.§2a§;
         this.§`N§ = (_loc12_ - b2PulleyJoint.§2a§) / this.§5A§;
      }
   }
}
