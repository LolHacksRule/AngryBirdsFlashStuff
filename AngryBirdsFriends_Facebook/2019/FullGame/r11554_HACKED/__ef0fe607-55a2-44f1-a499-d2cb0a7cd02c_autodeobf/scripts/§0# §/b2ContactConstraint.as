package §0# §
{
   import §0J§.*;
   import §8#t§.*;
   import §[!3§.*;
   import §`# §.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §<"S§:Vector.<b2ContactConstraintPoint>;
      
      public var §>8§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §5#f§:b2Mat22;
      
      public var §3$'§:b2Mat22;
      
      public var §%#&§:b2Body;
      
      public var §8V§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §%"-§:int;
      
      public var §&#4§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§>8§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§5#f§ = new b2Mat22();
         this.§3$'§ = new b2Mat22();
         super();
         this.§<"S§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§<"S§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
