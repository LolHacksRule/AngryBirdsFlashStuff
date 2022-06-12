package §!t§
{
   import §8,§.b2internal;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §8!W§:b2Vec2;
      
      public var §?s§:b2Vec2;
      
      public var § ;§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §4!6§:Number;
      
      public var §!!2§:Number;
      
      public var §5!O§:Number;
      
      public var §0$§:Number;
      
      public var §&!s§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§8!W§ = new b2Vec2();
         this.§?s§ = new b2Vec2();
         this.§ ;§ = new b2Vec2();
         this.§8!Z§ = new b2Vec2();
         super();
         type = b2Joint.§=!>§;
         this.§8!W§.Set(-1,1);
         this.§?s§.Set(1,1);
         this.§ ;§.Set(-1,0);
         this.§8!Z§.Set(1,0);
         this.§4!6§ = 0;
         this.§!!2§ = 0;
         this.§5!O§ = 0;
         this.§0$§ = 0;
         this.§&!s§ = 1;
         collideConnected = true;
      }
      
      public function §`!&§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §["%§ = param1;
         §`!<§ = param2;
         this.§8!W§.SetV(param3);
         this.§?s§.SetV(param4);
         this.§ ;§ = §["%§.GetLocalPoint(param5);
         this.§8!Z§ = §`!<§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§4!6§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§5!O§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§&!s§ = param7;
         var _loc12_:Number = this.§4!6§ + this.§&!s§ * this.§5!O§;
         this.§!!2§ = _loc12_ - this.§&!s§ * b2PulleyJoint.§2e§;
         this.§0$§ = (_loc12_ - b2PulleyJoint.§2e§) / this.§&!s§;
      }
   }
}
