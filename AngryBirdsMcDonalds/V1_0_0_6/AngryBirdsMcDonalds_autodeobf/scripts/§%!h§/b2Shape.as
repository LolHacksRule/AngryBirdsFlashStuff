package §%!h§
{
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §8!n§.b2AABB;
   import §8!n§.b2Distance;
   import §8!n§.b2DistanceInput;
   import §8!n§.b2DistanceOutput;
   import §8!n§.b2DistanceProxy;
   import §8!n§.b2RayCastInput;
   import §8!n§.b2RayCastOutput;
   import §8!n§.b2SimplexCache;
   import §@![§.b2Transform;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §0!L§:int = -1;
      
      b2internal static const §9D§:int = 0;
      
      b2internal static const §]!k§:int = 1;
      
      b2internal static const §!!U§:int = 2;
      
      b2internal static const §4T§:int = 3;
      
      public static const §&!'§:int = 1;
      
      public static const §5!D§:int = 0;
      
      public static const §<!Z§:int = -1;
       
      
      b2internal var §3l§:int;
      
      b2internal var §?!U§:Number;
      
      public function b2Shape()
      {
         super();
         this.§3l§ = b2internal::0!L;
         this.§?!U§ = b2Settings.b2_linearSlop;
      }
      
      public static function §!![§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§1!'§ = new b2DistanceProxy();
         _loc5_.§1!'§.Set(param1);
         _loc5_.§<!j§ = new b2DistanceProxy();
         _loc5_.§<!j§.Set(param3);
         _loc5_.§0!]§ = param2;
         _loc5_.§6!`§ = param4;
         _loc5_.§=-§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§<9§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§2!&§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§?!U§ = param1.§?!U§;
      }
      
      public function §&!B§() : int
      {
         return this.§3l§;
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
