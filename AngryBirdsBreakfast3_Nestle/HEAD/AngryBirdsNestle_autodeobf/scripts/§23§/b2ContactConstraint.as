package §23§
{
   import §!§.*;
   import §'!_§.*;
   import §0"!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §>Q§:Vector.<b2ContactConstraintPoint>;
      
      public var §;!6§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §3!e§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §9!w§:b2Body;
      
      public var §>!W§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §#!1§:int;
      
      public var §7"+§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§;!6§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§3!e§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§>Q§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§>Q§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
