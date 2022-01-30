package §!!o§
{
   import §,P§.*;
   import §-%§.*;
   import §9"5§.*;
   import §>!R§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §2l§:Vector.<b2ContactConstraintPoint>;
      
      public var §&!W§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §^d§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §6z§:b2Body;
      
      public var §@! §:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §`!6§:int;
      
      public var §`e§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§&!W§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§^d§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§2l§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§2l§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
