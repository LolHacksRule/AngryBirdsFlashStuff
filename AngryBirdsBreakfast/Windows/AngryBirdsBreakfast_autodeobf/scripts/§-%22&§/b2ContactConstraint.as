package §-"&§
{
   import §'F§.*;
   import §3!`§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §=i§:Vector.<b2ContactConstraintPoint>;
      
      public var § !8§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?!!§:b2Mat22;
      
      public var §""%§:b2Mat22;
      
      public var §'!n§:b2Body;
      
      public var § 5§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §>!%§:int;
      
      public var §@!o§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§ !8§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§?!!§ = new b2Mat22();
         this.§""%§ = new b2Mat22();
         super();
         this.§=i§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§=i§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
