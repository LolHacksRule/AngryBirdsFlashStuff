package §_-03n§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-gE§.b2AABB;
   import §_-gE§.b2Distance;
   import §_-gE§.b2DistanceInput;
   import §_-gE§.b2DistanceOutput;
   import §_-gE§.b2DistanceProxy;
   import §_-gE§.b2RayCastInput;
   import §_-gE§.b2RayCastOutput;
   import §_-gE§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-DM§:int = -1;
      
      b2internal static const §_-rv§:int = 0;
      
      b2internal static const §_-04L§:int = 1;
      
      b2internal static const §_-Ee§:int = 2;
      
      b2internal static const §_-ZC§:int = 3;
      
      public static const §_-R4§:int = 1;
      
      public static const §_-41§:int = 0;
      
      public static const §_-WP§:int = -1;
       
      
      b2internal var §_-1c§:int;
      
      b2internal var §_-0CZ§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-1c§ = b2internal::_-DM;
         this.§_-0CZ§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-Rd§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-05Z§ = new b2DistanceProxy();
         _loc5_.§_-05Z§.Set(param1);
         _loc5_.§_-l4§ = new b2DistanceProxy();
         _loc5_.§_-l4§.Set(param3);
         _loc5_.§_-Jr§ = param2;
         _loc5_.§_-St§ = param4;
         _loc5_.§_-029§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-Gt§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-1P§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-0CZ§ = param1.§_-0CZ§;
      }
      
      public function §_-oF§() : int
      {
         return this.§_-1c§;
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
