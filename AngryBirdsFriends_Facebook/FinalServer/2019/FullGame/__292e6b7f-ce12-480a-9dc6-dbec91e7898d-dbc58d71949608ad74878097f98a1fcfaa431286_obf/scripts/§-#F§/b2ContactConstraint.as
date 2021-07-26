package §-#F§
{
   import §&$+§.*;
   import §'#K§.*;
   import §,#E§.*;
   import §04§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §^!>§:Vector.<b2ContactConstraintPoint>;
      
      public var §;"R§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §8!l§:b2Mat22;
      
      public var §?$2§:b2Mat22;
      
      public var §9!Z§:b2Body;
      
      public var §#!_§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §""§:int;
      
      public var §#"h§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§;"R§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§8!l§ = new b2Mat22();
         this.§?$2§ = new b2Mat22();
         super();
         this.§^!>§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§^!>§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
