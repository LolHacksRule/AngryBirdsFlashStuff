package §_-DM§
{
   import §_-Et§.*;
   import §_-Zl§.*;
   import §_-rg§.*;
   import §_-uS§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var points:Vector.<b2ContactConstraintPoint>;
      
      public var §_-j8§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-w5§:b2Mat22;
      
      public var §_-1c§:b2Mat22;
      
      public var §_-Ay§:b2Body;
      
      public var §_-vo§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-as§:int;
      
      public var §_-0v§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-j8§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-w5§ = new b2Mat22();
         this.§_-1c§ = new b2Mat22();
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
