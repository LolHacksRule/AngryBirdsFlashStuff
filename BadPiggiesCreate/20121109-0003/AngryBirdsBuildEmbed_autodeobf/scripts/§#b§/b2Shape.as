package §#b§
{
   import §'!;§.b2AABB;
   import §'!;§.b2Distance;
   import §'!;§.b2DistanceInput;
   import §'!;§.b2DistanceOutput;
   import §'!;§.b2DistanceProxy;
   import §'!;§.b2RayCastInput;
   import §'!;§.b2RayCastOutput;
   import §'!;§.b2SimplexCache;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §?<§:int = -1;
      
      b2internal static const §@!>§:int = 0;
      
      b2internal static const §>>§:int = 1;
      
      b2internal static const §<5§:int = 2;
      
      b2internal static const §=D§:int = 3;
      
      public static const §!Z§:int = 1;
      
      public static const §[!%§:int = 0;
      
      public static const §"!4§:int = -1;
       
      
      b2internal var §5!Z§:int;
      
      b2internal var §%+§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5!Z§ = b2internal::?<;
         this.§%+§ = b2Settings.b2_linearSlop;
      }
      
      public static function §,!r§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§4M§ = new b2DistanceProxy();
         _loc5_.§4M§.Set(param1);
         _loc5_.§1!]§ = new b2DistanceProxy();
         _loc5_.§1!]§.Set(param3);
         _loc5_.§#! § = param2;
         _loc5_.§&X§ = param4;
         _loc5_.§?^§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§@9§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§[!u§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§%+§ = param1.§%+§;
      }
      
      public function §"!j§() : int
      {
         return this.§5!Z§;
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
