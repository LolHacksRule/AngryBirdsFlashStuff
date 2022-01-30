package §;!r§
{
   import §,v§.b2Body;
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §5!x§:b2Vec2;
      
      public var §^!7§:b2Vec2;
      
      public var §5S§:b2Vec2;
      
      public var §-!9§:b2Vec2;
      
      public var §4g§:Number;
      
      public var §3D§:Number;
      
      public var §!j§:Number;
      
      public var §?!8§:Number;
      
      public var §#7§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§5!x§ = new b2Vec2();
         this.§^!7§ = new b2Vec2();
         this.§5S§ = new b2Vec2();
         this.§-!9§ = new b2Vec2();
         super();
         type = b2Joint.§=S§;
         this.§5!x§.Set(-1,1);
         this.§^!7§.Set(1,1);
         this.§5S§.Set(-1,0);
         this.§-!9§.Set(1,0);
         this.§4g§ = 0;
         this.§3D§ = 0;
         this.§!j§ = 0;
         this.§?!8§ = 0;
         this.§#7§ = 1;
         collideConnected = true;
      }
      
      public function §"!o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §@!`§ = param1;
         §@$§ = param2;
         this.§5!x§.SetV(param3);
         this.§^!7§.SetV(param4);
         this.§5S§ = §@!`§.GetLocalPoint(param5);
         this.§-!9§ = §@$§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§4g§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§!j§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§#7§ = param7;
         var _loc12_:Number = this.§4g§ + this.§#7§ * this.§!j§;
         this.§3D§ = _loc12_ - this.§#7§ * b2PulleyJoint.§,!u§;
         this.§?!8§ = (_loc12_ - b2PulleyJoint.§,!u§) / this.§#7§;
      }
   }
}
