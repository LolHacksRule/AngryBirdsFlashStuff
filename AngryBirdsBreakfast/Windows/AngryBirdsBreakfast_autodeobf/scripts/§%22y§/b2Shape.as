package §"y§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §^9§.b2AABB;
   import §^9§.b2Distance;
   import §^9§.b2DistanceInput;
   import §^9§.b2DistanceOutput;
   import §^9§.b2DistanceProxy;
   import §^9§.b2RayCastInput;
   import §^9§.b2RayCastOutput;
   import §^9§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §9N§:int = -1;
      
      b2internal static const §9_§:int = 0;
      
      b2internal static const §2e§:int = 1;
      
      b2internal static const §[!Q§:int = 2;
      
      b2internal static const §@!y§:int = 3;
      
      public static const §>N§:int = 1;
      
      public static const §8""§:int = 0;
      
      public static const §,!N§:int = -1;
       
      
      b2internal var §6m§:int;
      
      b2internal var §,!;§:Number;
      
      public function b2Shape()
      {
         super();
         this.§6m§ = b2internal::9N;
         this.§,!;§ = b2Settings.b2_linearSlop;
      }
      
      public static function §]",§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§2J§ = new b2DistanceProxy();
         _loc5_.§2J§.Set(param1);
         _loc5_.§4"$§ = new b2DistanceProxy();
         _loc5_.§4"$§.Set(param3);
         _loc5_.§'"-§ = param2;
         _loc5_.§>!r§ = param4;
         _loc5_.§28§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§'T§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§1_§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§,!;§ = param1.§,!;§;
      }
      
      public function §<!A§() : int
      {
         return this.§6m§;
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
