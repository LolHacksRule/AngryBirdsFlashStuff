package §=![§
{
   import §7!I§.b2internal;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §7;§:b2Vec2;
      
      public var §'"6§:b2Vec2;
      
      public var §?"y§:b2Vec2;
      
      public var §0d§:b2Vec2;
      
      public var §?"n§:Number;
      
      public var §9!M§:Number;
      
      public var §]Q§:Number;
      
      public var §2M§:Number;
      
      public var §@"R§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§7;§ = new b2Vec2();
         this.§'"6§ = new b2Vec2();
         this.§?"y§ = new b2Vec2();
         this.§0d§ = new b2Vec2();
         super();
         type = b2Joint.§[!j§;
         this.§7;§.Set(-1,1);
         this.§'"6§.Set(1,1);
         this.§?"y§.Set(-1,0);
         this.§0d§.Set(1,0);
         this.§?"n§ = 0;
         this.§9!M§ = 0;
         this.§]Q§ = 0;
         this.§2M§ = 0;
         this.§@"R§ = 1;
         collideConnected = true;
      }
      
      public function §>D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §5"I§ = param1;
         §[!K§ = param2;
         this.§7;§.SetV(param3);
         this.§'"6§.SetV(param4);
         this.§?"y§ = §5"I§.GetLocalPoint(param5);
         this.§0d§ = §[!K§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§?"n§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§]Q§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§@"R§ = param7;
         var _loc12_:Number = this.§?"n§ + this.§@"R§ * this.§]Q§;
         this.§9!M§ = _loc12_ - this.§@"R§ * b2PulleyJoint.§%"V§;
         this.§2M§ = (_loc12_ - b2PulleyJoint.§%"V§) / this.§@"R§;
      }
   }
}
