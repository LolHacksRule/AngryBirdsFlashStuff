package §+!,§
{
   import §%!#§.*;
   import §1x§.*;
   import §9!s§.*;
   import §^>§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §;Y§:Vector.<b2ContactConstraintPoint>;
      
      public var § =§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §3v§:b2Mat22;
      
      public var §=!L§:b2Mat22;
      
      public var §!!x§:b2Body;
      
      public var §%!x§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §6!o§:int;
      
      public var §0"e§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§ =§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§3v§ = new b2Mat22();
         this.§=!L§ = new b2Mat22();
         super();
         this.§;Y§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§;Y§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
