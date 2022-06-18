package §[-§
{
   import §!!#§.*;
   import §4! §.*;
   import §9t§.*;
   import §^q§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §!!C§:Vector.<b2ContactConstraintPoint>;
      
      public var §%!'§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>v§:b2Mat22;
      
      public var §@!D§:b2Mat22;
      
      public var § !,§:b2Body;
      
      public var §]z§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §0f§:int;
      
      public var §64§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§%!'§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§>v§ = new b2Mat22();
         this.§@!D§ = new b2Mat22();
         super();
         this.§!!C§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§!!C§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
