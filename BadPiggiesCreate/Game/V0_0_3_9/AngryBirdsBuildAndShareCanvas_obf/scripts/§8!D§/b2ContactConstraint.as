package §8!D§
{
   import §-!G§.*;
   import §7"'§.*;
   import §=9§.*;
   import §[!Z§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §^!o§:Vector.<b2ContactConstraintPoint>;
      
      public var §#6§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §=h§:b2Mat22;
      
      public var §@"$§:b2Mat22;
      
      public var §<!S§:b2Body;
      
      public var §=Y§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §0"%§:int;
      
      public var §%x§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§#6§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§=h§ = new b2Mat22();
         this.§@"$§ = new b2Mat22();
         super();
         this.§^!o§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§^!o§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
