package §"G§
{
   import §&!Y§.b2Body;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §8!<§:b2Vec2;
      
      public var §6Y§:b2Vec2;
      
      public var §!d§:b2Vec2;
      
      public var §;!9§:b2Vec2;
      
      public var §'!t§:Number;
      
      public var §;!"§:Number;
      
      public var §%O§:Number;
      
      public var §&!G§:Number;
      
      public var §'E§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§8!<§ = new b2Vec2();
         this.§6Y§ = new b2Vec2();
         this.§!d§ = new b2Vec2();
         this.§;!9§ = new b2Vec2();
         super();
         type = b2Joint.§9r§;
         this.§8!<§.Set(-1,1);
         this.§6Y§.Set(1,1);
         this.§!d§.Set(-1,0);
         this.§;!9§.Set(1,0);
         this.§'!t§ = 0;
         this.§;!"§ = 0;
         this.§%O§ = 0;
         this.§&!G§ = 0;
         this.§'E§ = 1;
         collideConnected = true;
      }
      
      public function §,!9§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §4"?§ = param1;
         §+H§ = param2;
         this.§8!<§.SetV(param3);
         this.§6Y§.SetV(param4);
         this.§!d§ = §4"?§.GetLocalPoint(param5);
         this.§;!9§ = §+H§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§'!t§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§%O§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§'E§ = param7;
         var _loc12_:Number = this.§'!t§ + this.§'E§ * this.§%O§;
         this.§;!"§ = _loc12_ - this.§'E§ * b2PulleyJoint.§&g§;
         this.§&!G§ = (_loc12_ - b2PulleyJoint.§&g§) / this.§'E§;
      }
   }
}
