package §;T§
{
   import §+S§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §>"%§:Vector.<b2ContactConstraintPoint>;
      
      public var § !Y§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §#9§:b2Mat22;
      
      public var §@V§:b2Mat22;
      
      public var §@!<§:b2Body;
      
      public var §3j§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §<"5§:int;
      
      public var §implements§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§ !Y§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§#9§ = new b2Mat22();
         this.§@V§ = new b2Mat22();
         super();
         this.§>"%§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§>"%§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
