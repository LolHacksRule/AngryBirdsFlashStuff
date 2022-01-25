package §1z§
{
   import §6V§.*;
   import §<!L§.*;
   import §?F§.*;
   import §[!$§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §?!$§:Vector.<b2ContactConstraintPoint>;
      
      public var §!!;§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §5c§:b2Mat22;
      
      public var §8!V§:b2Mat22;
      
      public var §;!9§:b2Body;
      
      public var §;!,§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §^Q§:int;
      
      public var §;_§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§!!;§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§5c§ = new b2Mat22();
         this.§8!V§ = new b2Mat22();
         super();
         this.§?!$§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§?!$§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
