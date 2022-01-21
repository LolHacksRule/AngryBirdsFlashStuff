package §;N§
{
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §#!f§:b2Vec2;
      
      public var §&4§:b2Vec2;
      
      public var §4D§:b2Vec2;
      
      public var §@@§:b2Vec2;
      
      public var §4W§:Number;
      
      public var §^^§:Number;
      
      public var §?!m§:Number;
      
      public var §+!-§:Number;
      
      public var §8!I§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§#!f§ = new b2Vec2();
         this.§&4§ = new b2Vec2();
         this.§4D§ = new b2Vec2();
         this.§@@§ = new b2Vec2();
         super();
         type = b2Joint.§6-§;
         this.§#!f§.Set(-1,1);
         this.§&4§.Set(1,1);
         this.§4D§.Set(-1,0);
         this.§@@§.Set(1,0);
         this.§4W§ = 0;
         this.§^^§ = 0;
         this.§?!m§ = 0;
         this.§+!-§ = 0;
         this.§8!I§ = 1;
         collideConnected = true;
      }
      
      public function §4G§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §-6§ = param1;
         §?w§ = param2;
         this.§#!f§.SetV(param3);
         this.§&4§.SetV(param4);
         this.§4D§ = §-6§.GetLocalPoint(param5);
         this.§@@§ = §?w§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§4W§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§?!m§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§8!I§ = param7;
         var _loc12_:Number = this.§4W§ + this.§8!I§ * this.§?!m§;
         this.§^^§ = _loc12_ - this.§8!I§ * b2PulleyJoint.§7!m§;
         this.§+!-§ = (_loc12_ - b2PulleyJoint.§7!m§) / this.§8!I§;
      }
   }
}
