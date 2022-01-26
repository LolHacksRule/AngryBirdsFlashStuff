package §_-8i§
{
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-wZ§.b2AABB;
   import §_-wZ§.b2Distance;
   import §_-wZ§.b2DistanceInput;
   import §_-wZ§.b2DistanceOutput;
   import §_-wZ§.b2DistanceProxy;
   import §_-wZ§.b2RayCastInput;
   import §_-wZ§.b2RayCastOutput;
   import §_-wZ§.b2SimplexCache;
   import §var§.b2Transform;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-C8§:int = -1;
      
      b2internal static const §_-LV§:int = 0;
      
      b2internal static const §_-Bp§:int = 1;
      
      b2internal static const §_-pV§:int = 2;
      
      b2internal static const §_-c4§:int = 3;
      
      public static const §_-71§:int = 1;
      
      public static const §_-LY§:int = 0;
      
      public static const §_-I6§:int = -1;
       
      
      b2internal var §_-64§:int;
      
      b2internal var §_-uG§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-64§ = b2internal::_-C8;
         this.§_-uG§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-db§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-RO§ = new b2DistanceProxy();
         _loc5_.§_-RO§.Set(param1);
         _loc5_.§_-5J§ = new b2DistanceProxy();
         _loc5_.§_-5J§.Set(param3);
         _loc5_.§_-wt§ = param2;
         _loc5_.§_-HJ§ = param4;
         _loc5_.§_-nG§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-CU§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-L3§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-uG§ = param1.§_-uG§;
      }
      
      public function §_-kK§() : int
      {
         return this.§_-64§;
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
