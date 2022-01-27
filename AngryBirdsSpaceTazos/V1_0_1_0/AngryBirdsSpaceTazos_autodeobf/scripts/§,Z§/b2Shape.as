package §,Z§
{
   import §3c§.b2AABB;
   import §3c§.b2Distance;
   import §3c§.b2DistanceInput;
   import §3c§.b2DistanceOutput;
   import §3c§.b2DistanceProxy;
   import §3c§.b2RayCastInput;
   import §3c§.b2RayCastOutput;
   import §3c§.b2SimplexCache;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §!!U§:int = -1;
      
      b2internal static const §-M§:int = 0;
      
      b2internal static const §4"+§:int = 1;
      
      b2internal static const §0"§:int = 2;
      
      b2internal static const §=",§:int = 3;
      
      public static const §8!7§:int = 1;
      
      public static const §^6§:int = 0;
      
      public static const §2v§:int = -1;
       
      
      b2internal var §0w§:int;
      
      b2internal var §7!m§:Number;
      
      public function b2Shape()
      {
         super();
         this.§0w§ = b2internal::!!U;
         this.§7!m§ = b2Settings.b2_linearSlop;
      }
      
      public static function §5"0§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§3">§ = new b2DistanceProxy();
         _loc5_.§3">§.Set(param1);
         _loc5_.§&!"§ = new b2DistanceProxy();
         _loc5_.§&!"§.Set(param3);
         _loc5_.§>"0§ = param2;
         _loc5_.§#_§ = param4;
         _loc5_.§'!g§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§!!z§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§]1§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§7!m§ = param1.§7!m§;
      }
      
      public function §@!N§() : int
      {
         return this.§0w§;
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
