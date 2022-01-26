package §_-cw§
{
   import §_-WW§.*;
   import §_-dx§.*;
   import §_-iO§.*;
   import §_-tK§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var points:Vector.<b2ContactConstraintPoint>;
      
      public var §_-fq§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-b3§:b2Mat22;
      
      public var §_-2q§:b2Mat22;
      
      public var §_-33§:b2Body;
      
      public var §_-Pt§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-g7§:int;
      
      public var §_-mA§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-fq§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-b3§ = new b2Mat22();
         this.§_-2q§ = new b2Mat22();
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
