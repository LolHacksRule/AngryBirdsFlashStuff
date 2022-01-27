package §>6§
{
   import §'!a§.*;
   import §6!n§.*;
   import §9!K§.*;
   import §;!Z§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §'"2§:Vector.<b2ContactConstraintPoint>;
      
      public var §,-§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §5w§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §0f§:b2Body;
      
      public var §>F§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §7!Z§:int;
      
      public var §=!=§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§,-§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§5w§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§'"2§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§'"2§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
