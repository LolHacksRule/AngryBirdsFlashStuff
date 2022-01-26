package §_-a5§
{
   import §_-Iw§.*;
   import §_-Ja§.*;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var points:Vector.<b2ContactConstraintPoint>;
      
      public var §_-gQ§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-SY§:b2Mat22;
      
      public var §_-9s§:b2Mat22;
      
      public var §_-dL§:b2Body;
      
      public var §_-h1§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-Ws§:int;
      
      public var §_-4M§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-gQ§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-SY§ = new b2Mat22();
         this.§_-9s§ = new b2Mat22();
         super();
         this.points = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.points[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
