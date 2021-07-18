package §'"6§
{
   import §'"-§.*;
   import §,"[§.*;
   import §6!^§.*;
   import §6"1§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §]!@§:Vector.<b2ContactConstraintPoint>;
      
      public var §^P§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §+"G§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §`y§:b2Body;
      
      public var §8!7§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §=!7§:int;
      
      public var §=_§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§^P§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§+"G§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§]!@§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§]!@§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
