package §+!0§
{
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §'6§:b2Vec2;
      
      public var §]f§:b2Vec2;
      
      public var §1"&§:b2Vec2;
      
      public var §-m§:b2Vec2;
      
      public var §`"3§:Number;
      
      public var §,O§:Number;
      
      public var §&!-§:Number;
      
      public var §=6§:Number;
      
      public var §=!&§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§'6§ = new b2Vec2();
         this.§]f§ = new b2Vec2();
         this.§1"&§ = new b2Vec2();
         this.§-m§ = new b2Vec2();
         super();
         type = b2Joint.§4!p§;
         this.§'6§.Set(-1,1);
         this.§]f§.Set(1,1);
         this.§1"&§.Set(-1,0);
         this.§-m§.Set(1,0);
         this.§`"3§ = 0;
         this.§,O§ = 0;
         this.§&!-§ = 0;
         this.§=6§ = 0;
         this.§=!&§ = 1;
         collideConnected = true;
      }
      
      public function §,n§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §6z§ = param1;
         §@! § = param2;
         this.§'6§.SetV(param3);
         this.§]f§.SetV(param4);
         this.§1"&§ = §6z§.GetLocalPoint(param5);
         this.§-m§ = §@! §.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§`"3§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§&!-§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§=!&§ = param7;
         var _loc12_:Number = this.§`"3§ + this.§=!&§ * this.§&!-§;
         this.§,O§ = _loc12_ - this.§=!&§ * b2PulleyJoint.§!!"§;
         this.§=6§ = (_loc12_ - b2PulleyJoint.§!!"§) / this.§=!&§;
      }
   }
}
