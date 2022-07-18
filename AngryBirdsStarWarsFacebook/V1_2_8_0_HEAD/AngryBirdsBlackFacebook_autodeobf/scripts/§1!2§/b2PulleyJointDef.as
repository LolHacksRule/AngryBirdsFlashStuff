package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §6!b§:b2Vec2;
      
      public var §'p§:b2Vec2;
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §&y§:Number;
      
      public var §1!B§:Number;
      
      public var §,"q§:Number;
      
      public var §&!q§:Number;
      
      public var §@!%§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§6!b§ = new b2Vec2();
         this.§'p§ = new b2Vec2();
         this.§!"4§ = new b2Vec2();
         this.§#"B§ = new b2Vec2();
         super();
         type = b2Joint.§ "j§;
         this.§6!b§.Set(-1,1);
         this.§'p§.Set(1,1);
         this.§!"4§.Set(-1,0);
         this.§#"B§.Set(1,0);
         this.§&y§ = 0;
         this.§1!B§ = 0;
         this.§,"q§ = 0;
         this.§&!q§ = 0;
         this.§@!%§ = 1;
         collideConnected = true;
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §9"P§ = param1;
         §continue§ = param2;
         this.§6!b§.SetV(param3);
         this.§'p§.SetV(param4);
         this.§!"4§ = §9"P§.GetLocalPoint(param5);
         this.§#"B§ = §continue§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§&y§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§,"q§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§@!%§ = param7;
         var _loc12_:Number = this.§&y§ + this.§@!%§ * this.§,"q§;
         this.§1!B§ = _loc12_ - this.§@!%§ * b2PulleyJoint.§!!N§;
         this.§&!q§ = (_loc12_ - b2PulleyJoint.§!!N§) / this.§@!%§;
      }
   }
}
