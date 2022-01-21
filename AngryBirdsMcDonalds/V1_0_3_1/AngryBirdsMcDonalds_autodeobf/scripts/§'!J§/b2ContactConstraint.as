package §'!J§
{
   import §&x§.*;
   import §-!T§.*;
   import §0,§.*;
   import §3o§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §7!Q§:Vector.<b2ContactConstraintPoint>;
      
      public var §@!k§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>_§:b2Mat22;
      
      public var §3%§:b2Mat22;
      
      public var §@!F§:b2Body;
      
      public var §9!T§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §"4§:int;
      
      public var §7S§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§@!k§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§>_§ = new b2Mat22();
         this.§3%§ = new b2Mat22();
         super();
         this.§7!Q§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§7!Q§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
