package §3!&§
{
   import §!!B§.*;
   import §7S§.*;
   import §;0§.*;
   import §;U§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §"Q§:Vector.<b2ContactConstraintPoint>;
      
      public var §]`§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §&!2§:b2Mat22;
      
      public var §+"§:b2Mat22;
      
      public var §1U§:b2Body;
      
      public var §"=§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §]!@§:int;
      
      public var § !9§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§]`§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§&!2§ = new b2Mat22();
         this.§+"§ = new b2Mat22();
         super();
         this.§"Q§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"Q§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
