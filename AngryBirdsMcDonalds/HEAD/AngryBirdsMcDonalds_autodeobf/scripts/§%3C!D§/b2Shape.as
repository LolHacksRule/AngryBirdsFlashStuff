package §<!D§
{
   import §+S§.b2Transform;
   import §+S§.b2Vec2;
   import §,!V§.b2AABB;
   import §,!V§.b2Distance;
   import §,!V§.b2DistanceInput;
   import §,!V§.b2DistanceOutput;
   import §,!V§.b2DistanceProxy;
   import §,!V§.b2RayCastInput;
   import §,!V§.b2RayCastOutput;
   import §,!V§.b2SimplexCache;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §2p§:int = -1;
      
      b2internal static const §8M§:int = 0;
      
      b2internal static const §%'§:int = 1;
      
      b2internal static const §&!n§:int = 2;
      
      b2internal static const §4!'§:int = 3;
      
      public static const §-!G§:int = 1;
      
      public static const § S§:int = 0;
      
      public static const § b§:int = -1;
       
      
      b2internal var §@k§:int;
      
      b2internal var §0!7§:Number;
      
      public function b2Shape()
      {
         super();
         this.§@k§ = b2internal::2p;
         this.§0!7§ = b2Settings.b2_linearSlop;
      }
      
      public static function §?3§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§1e§ = new b2DistanceProxy();
         _loc5_.§1e§.Set(param1);
         _loc5_.§8!"§ = new b2DistanceProxy();
         _loc5_.§8!"§.Set(param3);
         _loc5_.§#!S§ = param2;
         _loc5_.§^!2§ = param4;
         _loc5_.§;!4§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§2!H§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§+!B§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§0!7§ = param1.§0!7§;
      }
      
      public function §1l§() : int
      {
         return this.§@k§;
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
