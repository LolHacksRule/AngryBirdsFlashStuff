package §8!k§
{
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §"!O§:b2Vec2;
      
      public var § W§:b2Vec2;
      
      public var length:Number;
      
      public var §-"%§:Number;
      
      public var §0"3§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§"!O§ = new b2Vec2();
         this.§ W§ = new b2Vec2();
         super();
         type = b2Joint.§1!X§;
         this.length = 1;
         this.§-"%§ = 0;
         this.§0"3§ = 0;
      }
      
      public function §+"'§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §<!S§ = param1;
         §=Y§ = param2;
         this.§"!O§.SetV(§<!S§.GetLocalPoint(param3));
         this.§ W§.SetV(§=Y§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§-"%§ = 0;
         this.§0"3§ = 0;
      }
   }
}
