package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var length:Number;
      
      public var §=!9§:Number;
      
      public var §[!+§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§!!U§ = new b2Vec2();
         this.§"!'§ = new b2Vec2();
         super();
         type = b2Joint.§-A§;
         this.length = 1;
         this.§=!9§ = 0;
         this.§[!+§ = 0;
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-'§ = param1;
         §<!L§ = param2;
         this.§!!U§.SetV(§-'§.GetLocalPoint(param3));
         this.§"!'§.SetV(§<!L§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§=!9§ = 0;
         this.§[!+§ = 0;
      }
   }
}
