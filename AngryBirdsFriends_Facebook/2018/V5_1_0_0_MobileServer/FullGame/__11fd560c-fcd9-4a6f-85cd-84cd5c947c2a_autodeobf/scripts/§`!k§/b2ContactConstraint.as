package §`!k§
{
   import § "%§.*;
   import §'"$§.*;
   import §,!s§.*;
   import §4"O§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §;$$§:Vector.<b2ContactConstraintPoint>;
      
      public var §>#R§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §%##§:b2Mat22;
      
      public var §4#W§:b2Mat22;
      
      public var §'§:b2Body;
      
      public var §>!2§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §7!$§:int;
      
      public var §2!_§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§>#R§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§%##§ = new b2Mat22();
         this.§4#W§ = new b2Mat22();
         super();
         this.§;$$§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§;$$§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
