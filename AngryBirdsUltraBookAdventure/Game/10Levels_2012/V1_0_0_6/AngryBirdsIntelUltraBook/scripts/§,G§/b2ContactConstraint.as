package §,G§
{
   import §#V§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §7!4§:Vector.<b2ContactConstraintPoint>;
      
      public var §[!<§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §`!C§:b2Mat22;
      
      public var §&+§:b2Mat22;
      
      public var §0w§:b2Body;
      
      public var §^2§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §@!#§:int;
      
      public var §0q§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§[!<§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§`!C§ = new b2Mat22();
         this.§&+§ = new b2Mat22();
         super();
         this.§7!4§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§7!4§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
