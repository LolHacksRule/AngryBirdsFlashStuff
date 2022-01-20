package §6!g§
{
   import §+S§.*;
   import §,!V§.*;
   import §8T§.*;
   import §?!n§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §38§:Vector.<b2ContactConstraintPoint>;
      
      public var §#w§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §;!7§:b2Mat22;
      
      public var §90§:b2Mat22;
      
      public var §-i§:b2Body;
      
      public var §0!F§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §72§:int;
      
      public var §'F§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§#w§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§;!7§ = new b2Mat22();
         this.§90§ = new b2Mat22();
         super();
         this.§38§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§38§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
