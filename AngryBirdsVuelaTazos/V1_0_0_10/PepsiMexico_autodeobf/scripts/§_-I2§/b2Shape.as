package §_-I2§
{
   import §_-Et§.b2AABB;
   import §_-Et§.b2Distance;
   import §_-Et§.b2DistanceInput;
   import §_-Et§.b2DistanceOutput;
   import §_-Et§.b2DistanceProxy;
   import §_-Et§.b2RayCastInput;
   import §_-Et§.b2RayCastOutput;
   import §_-Et§.b2SimplexCache;
   import §_-Zl§.b2Transform;
   import §_-Zl§.b2Vec2;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-vl§:int = -1;
      
      b2internal static const §_-sH§:int = 0;
      
      b2internal static const §_-Sw§:int = 1;
      
      b2internal static const §_-bK§:int = 2;
      
      b2internal static const §_-go§:int = 3;
      
      public static const §_-qH§:int = 1;
      
      public static const §_-HU§:int = 0;
      
      public static const §_-2g§:int = -1;
       
      
      b2internal var §_-K9§:int;
      
      b2internal var §_-Bn§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-K9§ = b2internal::_-vl;
         this.§_-Bn§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-e2§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-LU§ = new b2DistanceProxy();
         _loc5_.§_-LU§.Set(param1);
         _loc5_.§_-5K§ = new b2DistanceProxy();
         _loc5_.§_-5K§.Set(param3);
         _loc5_.§_-rZ§ = param2;
         _loc5_.§_-QV§ = param4;
         _loc5_.§_-Yp§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-NY§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-WE§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-Bn§ = param1.§_-Bn§;
      }
      
      public function §_-Iy§() : int
      {
         return this.§_-K9§;
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
