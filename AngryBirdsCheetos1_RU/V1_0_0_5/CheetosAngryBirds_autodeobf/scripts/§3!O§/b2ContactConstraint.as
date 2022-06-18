package §3!O§
{
   import § !5§.*;
   import §+,§.*;
   import §?§.*;
   import §[W§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §^d§:Vector.<b2ContactConstraintPoint>;
      
      public var §?`§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §^P§:b2Mat22;
      
      public var §+!]§:b2Mat22;
      
      public var §-[§:b2Body;
      
      public var §>N§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §`!E§:int;
      
      public var §3!4§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§?`§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§^P§ = new b2Mat22();
         this.§+!]§ = new b2Mat22();
         super();
         this.§^d§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§^d§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
