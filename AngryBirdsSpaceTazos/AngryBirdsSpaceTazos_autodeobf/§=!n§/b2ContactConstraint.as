package §=!n§
{
   import §'!&§.*;
   import §3c§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §?!%§:Vector.<b2ContactConstraintPoint>;
      
      public var §]q§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>r§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §+,§:b2Body;
      
      public var §"R§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §9">§:int;
      
      public var §63§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§]q§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§>r§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§?!%§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§?!%§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
