package §8`§
{
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §=n§.b2AABB;
   import §=n§.b2Distance;
   import §=n§.b2DistanceInput;
   import §=n§.b2DistanceOutput;
   import §=n§.b2DistanceProxy;
   import §=n§.b2RayCastInput;
   import §=n§.b2RayCastOutput;
   import §=n§.b2SimplexCache;
   import §`!^§.b2Transform;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §7T§:int = -1;
      
      b2internal static const §%!@§:int = 0;
      
      b2internal static const §0B§:int = 1;
      
      b2internal static const §<!g§:int = 2;
      
      b2internal static const §5!+§:int = 3;
      
      public static const § x§:int = 1;
      
      public static const §8!G§:int = 0;
      
      public static const §+5§:int = -1;
       
      
      b2internal var §5!'§:int;
      
      b2internal var §]U§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5!'§ = b2internal::7T;
         this.§]U§ = b2Settings.b2_linearSlop;
      }
      
      public static function §-!§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§!!H§ = new b2DistanceProxy();
         _loc5_.§!!H§.Set(param1);
         _loc5_.§]!]§ = new b2DistanceProxy();
         _loc5_.§]!]§.Set(param3);
         _loc5_.§@y§ = param2;
         _loc5_.§+!"§ = param4;
         _loc5_.§7!?§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§7!9§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§"V§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§]U§ = param1.§]U§;
      }
      
      public function §,!d§() : int
      {
         return this.§5!'§;
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
