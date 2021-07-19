package §8Y§
{
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §5n§:Vector.<b2ContactConstraintPoint>;
      
      public var §"S§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §@!T§:b2Mat22;
      
      public var §2#§:b2Mat22;
      
      public var §8!5§:b2Body;
      
      public var §0n§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §`5§:int;
      
      public var §%c§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§"S§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§@!T§ = new b2Mat22();
         this.§2#§ = new b2Mat22();
         super();
         this.§5n§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§5n§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
