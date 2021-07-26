package §!"b§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §""X§:b2Vec2;
      
      public var §&C§:b2Vec2;
      
      public var §,#D§:b2Vec2;
      
      public var §?#d§:b2Vec2;
      
      public var §3!Y§:Number;
      
      public var § L§:Number;
      
      public var §#X§:Number;
      
      public var §]";§:Number;
      
      public var §5#b§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§""X§ = new b2Vec2();
         this.§&C§ = new b2Vec2();
         this.§,#D§ = new b2Vec2();
         this.§?#d§ = new b2Vec2();
         super();
         type = b2Joint.§'%§;
         this.§""X§.Set(-1,1);
         this.§&C§.Set(1,1);
         this.§,#D§.Set(-1,0);
         this.§?#d§.Set(1,0);
         this.§3!Y§ = 0;
         this.§ L§ = 0;
         this.§#X§ = 0;
         this.§]";§ = 0;
         this.§5#b§ = 1;
         collideConnected = true;
      }
      
      public function §&N§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §9!Z§ = param1;
         §#!_§ = param2;
         this.§""X§.SetV(param3);
         this.§&C§.SetV(param4);
         this.§,#D§ = §9!Z§.GetLocalPoint(param5);
         this.§?#d§ = §#!_§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§3!Y§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§#X§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§5#b§ = param7;
         var _loc12_:Number = this.§3!Y§ + this.§5#b§ * this.§#X§;
         this.§ L§ = _loc12_ - this.§5#b§ * b2PulleyJoint.§9?§;
         this.§]";§ = (_loc12_ - b2PulleyJoint.§9?§) / this.§5#b§;
      }
   }
}
