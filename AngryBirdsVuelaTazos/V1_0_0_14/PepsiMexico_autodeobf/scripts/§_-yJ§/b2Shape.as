package §_-yJ§
{
   import §_-4n§.b2Transform;
   import §_-4n§.b2Vec2;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §_-iw§.b2AABB;
   import §_-iw§.b2Distance;
   import §_-iw§.b2DistanceInput;
   import §_-iw§.b2DistanceOutput;
   import §_-iw§.b2DistanceProxy;
   import §_-iw§.b2RayCastInput;
   import §_-iw§.b2RayCastOutput;
   import §_-iw§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-PT§:int = -1;
      
      b2internal static const §_-x7§:int = 0;
      
      b2internal static const §_-yl§:int = 1;
      
      b2internal static const §_-Rn§:int = 2;
      
      b2internal static const §_-vr§:int = 3;
      
      public static const §_-uG§:int = 1;
      
      public static const § var§:int = 0;
      
      public static const §_-0B§:int = -1;
       
      
      b2internal var §_-rI§:int;
      
      b2internal var §_-9H§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-rI§ = b2internal::_-PT;
         this.§_-9H§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-va§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-uI§ = new b2DistanceProxy();
         _loc5_.§_-uI§.Set(param1);
         _loc5_.§_-Hj§ = new b2DistanceProxy();
         _loc5_.§_-Hj§.Set(param3);
         _loc5_.§_-B3§ = param2;
         _loc5_.§_-c4§ = param4;
         _loc5_.§_-DN§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-ef§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-EH§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-9H§ = param1.§_-9H§;
      }
      
      public function §_-hZ§() : int
      {
         return this.§_-rI§;
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
