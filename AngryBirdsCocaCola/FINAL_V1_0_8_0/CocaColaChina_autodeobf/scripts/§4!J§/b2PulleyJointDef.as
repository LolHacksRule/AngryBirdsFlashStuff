package §4!J§
{
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §0!%§:b2Vec2;
      
      public var §%!6§:b2Vec2;
      
      public var §;8§:b2Vec2;
      
      public var §;!c§:b2Vec2;
      
      public var §]P§:Number;
      
      public var §8![§:Number;
      
      public var §^!`§:Number;
      
      public var §+,§:Number;
      
      public var §?j§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§0!%§ = new b2Vec2();
         this.§%!6§ = new b2Vec2();
         this.§;8§ = new b2Vec2();
         this.§;!c§ = new b2Vec2();
         super();
         type = b2Joint.§>B§;
         this.§0!%§.Set(-1,1);
         this.§%!6§.Set(1,1);
         this.§;8§.Set(-1,0);
         this.§;!c§.Set(1,0);
         this.§]P§ = 0;
         this.§8![§ = 0;
         this.§^!`§ = 0;
         this.§+,§ = 0;
         this.§?j§ = 1;
         collideConnected = true;
      }
      
      public function §2#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §;!9§ = param1;
         §;!,§ = param2;
         this.§0!%§.SetV(param3);
         this.§%!6§.SetV(param4);
         this.§;8§ = §;!9§.GetLocalPoint(param5);
         this.§;!c§ = §;!,§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§]P§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§^!`§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§?j§ = param7;
         var _loc12_:Number = this.§]P§ + this.§?j§ * this.§^!`§;
         this.§8![§ = _loc12_ - this.§?j§ * b2PulleyJoint.§8!X§;
         this.§+,§ = (_loc12_ - b2PulleyJoint.§8!X§) / this.§?j§;
      }
   }
}
