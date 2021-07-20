package §#!0§
{
   import §!m§.*;
   import §+!g§.*;
   import §>!8§.*;
   import §>!L§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §]!8§:Vector.<b2ContactConstraintPoint>;
      
      public var §#!#§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §#!=§:b2Mat22;
      
      public var §'!§:b2Mat22;
      
      public var §7l§:b2Body;
      
      public var §<H§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §39§:int;
      
      public var §8S§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§#!#§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§#!=§ = new b2Mat22();
         this.§'!§ = new b2Mat22();
         super();
         this.§]!8§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§]!8§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
