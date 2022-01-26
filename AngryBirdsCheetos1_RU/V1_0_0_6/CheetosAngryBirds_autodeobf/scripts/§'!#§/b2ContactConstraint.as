package §'!#§
{
   import §'!3§.*;
   import §3q§.*;
   import §9!$§.*;
   import §?0§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §7T§:Vector.<b2ContactConstraintPoint>;
      
      public var §,3§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §;g§:b2Mat22;
      
      public var §3?§:b2Mat22;
      
      public var §#1§:b2Body;
      
      public var §"!<§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §!§:int;
      
      public var §?Q§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§,3§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§;g§ = new b2Mat22();
         this.§3?§ = new b2Mat22();
         super();
         this.§7T§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§7T§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
