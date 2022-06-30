package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §%R§:b2Vec2;
      
      public var §>!M§:b2Vec2;
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §`1§:Number;
      
      public var §7!B§:Number;
      
      public var §,D§:Number;
      
      public var §-!]§:Number;
      
      public var §9K§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§%R§ = new b2Vec2();
         this.§>!M§ = new b2Vec2();
         this.§@b§ = new b2Vec2();
         this.§=i§ = new b2Vec2();
         super();
         type = b2Joint.§ h§;
         this.§%R§.Set(-1,1);
         this.§>!M§.Set(1,1);
         this.§@b§.Set(-1,0);
         this.§=i§.Set(1,0);
         this.§`1§ = 0;
         this.§7!B§ = 0;
         this.§,D§ = 0;
         this.§-!]§ = 0;
         this.§9K§ = 1;
         collideConnected = true;
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §&]§ = param1;
         §+0§ = param2;
         this.§%R§.SetV(param3);
         this.§>!M§.SetV(param4);
         this.§@b§ = §&]§.GetLocalPoint(param5);
         this.§=i§ = §+0§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§`1§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§,D§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§9K§ = param7;
         var _loc12_:Number = this.§`1§ + this.§9K§ * this.§,D§;
         this.§7!B§ = _loc12_ - this.§9K§ * b2PulleyJoint.§%a§;
         this.§-!]§ = (_loc12_ - b2PulleyJoint.§%a§) / this.§9K§;
      }
   }
}
