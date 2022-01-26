package §69§
{
   import §0!2§.*;
   import §;]§.*;
   import §=E§.*;
   import §?!0§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §=R§:Vector.<b2ContactConstraintPoint>;
      
      public var §#J§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §+!=§:b2Mat22;
      
      public var §3Y§:b2Mat22;
      
      public var §<§:b2Body;
      
      public var §,!M§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §,!H§:int;
      
      public var §0t§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§#J§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§+!=§ = new b2Mat22();
         this.§3Y§ = new b2Mat22();
         super();
         this.§=R§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§=R§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
