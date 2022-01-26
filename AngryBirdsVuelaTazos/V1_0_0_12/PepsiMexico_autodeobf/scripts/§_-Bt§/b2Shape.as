package §_-Bt§
{
   import §_-9z§.b2Transform;
   import §_-9z§.b2Vec2;
   import §_-Nw§.b2AABB;
   import §_-Nw§.b2Distance;
   import §_-Nw§.b2DistanceInput;
   import §_-Nw§.b2DistanceOutput;
   import §_-Nw§.b2DistanceProxy;
   import §_-Nw§.b2RayCastInput;
   import §_-Nw§.b2RayCastOutput;
   import §_-Nw§.b2SimplexCache;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-0C§:int = -1;
      
      b2internal static const §_-1M§:int = 0;
      
      b2internal static const §_-Tn§:int = 1;
      
      b2internal static const §_-x5§:int = 2;
      
      b2internal static const §_-XC§:int = 3;
      
      public static const §_-O8§:int = 1;
      
      public static const §_-Ux§:int = 0;
      
      public static const §_-Az§:int = -1;
       
      
      b2internal var §_-g1§:int;
      
      b2internal var §_-uB§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-g1§ = b2internal::_-0C;
         this.§_-uB§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-4S§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-gv§ = new b2DistanceProxy();
         _loc5_.§_-gv§.Set(param1);
         _loc5_.§_-KQ§ = new b2DistanceProxy();
         _loc5_.§_-KQ§.Set(param3);
         _loc5_.§_-cv§ = param2;
         _loc5_.§_-Tr§ = param4;
         _loc5_.§_-JK§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-OQ§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-M9§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-uB§ = param1.§_-uB§;
      }
      
      public function §_-7L§() : int
      {
         return this.§_-g1§;
      }
      
      public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         return false;
      }
      
      public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
      }
      
      public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
      }
      
      public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         return 0;
      }
   }
}
