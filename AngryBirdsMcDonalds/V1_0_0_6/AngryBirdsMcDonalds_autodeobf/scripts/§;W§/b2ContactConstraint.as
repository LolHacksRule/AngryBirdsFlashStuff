package §;W§
{
   import §7!5§.*;
   import §7!Y§.*;
   import §8!n§.*;
   import §@![§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §#!j§:Vector.<b2ContactConstraintPoint>;
      
      public var §4!$§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §2R§:b2Mat22;
      
      public var §0!<§:b2Mat22;
      
      public var §1v§:b2Body;
      
      public var §<W§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §'c§:int;
      
      public var §9%§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§4!$§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§2R§ = new b2Mat22();
         this.§0!<§ = new b2Mat22();
         super();
         this.§#!j§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§#!j§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
