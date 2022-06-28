package §break§
{
   import §7!u§.*;
   import §72§.*;
   import §>H§.*;
   import §`w§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §;!K§:Vector.<b2ContactConstraintPoint>;
      
      public var §?Q§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §@z§:b2Mat22;
      
      public var §]_§:b2Mat22;
      
      public var §3x§:b2Body;
      
      public var §8P§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §'0§:int;
      
      public var §6!P§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§?Q§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§@z§ = new b2Mat22();
         this.§]_§ = new b2Mat22();
         super();
         this.§;!K§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§;!K§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
