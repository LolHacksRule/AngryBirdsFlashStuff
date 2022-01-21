package §!4§
{
   import §&x§.b2Body;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §7!=§:b2Vec2;
      
      public var §!!Q§:b2Vec2;
      
      public var §3_§:b2Vec2;
      
      public var §-<§:b2Vec2;
      
      public var §!X§:Number;
      
      public var §+0§:Number;
      
      public var §2!'§:Number;
      
      public var §,!I§:Number;
      
      public var §^C§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§7!=§ = new b2Vec2();
         this.§!!Q§ = new b2Vec2();
         this.§3_§ = new b2Vec2();
         this.§-<§ = new b2Vec2();
         super();
         type = b2Joint.§[!a§;
         this.§7!=§.Set(-1,1);
         this.§!!Q§.Set(1,1);
         this.§3_§.Set(-1,0);
         this.§-<§.Set(1,0);
         this.§!X§ = 0;
         this.§+0§ = 0;
         this.§2!'§ = 0;
         this.§,!I§ = 0;
         this.§^C§ = 1;
         collideConnected = true;
      }
      
      public function §,!p§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §@!F§ = param1;
         §9!T§ = param2;
         this.§7!=§.SetV(param3);
         this.§!!Q§.SetV(param4);
         this.§3_§ = §@!F§.GetLocalPoint(param5);
         this.§-<§ = §9!T§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§!X§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§2!'§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§^C§ = param7;
         var _loc12_:Number = this.§!X§ + this.§^C§ * this.§2!'§;
         this.§+0§ = _loc12_ - this.§^C§ * b2PulleyJoint.§"F§;
         this.§,!I§ = (_loc12_ - b2PulleyJoint.§"F§) / this.§^C§;
      }
   }
}
