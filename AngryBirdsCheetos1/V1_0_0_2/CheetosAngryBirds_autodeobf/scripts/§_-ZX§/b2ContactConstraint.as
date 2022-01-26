package §_-ZX§
{
   import §_-43§.*;
   import §_-F2§.*;
   import §_-Jx§.*;
   import §_-d6§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §_-yP§:Vector.<b2ContactConstraintPoint>;
      
      public var §_-ay§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-as§:b2Mat22;
      
      public var §_-Tt§:b2Mat22;
      
      public var §_-4f§:b2Body;
      
      public var §_-FU§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-r0§:int;
      
      public var §_-Hs§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-ay§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-as§ = new b2Mat22();
         this.§_-Tt§ = new b2Mat22();
         super();
         this.§_-yP§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-yP§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
