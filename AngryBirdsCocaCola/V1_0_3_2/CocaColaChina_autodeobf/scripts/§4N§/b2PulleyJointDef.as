package §4N§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §4!1§:b2Vec2;
      
      public var §8`§:b2Vec2;
      
      public var §7z§:b2Vec2;
      
      public var §#t§:b2Vec2;
      
      public var §%J§:Number;
      
      public var §>3§:Number;
      
      public var §?I§:Number;
      
      public var §5A§:Number;
      
      public var §&!^§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§4!1§ = new b2Vec2();
         this.§8`§ = new b2Vec2();
         this.§7z§ = new b2Vec2();
         this.§#t§ = new b2Vec2();
         super();
         type = b2Joint.§2r§;
         this.§4!1§.Set(-1,1);
         this.§8`§.Set(1,1);
         this.§7z§.Set(-1,0);
         this.§#t§.Set(1,0);
         this.§%J§ = 0;
         this.§>3§ = 0;
         this.§?I§ = 0;
         this.§5A§ = 0;
         this.§&!^§ = 1;
         collideConnected = true;
      }
      
      public function §4$§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §]!M§ = param1;
         §'!Q§ = param2;
         this.§4!1§.SetV(param3);
         this.§8`§.SetV(param4);
         this.§7z§ = §]!M§.GetLocalPoint(param5);
         this.§#t§ = §'!Q§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§%J§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§?I§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§&!^§ = param7;
         var _loc12_:Number = this.§%J§ + this.§&!^§ * this.§?I§;
         this.§>3§ = _loc12_ - this.§&!^§ * b2PulleyJoint.§9_§;
         this.§5A§ = (_loc12_ - b2PulleyJoint.§9_§) / this.§&!^§;
      }
   }
}
