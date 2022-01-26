package §_-2V§
{
   import §_-SM§.*;
   import §_-qW§.*;
   import §_-wZ§.*;
   import §var§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var points:Vector.<b2ContactConstraintPoint>;
      
      public var §_-Kt§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-M7§:b2Mat22;
      
      public var §_-HX§:b2Mat22;
      
      public var §_-cw§:b2Body;
      
      public var §_-U9§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-cU§:int;
      
      public var §_-Aa§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-Kt§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-M7§ = new b2Mat22();
         this.§_-HX§ = new b2Mat22();
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
