package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'&§:b2Vec2;
      
      public var §%"0§:b2Vec2;
      
      public var length:Number;
      
      public var §;K§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§'&§ = new b2Vec2();
         this.§%"0§ = new b2Vec2();
         super();
         type = b2Joint.§,r§;
         this.length = 1;
         this.§;K§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §implements§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §'!R§ = param1;
         §@V§ = param2;
         this.§'&§.SetV(§'!R§.GetLocalPoint(param3));
         this.§%"0§.SetV(§@V§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§;K§ = 0;
         this.dampingRatio = 0;
      }
   }
}
