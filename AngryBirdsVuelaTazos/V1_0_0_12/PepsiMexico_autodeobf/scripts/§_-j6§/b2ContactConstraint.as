package §_-j6§
{
   import §_-9z§.*;
   import §_-EH§.*;
   import §_-Nw§.*;
   import §_-sU§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var points:Vector.<b2ContactConstraintPoint>;
      
      public var §_-BY§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-g9§:b2Mat22;
      
      public var §_-Jy§:b2Mat22;
      
      public var §_-lk§:b2Body;
      
      public var §_-OV§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-6W§:int;
      
      public var §_-Qw§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-BY§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-g9§ = new b2Mat22();
         this.§_-Jy§ = new b2Mat22();
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
