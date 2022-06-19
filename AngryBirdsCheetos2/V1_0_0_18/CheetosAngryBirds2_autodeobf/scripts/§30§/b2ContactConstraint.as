package §30§
{
   import § o§.*;
   import §"0§.*;
   import §-r§.*;
   import §6!H§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var § try§:Vector.<b2ContactConstraintPoint>;
      
      public var §]9§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §!!G§:b2Mat22;
      
      public var §-!5§:b2Mat22;
      
      public var §-'§:b2Body;
      
      public var §<!L§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §&n§:int;
      
      public var §,S§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§]9§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§!!G§ = new b2Mat22();
         this.§-!5§ = new b2Mat22();
         super();
         this.§ try§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§ try§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
