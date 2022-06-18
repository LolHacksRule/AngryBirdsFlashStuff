package §=!P§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §?u§:b2Vec2;
      
      public var §"!A§:b2Vec2;
      
      public var §;I§:b2Vec2;
      
      public var §-!&§:b2Vec2;
      
      public var §+5§:Number;
      
      public var §!^§:Number;
      
      public var §<!4§:Number;
      
      public var §5!<§:Number;
      
      public var §4v§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§?u§ = new b2Vec2();
         this.§"!A§ = new b2Vec2();
         this.§;I§ = new b2Vec2();
         this.§-!&§ = new b2Vec2();
         super();
         type = b2Joint.§^!#§;
         this.§?u§.Set(-1,1);
         this.§"!A§.Set(1,1);
         this.§;I§.Set(-1,0);
         this.§-!&§.Set(1,0);
         this.§+5§ = 0;
         this.§!^§ = 0;
         this.§<!4§ = 0;
         this.§5!<§ = 0;
         this.§4v§ = 1;
         collideConnected = true;
      }
      
      public function §in §(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         § !,§ = param1;
         §]z§ = param2;
         this.§?u§.SetV(param3);
         this.§"!A§.SetV(param4);
         this.§;I§ = § !,§.GetLocalPoint(param5);
         this.§-!&§ = §]z§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§+5§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§<!4§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§4v§ = param7;
         var _loc12_:Number = this.§+5§ + this.§4v§ * this.§<!4§;
         this.§!^§ = _loc12_ - this.§4v§ * b2PulleyJoint.§82§;
         this.§5!<§ = (_loc12_ - b2PulleyJoint.§82§) / this.§4v§;
      }
   }
}
