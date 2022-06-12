package §;"R§
{
   import §0H§.*;
   import §0m§.*;
   import §3"q§.*;
   import §=#n§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §>""§:Vector.<b2ContactConstraintPoint>;
      
      public var §^">§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §`"_§:b2Mat22;
      
      public var §[#'§:b2Mat22;
      
      public var §9"Z§:b2Body;
      
      public var §'!Y§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §&4§:int;
      
      public var §2"h§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§^">§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§`"_§ = new b2Mat22();
         this.§[#'§ = new b2Mat22();
         super();
         this.§>""§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§>""§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
