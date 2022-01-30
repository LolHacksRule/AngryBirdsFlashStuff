package §>H§
{
   import § !%§.b2internal;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var § "1§:b2Vec2;
      
      public var §,"3§:b2Vec2;
      
      public var §`!>§:b2Vec2;
      
      public var §0l§:b2Vec2;
      
      public var §^!w§:Number;
      
      public var §<b§:Number;
      
      public var §8!T§:Number;
      
      public var §6e§:Number;
      
      public var §-&§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§ "1§ = new b2Vec2();
         this.§,"3§ = new b2Vec2();
         this.§`!>§ = new b2Vec2();
         this.§0l§ = new b2Vec2();
         super();
         type = b2Joint.§?Q§;
         this.§ "1§.Set(-1,1);
         this.§,"3§.Set(1,1);
         this.§`!>§.Set(-1,0);
         this.§0l§.Set(1,0);
         this.§^!w§ = 0;
         this.§<b§ = 0;
         this.§8!T§ = 0;
         this.§6e§ = 0;
         this.§-&§ = 1;
         collideConnected = true;
      }
      
      public function §2f§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §>q§ = param1;
         §6!,§ = param2;
         this.§ "1§.SetV(param3);
         this.§,"3§.SetV(param4);
         this.§`!>§ = §>q§.GetLocalPoint(param5);
         this.§0l§ = §6!,§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§^!w§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§8!T§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§-&§ = param7;
         var _loc12_:Number = this.§^!w§ + this.§-&§ * this.§8!T§;
         this.§<b§ = _loc12_ - this.§-&§ * b2PulleyJoint.§5!9§;
         this.§6e§ = (_loc12_ - b2PulleyJoint.§5!9§) / this.§-&§;
      }
   }
}
