package §_-cG§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cP§.b2Transform;
   import §_-cP§.b2Vec2;
   import §_-yI§.b2AABB;
   import §_-yI§.b2Distance;
   import §_-yI§.b2DistanceInput;
   import §_-yI§.b2DistanceOutput;
   import §_-yI§.b2DistanceProxy;
   import §_-yI§.b2RayCastInput;
   import §_-yI§.b2RayCastOutput;
   import §_-yI§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-Tp§:int = -1;
      
      b2internal static const §_-RR§:int = 0;
      
      b2internal static const §_-fT§:int = 1;
      
      b2internal static const §_-iw§:int = 2;
      
      b2internal static const §_-hK§:int = 3;
      
      public static const §_-Z1§:int = 1;
      
      public static const §_-VV§:int = 0;
      
      public static const §_-wP§:int = -1;
       
      
      b2internal var §_-f7§:int;
      
      b2internal var §_-EO§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-f7§ = b2internal::_-Tp;
         this.§_-EO§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-wT§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-s1§ = new b2DistanceProxy();
         _loc5_.§_-s1§.Set(param1);
         _loc5_.§_-vt§ = new b2DistanceProxy();
         _loc5_.§_-vt§.Set(param3);
         _loc5_.§_-uv§ = param2;
         _loc5_.§_-d2§ = param4;
         _loc5_.§_-Rd§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-T2§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-qK§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-EO§ = param1.§_-EO§;
      }
      
      public function §_-sl§() : int
      {
         return this.§_-f7§;
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
