package §2!Q§
{
   import §&!n§.b2AABB;
   import §&!n§.b2Distance;
   import §&!n§.b2DistanceInput;
   import §&!n§.b2DistanceOutput;
   import §&!n§.b2DistanceProxy;
   import §&!n§.b2RayCastInput;
   import §&!n§.b2RayCastOutput;
   import §&!n§.b2SimplexCache;
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §94§:int = -1;
      
      b2internal static const §1"2§:int = 0;
      
      b2internal static const §;!y§:int = 1;
      
      b2internal static const §+!w§:int = 2;
      
      b2internal static const §5!t§:int = 3;
      
      public static const §6k§:int = 1;
      
      public static const §51§:int = 0;
      
      public static const §"4§:int = -1;
       
      
      b2internal var §;M§:int;
      
      b2internal var §&!o§:Number;
      
      public function b2Shape()
      {
         super();
         this.§;M§ = b2internal::94;
         this.§&!o§ = b2Settings.b2_linearSlop;
      }
      
      public static function §=!1§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§+!k§ = new b2DistanceProxy();
         _loc5_.§+!k§.Set(param1);
         _loc5_.§"!^§ = new b2DistanceProxy();
         _loc5_.§"!^§.Set(param3);
         _loc5_.§^$§ = param2;
         _loc5_.§>"!§ = param4;
         _loc5_.§@@§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§^"1§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§%"$§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§&!o§ = param1.§&!o§;
      }
      
      public function §7![§() : int
      {
         return this.§;M§;
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
