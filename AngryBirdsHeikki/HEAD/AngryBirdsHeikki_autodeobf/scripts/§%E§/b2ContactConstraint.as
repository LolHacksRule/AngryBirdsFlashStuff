package §%E§
{
   import §+d§.*;
   import §6%§.*;
   import §=n§.*;
   import §`!^§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §-Z§:Vector.<b2ContactConstraintPoint>;
      
      public var §8!M§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §;!f§:b2Mat22;
      
      public var §,x§:b2Mat22;
      
      public var §1!V§:b2Body;
      
      public var §;!?§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §++§:int;
      
      public var §8+§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§8!M§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§;!f§ = new b2Mat22();
         this.§,x§ = new b2Mat22();
         super();
         this.§-Z§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§-Z§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
