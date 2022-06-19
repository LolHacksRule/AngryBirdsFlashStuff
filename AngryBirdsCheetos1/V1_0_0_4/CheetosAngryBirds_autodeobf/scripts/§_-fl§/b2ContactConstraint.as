package §_-fl§
{
   import §_-00B§.*;
   import §_-Jf§.*;
   import §_-Kz§.*;
   import §_-Vn§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §_-AX§:Vector.<b2ContactConstraintPoint>;
      
      public var §_-dX§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-7p§:b2Mat22;
      
      public var §_-cH§:b2Mat22;
      
      public var §_-c7§:b2Body;
      
      public var §_-60§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-wj§:int;
      
      public var §_-AR§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-dX§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-7p§ = new b2Mat22();
         this.§_-cH§ = new b2Mat22();
         super();
         this.§_-AX§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-AX§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
