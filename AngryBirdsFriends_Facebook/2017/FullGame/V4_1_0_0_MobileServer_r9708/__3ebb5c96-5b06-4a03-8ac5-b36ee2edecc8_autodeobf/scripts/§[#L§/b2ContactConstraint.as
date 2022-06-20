package §[#L§
{
   import §%!9§.*;
   import §1!+§.*;
   import §7"^§.*;
   import §9#K§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §##V§:Vector.<b2ContactConstraintPoint>;
      
      public var § C§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §0C§:b2Mat22;
      
      public var § !_§:b2Mat22;
      
      public var §0%§:b2Body;
      
      public var §%"d§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §[!a§:int;
      
      public var §,O§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§ C§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§0C§ = new b2Mat22();
         this.§ !_§ = new b2Mat22();
         super();
         this.§##V§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§##V§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
