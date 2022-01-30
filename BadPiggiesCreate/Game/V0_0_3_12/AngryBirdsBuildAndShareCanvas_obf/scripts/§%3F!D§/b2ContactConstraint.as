package §?!D§
{
   import §&!M§.*;
   import §3!t§.*;
   import §6!`§.*;
   import §;"0§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §[!e§:Vector.<b2ContactConstraintPoint>;
      
      public var §8e§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §5!P§:b2Mat22;
      
      public var §?8§:b2Mat22;
      
      public var §>"$§:b2Body;
      
      public var §%"1§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §,I§:int;
      
      public var §&!`§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§8e§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§5!P§ = new b2Mat22();
         this.§?8§ = new b2Mat22();
         super();
         this.§[!e§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§[!e§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
