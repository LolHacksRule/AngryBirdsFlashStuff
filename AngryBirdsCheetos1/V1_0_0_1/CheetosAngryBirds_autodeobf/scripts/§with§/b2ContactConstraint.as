package §with§
{
   import §_-b4§.*;
   import §_-cP§.*;
   import §_-yI§.*;
   import §try§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §_-HH§:Vector.<b2ContactConstraintPoint>;
      
      public var §_-Ad§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-vJ§:b2Mat22;
      
      public var §_-eQ§:b2Mat22;
      
      public var §_-6a§:b2Body;
      
      public var §_-95§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-60§:int;
      
      public var §_-M0§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-Ad§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-vJ§ = new b2Mat22();
         this.§_-eQ§ = new b2Mat22();
         super();
         this.§_-HH§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-HH§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
