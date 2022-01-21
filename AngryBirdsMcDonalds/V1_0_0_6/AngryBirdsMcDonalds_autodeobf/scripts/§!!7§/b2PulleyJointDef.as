package §!!7§
{
   import §7!5§.b2Body;
   import §7!Y§.b2internal;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §+!2§:b2Vec2;
      
      public var §25§:b2Vec2;
      
      public var §'8§:b2Vec2;
      
      public var §>!_§:b2Vec2;
      
      public var §`'§:Number;
      
      public var §8-§:Number;
      
      public var §&u§:Number;
      
      public var §8`§:Number;
      
      public var §1<§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§+!2§ = new b2Vec2();
         this.§25§ = new b2Vec2();
         this.§'8§ = new b2Vec2();
         this.§>!_§ = new b2Vec2();
         super();
         type = b2Joint.§6!d§;
         this.§+!2§.Set(-1,1);
         this.§25§.Set(1,1);
         this.§'8§.Set(-1,0);
         this.§>!_§.Set(1,0);
         this.§`'§ = 0;
         this.§8-§ = 0;
         this.§&u§ = 0;
         this.§8`§ = 0;
         this.§1<§ = 1;
         collideConnected = true;
      }
      
      public function §1!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §1v§ = param1;
         §<W§ = param2;
         this.§+!2§.SetV(param3);
         this.§25§.SetV(param4);
         this.§'8§ = §1v§.GetLocalPoint(param5);
         this.§>!_§ = §<W§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§`'§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§&u§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§1<§ = param7;
         var _loc12_:Number = this.§`'§ + this.§1<§ * this.§&u§;
         this.§8-§ = _loc12_ - this.§1<§ * b2PulleyJoint.§+!6§;
         this.§8`§ = (_loc12_ - b2PulleyJoint.§+!6§) / this.§1<§;
      }
   }
}
