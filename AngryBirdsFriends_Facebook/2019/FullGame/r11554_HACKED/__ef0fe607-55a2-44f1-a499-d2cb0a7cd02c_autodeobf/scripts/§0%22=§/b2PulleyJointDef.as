package §0"=§
{
   import §8#t§.b2Body;
   import §[!3§.b2internal;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §=$C§:b2Vec2;
      
      public var §7"N§:b2Vec2;
      
      public var § "2§:b2Vec2;
      
      public var §8!U§:b2Vec2;
      
      public var §2"K§:Number;
      
      public var §""6§:Number;
      
      public var §+"Z§:Number;
      
      public var §0#Q§:Number;
      
      public var §%#G§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§=$C§ = new b2Vec2();
         this.§7"N§ = new b2Vec2();
         this.§ "2§ = new b2Vec2();
         this.§8!U§ = new b2Vec2();
         super();
         type = b2Joint.§@!g§;
         this.§=$C§.Set(-1,1);
         this.§7"N§.Set(1,1);
         this.§ "2§.Set(-1,0);
         this.§8!U§.Set(1,0);
         this.§2"K§ = 0;
         this.§""6§ = 0;
         this.§+"Z§ = 0;
         this.§0#Q§ = 0;
         this.§%#G§ = 1;
         collideConnected = true;
      }
      
      public function §7##§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §%#&§ = param1;
         §8V§ = param2;
         this.§=$C§.SetV(param3);
         this.§7"N§.SetV(param4);
         this.§ "2§ = §%#&§.GetLocalPoint(param5);
         this.§8!U§ = §8V§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§2"K§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§+"Z§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§%#G§ = param7;
         var _loc12_:Number = this.§2"K§ + this.§%#G§ * this.§+"Z§;
         this.§""6§ = _loc12_ - this.§%#G§ * b2PulleyJoint.§;"'§;
         this.§0#Q§ = (_loc12_ - b2PulleyJoint.§;"'§) / this.§%#G§;
      }
   }
}
