package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §-+§:b2Vec2;
      
      public var §'8§:b2Vec2;
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §,q§:Number;
      
      public var §;[§:Number;
      
      public var §-!k§:Number;
      
      public var §1!2§:Number;
      
      public var §`x§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§-+§ = new b2Vec2();
         this.§'8§ = new b2Vec2();
         this.§!2§ = new b2Vec2();
         this.§ !c§ = new b2Vec2();
         super();
         type = b2Joint.§2!D§;
         this.§-+§.Set(-1,1);
         this.§'8§.Set(1,1);
         this.§!2§.Set(-1,0);
         this.§ !c§.Set(1,0);
         this.§,q§ = 0;
         this.§;[§ = 0;
         this.§-!k§ = 0;
         this.§1!2§ = 0;
         this.§`x§ = 1;
         collideConnected = true;
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §@!<§ = param1;
         §3j§ = param2;
         this.§-+§.SetV(param3);
         this.§'8§.SetV(param4);
         this.§!2§ = §@!<§.GetLocalPoint(param5);
         this.§ !c§ = §3j§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§,q§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§-!k§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§`x§ = param7;
         var _loc12_:Number = this.§,q§ + this.§`x§ * this.§-!k§;
         this.§;[§ = _loc12_ - this.§`x§ * b2PulleyJoint.§5!,§;
         this.§1!2§ = (_loc12_ - b2PulleyJoint.§5!,§) / this.§`x§;
      }
   }
}
