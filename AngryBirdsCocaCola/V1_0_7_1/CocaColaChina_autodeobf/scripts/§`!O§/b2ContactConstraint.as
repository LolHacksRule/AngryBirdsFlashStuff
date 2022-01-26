package §`!O§
{
   import § Y§.*;
   import §#!M§.*;
   import §4U§.*;
   import §<!8§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §2i§:Vector.<b2ContactConstraintPoint>;
      
      public var §1!0§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §,z§:b2Mat22;
      
      public var §@!M§:b2Mat22;
      
      public var §'@§:b2Body;
      
      public var §"!2§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §?!!§:int;
      
      public var §`!6§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§1!0§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§,z§ = new b2Mat22();
         this.§@!M§ = new b2Mat22();
         super();
         this.§2i§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§2i§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
