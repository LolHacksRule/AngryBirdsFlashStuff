package §?"#§
{
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §'o§:b2Vec2;
      
      public var §5";§:b2Vec2;
      
      public var §["%§:b2Vec2;
      
      public var §^7§:Number;
      
      public var §2`§:Number;
      
      public var §1!"§:Number;
      
      public var §;i§:Number;
      
      public var §8";§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§9!9§ = new b2Vec2();
         this.§'o§ = new b2Vec2();
         this.§5";§ = new b2Vec2();
         this.§["%§ = new b2Vec2();
         super();
         type = b2Joint.§1!I§;
         this.§9!9§.Set(-1,1);
         this.§'o§.Set(1,1);
         this.§5";§.Set(-1,0);
         this.§["%§.Set(1,0);
         this.§^7§ = 0;
         this.§2`§ = 0;
         this.§1!"§ = 0;
         this.§;i§ = 0;
         this.§8";§ = 1;
         collideConnected = true;
      }
      
      public function §'m§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §>!&§ = param1;
         §^!r§ = param2;
         this.§9!9§.SetV(param3);
         this.§'o§.SetV(param4);
         this.§5";§ = §>!&§.GetLocalPoint(param5);
         this.§["%§ = §^!r§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§^7§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§1!"§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§8";§ = param7;
         var _loc12_:Number = this.§^7§ + this.§8";§ * this.§1!"§;
         this.§2`§ = _loc12_ - this.§8";§ * b2PulleyJoint.§@!0§;
         this.§;i§ = (_loc12_ - b2PulleyJoint.§@!0§) / this.§8";§;
      }
   }
}
