package §,C§
{
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2AABB;
   import §8w§.b2Distance;
   import §8w§.b2DistanceInput;
   import §8w§.b2DistanceOutput;
   import §8w§.b2DistanceProxy;
   import §8w§.b2RayCastInput;
   import §8w§.b2RayCastOutput;
   import §8w§.b2SimplexCache;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const § !n§:int = -1;
      
      b2internal static const §1"§:int = 0;
      
      b2internal static const §+!N§:int = 1;
      
      b2internal static const §`!<§:int = 2;
      
      b2internal static const §6§:int = 3;
      
      public static const §6E§:int = 1;
      
      public static const §+!e§:int = 0;
      
      public static const §%!S§:int = -1;
       
      
      b2internal var §"_§:int;
      
      b2internal var §?!X§:Number;
      
      public function b2Shape()
      {
         super();
         this.§"_§ = b2internal:: !n;
         this.§?!X§ = b2Settings.b2_linearSlop;
      }
      
      public static function §3!V§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§9!;§ = new b2DistanceProxy();
         _loc5_.§9!;§.Set(param1);
         _loc5_.§ !%§ = new b2DistanceProxy();
         _loc5_.§ !%§.Set(param3);
         _loc5_.§ T§ = param2;
         _loc5_.§?!+§ = param4;
         _loc5_.§5!=§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§3H§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§6=§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§?!X§ = param1.§?!X§;
      }
      
      public function §'!_§() : int
      {
         return this.§"_§;
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
