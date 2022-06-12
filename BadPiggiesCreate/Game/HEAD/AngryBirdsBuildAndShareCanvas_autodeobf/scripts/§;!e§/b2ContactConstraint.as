package §;!e§
{
   import §"J§.*;
   import §%4§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §5!1§:Vector.<b2ContactConstraintPoint>;
      
      public var §<?§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §try §:b2Mat22;
      
      public var §>!H§:b2Mat22;
      
      public var § !T§:b2Body;
      
      public var §import§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §,!%§:int;
      
      public var §3!-§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§<?§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§try § = new b2Mat22();
         this.§>!H§ = new b2Mat22();
         super();
         this.§5!1§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§5!1§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
