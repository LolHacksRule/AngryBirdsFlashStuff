package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §-!'§:b2Vec2;
      
      public var §8?§:b2Vec2;
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §1!^§:Number;
      
      public var §`F§:Number;
      
      public var §`;§:Number;
      
      public var §-!?§:Number;
      
      public var §[!G§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§-!'§ = new b2Vec2();
         this.§8?§ = new b2Vec2();
         this.§!!U§ = new b2Vec2();
         this.§"!'§ = new b2Vec2();
         super();
         type = b2Joint.§[,§;
         this.§-!'§.Set(-1,1);
         this.§8?§.Set(1,1);
         this.§!!U§.Set(-1,0);
         this.§"!'§.Set(1,0);
         this.§1!^§ = 0;
         this.§`F§ = 0;
         this.§`;§ = 0;
         this.§-!?§ = 0;
         this.§[!G§ = 1;
         collideConnected = true;
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §-'§ = param1;
         §<!L§ = param2;
         this.§-!'§.SetV(param3);
         this.§8?§.SetV(param4);
         this.§!!U§ = §-'§.GetLocalPoint(param5);
         this.§"!'§ = §<!L§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§1!^§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§`;§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§[!G§ = param7;
         var _loc12_:Number = this.§1!^§ + this.§[!G§ * this.§`;§;
         this.§`F§ = _loc12_ - this.§[!G§ * b2PulleyJoint.§7?§;
         this.§-!?§ = (_loc12_ - b2PulleyJoint.§7?§) / this.§[!G§;
      }
   }
}
