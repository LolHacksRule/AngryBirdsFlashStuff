package §3g§
{
   import §;]§.b2internal;
   import §=E§.b2Vec2;
   import §?!0§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §,_§:b2Vec2;
      
      public var §1r§:b2Vec2;
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §,Z§:Number;
      
      public var §+b§:Number;
      
      public var § f§:Number;
      
      public var §"D§:Number;
      
      public var §]7§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§,_§ = new b2Vec2();
         this.§1r§ = new b2Vec2();
         this.§4B§ = new b2Vec2();
         this.§ !Q§ = new b2Vec2();
         super();
         type = b2Joint.§+!2§;
         this.§,_§.Set(-1,1);
         this.§1r§.Set(1,1);
         this.§4B§.Set(-1,0);
         this.§ !Q§.Set(1,0);
         this.§,Z§ = 0;
         this.§+b§ = 0;
         this.§ f§ = 0;
         this.§"D§ = 0;
         this.§]7§ = 1;
         collideConnected = true;
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §<§ = param1;
         §,!M§ = param2;
         this.§,_§.SetV(param3);
         this.§1r§.SetV(param4);
         this.§4B§ = §<§.GetLocalPoint(param5);
         this.§ !Q§ = §,!M§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§,Z§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§ f§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§]7§ = param7;
         var _loc12_:Number = this.§,Z§ + this.§]7§ * this.§ f§;
         this.§+b§ = _loc12_ - this.§]7§ * b2PulleyJoint.§9$§;
         this.§"D§ = (_loc12_ - b2PulleyJoint.§9$§) / this.§]7§;
      }
   }
}
