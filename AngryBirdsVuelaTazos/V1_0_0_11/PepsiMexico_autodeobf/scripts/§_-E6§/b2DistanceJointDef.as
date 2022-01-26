package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-uE§:b2Vec2;
      
      public var §_-L5§:b2Vec2;
      
      public var length:Number;
      
      public var §_-xZ§:Number;
      
      public var §_-BC§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-uE§ = new b2Vec2();
         this.§_-L5§ = new b2Vec2();
         super();
         type = b2Joint.§_-e9§;
         this.length = 1;
         this.§_-xZ§ = 0;
         this.§_-BC§ = 0;
      }
      
      public function §_-t1§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-33§ = param1;
         §_-Pt§ = param2;
         this.§_-uE§.SetV(§_-33§.GetLocalPoint(param3));
         this.§_-L5§.SetV(§_-Pt§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-xZ§ = 0;
         this.§_-BC§ = 0;
      }
   }
}
