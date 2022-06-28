package §_-0DM§
{
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-aU§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §_-0BA§:Vector.<b2ContactConstraintPoint>;
      
      public var §_-nx§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-Ts§:b2Mat22;
      
      public var §_-2d§:b2Mat22;
      
      public var §_-ZR§:b2Body;
      
      public var §_-7b§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-0F6§:int;
      
      public var §_-07z§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-nx§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-Ts§ = new b2Mat22();
         this.§_-2d§ = new b2Mat22();
         super();
         this.§_-0BA§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-0BA§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
