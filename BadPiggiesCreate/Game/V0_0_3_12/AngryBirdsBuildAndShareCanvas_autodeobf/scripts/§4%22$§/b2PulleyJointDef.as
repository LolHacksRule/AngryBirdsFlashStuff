package §4"$§
{
   import §&!M§.b2Body;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §4l§:b2Vec2;
      
      public var §;#§:b2Vec2;
      
      public var § 3§:b2Vec2;
      
      public var § '§:b2Vec2;
      
      public var §3R§:Number;
      
      public var §"!Z§:Number;
      
      public var §4Y§:Number;
      
      public var §5!U§:Number;
      
      public var §`!!§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§4l§ = new b2Vec2();
         this.§;#§ = new b2Vec2();
         this.§ 3§ = new b2Vec2();
         this.§ '§ = new b2Vec2();
         super();
         type = b2Joint.§'G§;
         this.§4l§.Set(-1,1);
         this.§;#§.Set(1,1);
         this.§ 3§.Set(-1,0);
         this.§ '§.Set(1,0);
         this.§3R§ = 0;
         this.§"!Z§ = 0;
         this.§4Y§ = 0;
         this.§5!U§ = 0;
         this.§`!!§ = 1;
         collideConnected = true;
      }
      
      public function §[z§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §>"$§ = param1;
         §%"1§ = param2;
         this.§4l§.SetV(param3);
         this.§;#§.SetV(param4);
         this.§ 3§ = §>"$§.GetLocalPoint(param5);
         this.§ '§ = §%"1§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§3R§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§4Y§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§`!!§ = param7;
         var _loc12_:Number = this.§3R§ + this.§`!!§ * this.§4Y§;
         this.§"!Z§ = _loc12_ - this.§`!!§ * b2PulleyJoint.§4!<§;
         this.§5!U§ = (_loc12_ - b2PulleyJoint.§4!<§) / this.§`!!§;
      }
   }
}
