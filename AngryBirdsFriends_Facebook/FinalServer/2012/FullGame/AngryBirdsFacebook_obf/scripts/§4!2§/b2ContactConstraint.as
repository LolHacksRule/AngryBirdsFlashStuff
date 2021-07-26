package §4!2§
{
   import § !0§.*;
   import §&!Y§.*;
   import §7F§.*;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §0!R§:Vector.<b2ContactConstraintPoint>;
      
      public var §#8§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var § for§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §4"?§:b2Body;
      
      public var §+H§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §8",§:int;
      
      public var §7n§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§#8§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§ for§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§0!R§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§0!R§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
