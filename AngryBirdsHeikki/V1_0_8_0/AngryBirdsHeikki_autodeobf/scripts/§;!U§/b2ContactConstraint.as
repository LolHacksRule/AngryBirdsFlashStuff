package §;!U§
{
   import §0!=§.*;
   import §0!?§.*;
   import §0^§.*;
   import §`!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §#!8§:Vector.<b2ContactConstraintPoint>;
      
      public var §"!L§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?0§:b2Mat22;
      
      public var §6_§:b2Mat22;
      
      public var §?$§:b2Body;
      
      public var §%!§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §[=§:int;
      
      public var §8@§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§"!L§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§?0§ = new b2Mat22();
         this.§6_§ = new b2Mat22();
         super();
         this.§#!8§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§#!8§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
