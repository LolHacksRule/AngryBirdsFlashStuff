package §#!K§
{
   import §-0§.b2Body;
   import §@g§.b2internal;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §^;§:b2Vec2;
      
      public var §+!M§:b2Vec2;
      
      public var §0'§:b2Vec2;
      
      public var §;!b§:b2Vec2;
      
      public var §>2§:Number;
      
      public var §40§:Number;
      
      public var §<2§:Number;
      
      public var §`8§:Number;
      
      public var §7s§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§^;§ = new b2Vec2();
         this.§+!M§ = new b2Vec2();
         this.§0'§ = new b2Vec2();
         this.§;!b§ = new b2Vec2();
         super();
         type = b2Joint.§@_§;
         this.§^;§.Set(-1,1);
         this.§+!M§.Set(1,1);
         this.§0'§.Set(-1,0);
         this.§;!b§.Set(1,0);
         this.§>2§ = 0;
         this.§40§ = 0;
         this.§<2§ = 0;
         this.§`8§ = 0;
         this.§7s§ = 1;
         collideConnected = true;
      }
      
      public function §08§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §>!k§ = param1;
         §<u§ = param2;
         this.§^;§.SetV(param3);
         this.§+!M§.SetV(param4);
         this.§0'§ = §>!k§.GetLocalPoint(param5);
         this.§;!b§ = §<u§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§>2§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§<2§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§7s§ = param7;
         var _loc12_:Number = this.§>2§ + this.§7s§ * this.§<2§;
         this.§40§ = _loc12_ - this.§7s§ * b2PulleyJoint.§7![§;
         this.§`8§ = (_loc12_ - b2PulleyJoint.§7![§) / this.§7s§;
      }
   }
}
