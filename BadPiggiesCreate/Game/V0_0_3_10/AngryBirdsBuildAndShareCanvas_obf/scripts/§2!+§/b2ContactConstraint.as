package §2!+§
{
   import §!S§.*;
   import §1!1§.*;
   import §?!h§.*;
   import §`]§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §2`§:Vector.<b2ContactConstraintPoint>;
      
      public var §9"2§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §0C§:b2Mat22;
      
      public var §-h§:b2Mat22;
      
      public var §`!z§:b2Body;
      
      public var §#!3§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §3!y§:int;
      
      public var §2"2§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§9"2§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§0C§ = new b2Mat22();
         this.§-h§ = new b2Mat22();
         super();
         this.§2`§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§2`§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
