package §4!4§
{
   import §&!P§.*;
   import §-0§.*;
   import §@g§.*;
   import §^!%§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §=!G§:Vector.<b2ContactConstraintPoint>;
      
      public var §#"§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §]f§:b2Mat22;
      
      public var §"3§:b2Mat22;
      
      public var §>!k§:b2Body;
      
      public var §<u§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §',§:int;
      
      public var §7!K§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§#"§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§]f§ = new b2Mat22();
         this.§"3§ = new b2Mat22();
         super();
         this.§=!G§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§=!G§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
