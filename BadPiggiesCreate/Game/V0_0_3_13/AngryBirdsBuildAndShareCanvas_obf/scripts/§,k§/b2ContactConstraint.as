package §,k§
{
   import §-g§.*;
   import §1!z§.*;
   import §7!q§.*;
   import §[M§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §^!O§:Vector.<b2ContactConstraintPoint>;
      
      public var §3![§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §8"3§:b2Mat22;
      
      public var §+"?§:b2Mat22;
      
      public var §0",§:b2Body;
      
      public var §^W§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §<"3§:int;
      
      public var §+!#§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§3![§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§8"3§ = new b2Mat22();
         this.§+"?§ = new b2Mat22();
         super();
         this.§^!O§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§^!O§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
