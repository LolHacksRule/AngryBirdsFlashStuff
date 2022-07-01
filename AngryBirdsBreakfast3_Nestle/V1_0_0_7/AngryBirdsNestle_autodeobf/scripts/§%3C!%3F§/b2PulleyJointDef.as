package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §8L§:b2Vec2;
      
      public var §^B§:b2Vec2;
      
      public var §'!]§:b2Vec2;
      
      public var §@!p§:b2Vec2;
      
      public var §;!A§:Number;
      
      public var §'"6§:Number;
      
      public var §4"&§:Number;
      
      public var §do §:Number;
      
      public var §>R§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§8L§ = new b2Vec2();
         this.§^B§ = new b2Vec2();
         this.§'!]§ = new b2Vec2();
         this.§@!p§ = new b2Vec2();
         super();
         type = b2Joint.§,!f§;
         this.§8L§.Set(-1,1);
         this.§^B§.Set(1,1);
         this.§'!]§.Set(-1,0);
         this.§@!p§.Set(1,0);
         this.§;!A§ = 0;
         this.§'"6§ = 0;
         this.§4"&§ = 0;
         this.§do § = 0;
         this.§>R§ = 1;
         collideConnected = true;
      }
      
      public function §7!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §,!K§ = param1;
         §6n§ = param2;
         this.§8L§.SetV(param3);
         this.§^B§.SetV(param4);
         this.§'!]§ = §,!K§.GetLocalPoint(param5);
         this.§@!p§ = §6n§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§;!A§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§4"&§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§>R§ = param7;
         var _loc12_:Number = this.§;!A§ + this.§>R§ * this.§4"&§;
         this.§'"6§ = _loc12_ - this.§>R§ * b2PulleyJoint.§ F§;
         this.§do § = (_loc12_ - b2PulleyJoint.§ F§) / this.§>R§;
      }
   }
}
