package § ! §
{
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §4!&§:b2Vec2;
      
      public var §,#8§:b2Vec2;
      
      public var §#"z§:b2Vec2;
      
      public var §>#C§:b2Vec2;
      
      public var §&$#§:Number;
      
      public var §]"d§:Number;
      
      public var §#"G§:Number;
      
      public var §6#<§:Number;
      
      public var §+e§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§4!&§ = new b2Vec2();
         this.§,#8§ = new b2Vec2();
         this.§#"z§ = new b2Vec2();
         this.§>#C§ = new b2Vec2();
         super();
         type = b2Joint.§]"u§;
         this.§4!&§.Set(-1,1);
         this.§,#8§.Set(1,1);
         this.§#"z§.Set(-1,0);
         this.§>#C§.Set(1,0);
         this.§&$#§ = 0;
         this.§]"d§ = 0;
         this.§#"G§ = 0;
         this.§6#<§ = 0;
         this.§+e§ = 1;
         collideConnected = true;
      }
      
      public function §?#W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §'§ = param1;
         §>!2§ = param2;
         this.§4!&§.SetV(param3);
         this.§,#8§.SetV(param4);
         this.§#"z§ = §'§.GetLocalPoint(param5);
         this.§>#C§ = §>!2§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§&$#§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§#"G§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§+e§ = param7;
         var _loc12_:Number = this.§&$#§ + this.§+e§ * this.§#"G§;
         this.§]"d§ = _loc12_ - this.§+e§ * b2PulleyJoint.§3$@§;
         this.§6#<§ = (_loc12_ - b2PulleyJoint.§3$@§) / this.§+e§;
      }
   }
}
