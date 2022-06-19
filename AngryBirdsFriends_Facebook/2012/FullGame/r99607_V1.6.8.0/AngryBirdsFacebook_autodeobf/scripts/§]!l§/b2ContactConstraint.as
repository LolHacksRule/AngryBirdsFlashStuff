package §]!l§
{
   import § !k§.*;
   import §!"8§.*;
   import §6!d§.*;
   import §in§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §&";§:Vector.<b2ContactConstraintPoint>;
      
      public var §-!1§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §9!^§:b2Mat22;
      
      public var §49§:b2Mat22;
      
      public var §3"$§:b2Body;
      
      public var §?!A§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §?""§:int;
      
      public var §5]§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§-!1§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§9!^§ = new b2Mat22();
         this.§49§ = new b2Mat22();
         super();
         this.§&";§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§&";§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
