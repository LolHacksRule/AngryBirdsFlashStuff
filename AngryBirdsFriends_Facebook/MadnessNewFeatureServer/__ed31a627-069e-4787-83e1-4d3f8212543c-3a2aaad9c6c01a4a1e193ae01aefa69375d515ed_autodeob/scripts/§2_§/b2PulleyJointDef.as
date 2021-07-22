package §2_§
{
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §1!r§:b2Vec2;
      
      public var §="k§:b2Vec2;
      
      public var §0$&§:b2Vec2;
      
      public var §=#I§:b2Vec2;
      
      public var § #o§:Number;
      
      public var §^#A§:Number;
      
      public var § p§:Number;
      
      public var §6#8§:Number;
      
      public var §7"$§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§1!r§ = new b2Vec2();
         this.§="k§ = new b2Vec2();
         this.§0$&§ = new b2Vec2();
         this.§=#I§ = new b2Vec2();
         super();
         type = b2Joint.§`"U§;
         this.§1!r§.Set(-1,1);
         this.§="k§.Set(1,1);
         this.§0$&§.Set(-1,0);
         this.§=#I§.Set(1,0);
         this.§ #o§ = 0;
         this.§^#A§ = 0;
         this.§ p§ = 0;
         this.§6#8§ = 0;
         this.§7"$§ = 1;
         collideConnected = true;
      }
      
      public function §1!W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §;#X§ = param1;
         §`7§ = param2;
         this.§1!r§.SetV(param3);
         this.§="k§.SetV(param4);
         this.§0$&§ = §;#X§.GetLocalPoint(param5);
         this.§=#I§ = §`7§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§ #o§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§ p§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§7"$§ = param7;
         var _loc12_:Number = this.§ #o§ + this.§7"$§ * this.§ p§;
         this.§^#A§ = _loc12_ - this.§7"$§ * b2PulleyJoint.§5!U§;
         this.§6#8§ = (_loc12_ - b2PulleyJoint.§5!U§) / this.§7"$§;
      }
   }
}
