package §`!Z§
{
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §<4§:b2Vec2;
      
      public var §2§:b2Vec2;
      
      public var length:Number;
      
      public var §2b§:Number;
      
      public var §5N§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§<4§ = new b2Vec2();
         this.§2§ = new b2Vec2();
         super();
         type = b2Joint.§#F§;
         this.length = 1;
         this.§2b§ = 0;
         this.§5N§ = 0;
      }
      
      public function §6!_§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §+!#§ = param1;
         §1!K§ = param2;
         this.§<4§.SetV(§+!#§.GetLocalPoint(param3));
         this.§2§.SetV(§1!K§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§2b§ = 0;
         this.§5N§ = 0;
      }
   }
}
