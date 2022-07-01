package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §5!W§:b2Vec2;
      
      public var §3=§:b2Vec2;
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §%;§:Number;
      
      public var §#!B§:Number;
      
      public var §9!J§:Number;
      
      public var §-e§:Number;
      
      public var §6?§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§5!W§ = new b2Vec2();
         this.§3=§ = new b2Vec2();
         this.§;!1§ = new b2Vec2();
         this.§%?§ = new b2Vec2();
         super();
         type = b2Joint.§?l§;
         this.§5!W§.Set(-1,1);
         this.§3=§.Set(1,1);
         this.§;!1§.Set(-1,0);
         this.§%?§.Set(1,0);
         this.§%;§ = 0;
         this.§#!B§ = 0;
         this.§9!J§ = 0;
         this.§-e§ = 0;
         this.§6?§ = 1;
         collideConnected = true;
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §[!i§ = param1;
         §;!K§ = param2;
         this.§5!W§.SetV(param3);
         this.§3=§.SetV(param4);
         this.§;!1§ = §[!i§.GetLocalPoint(param5);
         this.§%?§ = §;!K§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§%;§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§9!J§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§6?§ = param7;
         var _loc12_:Number = this.§%;§ + this.§6?§ * this.§9!J§;
         this.§#!B§ = _loc12_ - this.§6?§ * b2PulleyJoint.§#t§;
         this.§-e§ = (_loc12_ - b2PulleyJoint.§#t§) / this.§6?§;
      }
   }
}
