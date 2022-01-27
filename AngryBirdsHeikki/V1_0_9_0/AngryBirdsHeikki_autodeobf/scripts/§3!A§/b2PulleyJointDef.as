package §3!A§
{
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §&F§:b2Vec2;
      
      public var §7b§:b2Vec2;
      
      public var §?&§:b2Vec2;
      
      public var §4t§:b2Vec2;
      
      public var §1!H§:Number;
      
      public var §'!Z§:Number;
      
      public var §;X§:Number;
      
      public var §#h§:Number;
      
      public var §1!K§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§&F§ = new b2Vec2();
         this.§7b§ = new b2Vec2();
         this.§?&§ = new b2Vec2();
         this.§4t§ = new b2Vec2();
         super();
         type = b2Joint.§=q§;
         this.§&F§.Set(-1,1);
         this.§7b§.Set(1,1);
         this.§?&§.Set(-1,0);
         this.§4t§.Set(1,0);
         this.§1!H§ = 0;
         this.§'!Z§ = 0;
         this.§;X§ = 0;
         this.§#h§ = 0;
         this.§1!K§ = 1;
         collideConnected = true;
      }
      
      public function §8_§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §[!N§ = param1;
         §0!'§ = param2;
         this.§&F§.SetV(param3);
         this.§7b§.SetV(param4);
         this.§?&§ = §[!N§.GetLocalPoint(param5);
         this.§4t§ = §0!'§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§1!H§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§;X§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§1!K§ = param7;
         var _loc12_:Number = this.§1!H§ + this.§1!K§ * this.§;X§;
         this.§'!Z§ = _loc12_ - this.§1!K§ * b2PulleyJoint.§3_§;
         this.§#h§ = (_loc12_ - b2PulleyJoint.§3_§) / this.§1!K§;
      }
   }
}
