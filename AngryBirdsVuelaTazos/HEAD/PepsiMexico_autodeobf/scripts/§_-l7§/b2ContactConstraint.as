package §_-l7§
{
   import §_-bA§.*;
   import §_-mg§.*;
   import §_-rz§.*;
   import §_-vk§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §_-vx§:Vector.<b2ContactConstraintPoint>;
      
      public var §_-fS§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-Qy§:b2Mat22;
      
      public var §_-Gb§:b2Mat22;
      
      public var §_-wE§:b2Body;
      
      public var §_-3J§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-IV§:int;
      
      public var §_-4j§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§_-fS§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§_-Qy§ = new b2Mat22();
         this.§_-Gb§ = new b2Mat22();
         super();
         this.§_-vx§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-vx§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
