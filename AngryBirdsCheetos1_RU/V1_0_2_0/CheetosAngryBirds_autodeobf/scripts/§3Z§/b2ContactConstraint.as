package §3Z§
{
   import §&!+§.*;
   import §4!&§.*;
   import §8!%§.*;
   import §<!^§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §3?§:Vector.<b2ContactConstraintPoint>;
      
      public var §1!N§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §`0§:b2Mat22;
      
      public var §!n§:b2Mat22;
      
      public var §;!L§:b2Body;
      
      public var §0!U§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §1!H§:int;
      
      public var §5f§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§1!N§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§`0§ = new b2Mat22();
         this.§!n§ = new b2Mat22();
         super();
         this.§3?§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§3?§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
