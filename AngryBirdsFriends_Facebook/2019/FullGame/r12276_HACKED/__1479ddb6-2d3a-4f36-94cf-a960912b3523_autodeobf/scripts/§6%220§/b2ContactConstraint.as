package §6"0§
{
   import §1#F§.*;
   import §3#h§.*;
   import §6!R§.*;
   import §9$A§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §["+§:Vector.<b2ContactConstraintPoint>;
      
      public var §5!?§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §8S§:b2Mat22;
      
      public var §'^§:b2Mat22;
      
      public var §,E§:b2Body;
      
      public var §&$7§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §#"v§:int;
      
      public var §9e§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§5!?§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§8S§ = new b2Mat22();
         this.§'^§ = new b2Mat22();
         super();
         this.§["+§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§["+§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
