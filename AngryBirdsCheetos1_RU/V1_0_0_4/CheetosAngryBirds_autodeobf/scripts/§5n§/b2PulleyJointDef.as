package §5n§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §,!?§:b2Vec2;
      
      public var §^f§:b2Vec2;
      
      public var §!!B§:b2Vec2;
      
      public var §<!_§:b2Vec2;
      
      public var §6k§:Number;
      
      public var §5!>§:Number;
      
      public var §"!`§:Number;
      
      public var §,$§:Number;
      
      public var §@d§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§,!?§ = new b2Vec2();
         this.§^f§ = new b2Vec2();
         this.§!!B§ = new b2Vec2();
         this.§<!_§ = new b2Vec2();
         super();
         type = b2Joint.§="§;
         this.§,!?§.Set(-1,1);
         this.§^f§.Set(1,1);
         this.§!!B§.Set(-1,0);
         this.§<!_§.Set(1,0);
         this.§6k§ = 0;
         this.§5!>§ = 0;
         this.§"!`§ = 0;
         this.§,$§ = 0;
         this.§@d§ = 1;
         collideConnected = true;
      }
      
      public function §2![§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §1I§ = param1;
         §!T§ = param2;
         this.§,!?§.SetV(param3);
         this.§^f§.SetV(param4);
         this.§!!B§ = §1I§.GetLocalPoint(param5);
         this.§<!_§ = §!T§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§6k§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§"!`§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§@d§ = param7;
         var _loc12_:Number = this.§6k§ + this.§@d§ * this.§"!`§;
         this.§5!>§ = _loc12_ - this.§@d§ * b2PulleyJoint.§,"§;
         this.§,$§ = (_loc12_ - b2PulleyJoint.§,"§) / this.§@d§;
      }
   }
}
