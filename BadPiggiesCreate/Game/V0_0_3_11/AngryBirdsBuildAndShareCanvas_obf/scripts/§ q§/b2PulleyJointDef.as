package § q§
{
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §;Y§:b2Vec2;
      
      public var §'!y§:b2Vec2;
      
      public var §[!L§:b2Vec2;
      
      public var §8!^§:b2Vec2;
      
      public var §@!+§:Number;
      
      public var §2!X§:Number;
      
      public var §""%§:Number;
      
      public var §^!v§:Number;
      
      public var §84§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§;Y§ = new b2Vec2();
         this.§'!y§ = new b2Vec2();
         this.§[!L§ = new b2Vec2();
         this.§8!^§ = new b2Vec2();
         super();
         type = b2Joint.§@!l§;
         this.§;Y§.Set(-1,1);
         this.§'!y§.Set(1,1);
         this.§[!L§.Set(-1,0);
         this.§8!^§.Set(1,0);
         this.§@!+§ = 0;
         this.§2!X§ = 0;
         this.§""%§ = 0;
         this.§^!v§ = 0;
         this.§84§ = 1;
         collideConnected = true;
      }
      
      public function §5$§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §@]§ = param1;
         §3@§ = param2;
         this.§;Y§.SetV(param3);
         this.§'!y§.SetV(param4);
         this.§[!L§ = §@]§.GetLocalPoint(param5);
         this.§8!^§ = §3@§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§@!+§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§""%§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§84§ = param7;
         var _loc12_:Number = this.§@!+§ + this.§84§ * this.§""%§;
         this.§2!X§ = _loc12_ - this.§84§ * b2PulleyJoint.§&C§;
         this.§^!v§ = (_loc12_ - b2PulleyJoint.§&C§) / this.§84§;
      }
   }
}
