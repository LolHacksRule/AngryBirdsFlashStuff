package §_-26§
{
   import §_-dx§.b2Transform;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   import §_-tK§.b2AABB;
   import §_-tK§.b2Distance;
   import §_-tK§.b2DistanceInput;
   import §_-tK§.b2DistanceOutput;
   import §_-tK§.b2DistanceProxy;
   import §_-tK§.b2RayCastInput;
   import §_-tK§.b2RayCastOutput;
   import §_-tK§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-BU§:int = -1;
      
      b2internal static const §_-UU§:int = 0;
      
      b2internal static const §_-fB§:int = 1;
      
      b2internal static const §_-Ci§:int = 2;
      
      b2internal static const §_-HE§:int = 3;
      
      public static const §_-k6§:int = 1;
      
      public static const §_-BW§:int = 0;
      
      public static const §_-uR§:int = -1;
       
      
      b2internal var §_-9f§:int;
      
      b2internal var §_-8z§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-9f§ = b2internal::_-BU;
         this.§_-8z§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-9u§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-sM§ = new b2DistanceProxy();
         _loc5_.§_-sM§.Set(param1);
         _loc5_.§_-cZ§ = new b2DistanceProxy();
         _loc5_.§_-cZ§.Set(param3);
         _loc5_.§_-3K§ = param2;
         _loc5_.§_-Yp§ = param4;
         _loc5_.§_-pJ§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-aO§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-9q§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-8z§ = param1.§_-8z§;
      }
      
      public function §_-AY§() : int
      {
         return this.§_-9f§;
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
