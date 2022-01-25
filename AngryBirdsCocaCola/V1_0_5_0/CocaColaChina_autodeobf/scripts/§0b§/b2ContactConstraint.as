package §0b§
{
   import § y§.*;
   import §!u§.*;
   import §54§.*;
   import §;h§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §%O§:Vector.<b2ContactConstraintPoint>;
      
      public var §%!B§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?e§:b2Mat22;
      
      public var §2!!§:b2Mat22;
      
      public var §8L§:b2Body;
      
      public var §4!H§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §]!D§:int;
      
      public var § b§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§%!B§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§?e§ = new b2Mat22();
         this.§2!!§ = new b2Mat22();
         super();
         this.§%O§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§%O§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
