package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §%!4§:b2Vec2;
      
      public var §3k§:b2Vec2;
      
      public var §8U§:b2Vec2;
      
      public var §#i§:b2Vec2;
      
      public var §^!W§:Number;
      
      public var §6%§:Number;
      
      public var §3!p§:Number;
      
      public var §8l§:Number;
      
      public var §8J§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§%!4§ = new b2Vec2();
         this.§3k§ = new b2Vec2();
         this.§8U§ = new b2Vec2();
         this.§#i§ = new b2Vec2();
         super();
         type = b2Joint.§-"3§;
         this.§%!4§.Set(-1,1);
         this.§3k§.Set(1,1);
         this.§8U§.Set(-1,0);
         this.§#i§.Set(1,0);
         this.§^!W§ = 0;
         this.§6%§ = 0;
         this.§3!p§ = 0;
         this.§8l§ = 0;
         this.§8J§ = 1;
         collideConnected = true;
      }
      
      public function §break§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §0f§ = param1;
         §>F§ = param2;
         this.§%!4§.SetV(param3);
         this.§3k§.SetV(param4);
         this.§8U§ = §0f§.GetLocalPoint(param5);
         this.§#i§ = §>F§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§^!W§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§3!p§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§8J§ = param7;
         var _loc12_:Number = this.§^!W§ + this.§8J§ * this.§3!p§;
         this.§6%§ = _loc12_ - this.§8J§ * b2PulleyJoint.§5C§;
         this.§8l§ = (_loc12_ - b2PulleyJoint.§5C§) / this.§8J§;
      }
   }
}
