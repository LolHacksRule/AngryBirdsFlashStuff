package §8<§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §[!3§:b2Vec2;
      
      public var §,!I§:b2Vec2;
      
      public var §;!,§:b2Vec2;
      
      public var §const§:b2Vec2;
      
      public var §%1§:Number;
      
      public var §@s§:Number;
      
      public var §#!]§:Number;
      
      public var §2w§:Number;
      
      public var §`Q§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§[!3§ = new b2Vec2();
         this.§,!I§ = new b2Vec2();
         this.§;!,§ = new b2Vec2();
         this.§const§ = new b2Vec2();
         super();
         type = b2Joint.§]!'§;
         this.§[!3§.Set(-1,1);
         this.§,!I§.Set(1,1);
         this.§;!,§.Set(-1,0);
         this.§const§.Set(1,0);
         this.§%1§ = 0;
         this.§@s§ = 0;
         this.§#!]§ = 0;
         this.§2w§ = 0;
         this.§`Q§ = 1;
         collideConnected = true;
      }
      
      public function §9!K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §,w§ = param1;
         §2h§ = param2;
         this.§[!3§.SetV(param3);
         this.§,!I§.SetV(param4);
         this.§;!,§ = §,w§.GetLocalPoint(param5);
         this.§const§ = §2h§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§%1§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§#!]§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§`Q§ = param7;
         var _loc12_:Number = this.§%1§ + this.§`Q§ * this.§#!]§;
         this.§@s§ = _loc12_ - this.§`Q§ * b2PulleyJoint.§"!$§;
         this.§2w§ = (_loc12_ - b2PulleyJoint.§"!$§) / this.§`Q§;
      }
   }
}
