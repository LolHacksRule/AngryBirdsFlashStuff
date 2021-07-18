package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §3!b§:b2Vec2;
      
      public var §^#v§:b2Vec2;
      
      public var §@2§:b2Vec2;
      
      public var §7#$§:b2Vec2;
      
      public var §?K§:Number;
      
      public var §[$'§:Number;
      
      public var §`,§:Number;
      
      public var §""]§:Number;
      
      public var §!!S§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§3!b§ = new b2Vec2();
         this.§^#v§ = new b2Vec2();
         this.§@2§ = new b2Vec2();
         this.§7#$§ = new b2Vec2();
         super();
         type = b2Joint.§>#r§;
         this.§3!b§.Set(-1,1);
         this.§^#v§.Set(1,1);
         this.§@2§.Set(-1,0);
         this.§7#$§.Set(1,0);
         this.§?K§ = 0;
         this.§[$'§ = 0;
         this.§`,§ = 0;
         this.§""]§ = 0;
         this.§!!S§ = 1;
         collideConnected = true;
      }
      
      public function §1[§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §9"Z§ = param1;
         §'!Y§ = param2;
         this.§3!b§.SetV(param3);
         this.§^#v§.SetV(param4);
         this.§@2§ = §9"Z§.GetLocalPoint(param5);
         this.§7#$§ = §'!Y§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§?K§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§`,§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§!!S§ = param7;
         var _loc12_:Number = this.§?K§ + this.§!!S§ * this.§`,§;
         this.§[$'§ = _loc12_ - this.§!!S§ * b2PulleyJoint.§'#y§;
         this.§""]§ = (_loc12_ - b2PulleyJoint.§'#y§) / this.§!!S§;
      }
   }
}
