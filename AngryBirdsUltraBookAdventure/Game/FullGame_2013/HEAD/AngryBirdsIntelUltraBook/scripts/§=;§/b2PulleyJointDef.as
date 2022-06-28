package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §]2§:b2Vec2;
      
      public var §>f§:b2Vec2;
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §?j§:Number;
      
      public var §?!G§:Number;
      
      public var §[8§:Number;
      
      public var §=R§:Number;
      
      public var §@!4§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§]2§ = new b2Vec2();
         this.§>f§ = new b2Vec2();
         this.§>!g§ = new b2Vec2();
         this.§&1§ = new b2Vec2();
         super();
         type = b2Joint.§9!c§;
         this.§]2§.Set(-1,1);
         this.§>f§.Set(1,1);
         this.§>!g§.Set(-1,0);
         this.§&1§.Set(1,0);
         this.§?j§ = 0;
         this.§?!G§ = 0;
         this.§[8§ = 0;
         this.§=R§ = 0;
         this.§@!4§ = 1;
         collideConnected = true;
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §7l§ = param1;
         §<H§ = param2;
         this.§]2§.SetV(param3);
         this.§>f§.SetV(param4);
         this.§>!g§ = §7l§.GetLocalPoint(param5);
         this.§&1§ = §<H§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§?j§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§[8§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§@!4§ = param7;
         var _loc12_:Number = this.§?j§ + this.§@!4§ * this.§[8§;
         this.§?!G§ = _loc12_ - this.§@!4§ * b2PulleyJoint.§`0§;
         this.§=R§ = (_loc12_ - b2PulleyJoint.§`0§) / this.§@!4§;
      }
   }
}
