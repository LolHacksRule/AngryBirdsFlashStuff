package §5v§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §3#4§:b2Vec2;
      
      public var §+$$§:b2Vec2;
      
      public var §"#b§:b2Vec2;
      
      public var §[#b§:b2Vec2;
      
      public var §-#Z§:Number;
      
      public var §4#]§:Number;
      
      public var §,!f§:Number;
      
      public var §7$E§:Number;
      
      public var §>#K§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§3#4§ = new b2Vec2();
         this.§+$$§ = new b2Vec2();
         this.§"#b§ = new b2Vec2();
         this.§[#b§ = new b2Vec2();
         super();
         type = b2Joint.§5"J§;
         this.§3#4§.Set(-1,1);
         this.§+$$§.Set(1,1);
         this.§"#b§.Set(-1,0);
         this.§[#b§.Set(1,0);
         this.§-#Z§ = 0;
         this.§4#]§ = 0;
         this.§,!f§ = 0;
         this.§7$E§ = 0;
         this.§>#K§ = 1;
         collideConnected = true;
      }
      
      public function §80§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §,E§ = param1;
         §&$7§ = param2;
         this.§3#4§.SetV(param3);
         this.§+$$§.SetV(param4);
         this.§"#b§ = §,E§.GetLocalPoint(param5);
         this.§[#b§ = §&$7§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§-#Z§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§,!f§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§>#K§ = param7;
         var _loc12_:Number = this.§-#Z§ + this.§>#K§ * this.§,!f§;
         this.§4#]§ = _loc12_ - this.§>#K§ * b2PulleyJoint.§,#3§;
         this.§7$E§ = (_loc12_ - b2PulleyJoint.§,#3§) / this.§>#K§;
      }
   }
}
