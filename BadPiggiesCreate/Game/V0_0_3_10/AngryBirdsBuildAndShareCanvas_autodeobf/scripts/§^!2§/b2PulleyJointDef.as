package §^!2§
{
   import §!S§.b2internal;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §"y§:b2Vec2;
      
      public var §%"1§:b2Vec2;
      
      public var §9"%§:b2Vec2;
      
      public var §^j§:b2Vec2;
      
      public var §^A§:Number;
      
      public var §>#§:Number;
      
      public var §2!x§:Number;
      
      public var §!!8§:Number;
      
      public var §%b§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§"y§ = new b2Vec2();
         this.§%"1§ = new b2Vec2();
         this.§9"%§ = new b2Vec2();
         this.§^j§ = new b2Vec2();
         super();
         type = b2Joint.§0!$§;
         this.§"y§.Set(-1,1);
         this.§%"1§.Set(1,1);
         this.§9"%§.Set(-1,0);
         this.§^j§.Set(1,0);
         this.§^A§ = 0;
         this.§>#§ = 0;
         this.§2!x§ = 0;
         this.§!!8§ = 0;
         this.§%b§ = 1;
         collideConnected = true;
      }
      
      public function §6"8§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §`!z§ = param1;
         §#!3§ = param2;
         this.§"y§.SetV(param3);
         this.§%"1§.SetV(param4);
         this.§9"%§ = §`!z§.GetLocalPoint(param5);
         this.§^j§ = §#!3§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§^A§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§2!x§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§%b§ = param7;
         var _loc12_:Number = this.§^A§ + this.§%b§ * this.§2!x§;
         this.§>#§ = _loc12_ - this.§%b§ * b2PulleyJoint.§&!L§;
         this.§!!8§ = (_loc12_ - b2PulleyJoint.§&!L§) / this.§%b§;
      }
   }
}
