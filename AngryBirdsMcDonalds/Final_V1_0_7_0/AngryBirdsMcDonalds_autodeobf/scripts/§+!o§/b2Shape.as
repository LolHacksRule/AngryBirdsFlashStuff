package §+!o§
{
   import §&!P§.b2AABB;
   import §&!P§.b2Distance;
   import §&!P§.b2DistanceInput;
   import §&!P§.b2DistanceOutput;
   import §&!P§.b2DistanceProxy;
   import §&!P§.b2RayCastInput;
   import §&!P§.b2RayCastOutput;
   import §&!P§.b2SimplexCache;
   import §@g§.b2Settings;
   import §@g§.b2internal;
   import §^!%§.b2Transform;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §>;§:int = -1;
      
      b2internal static const §'B§:int = 0;
      
      b2internal static const §@P§:int = 1;
      
      b2internal static const §@!n§:int = 2;
      
      b2internal static const §]6§:int = 3;
      
      public static const §2e§:int = 1;
      
      public static const §2k§:int = 0;
      
      public static const §%G§:int = -1;
       
      
      b2internal var §,!f§:int;
      
      b2internal var §0!B§:Number;
      
      public function b2Shape()
      {
         super();
         this.§,!f§ = b2internal::>;;
         this.§0!B§ = b2Settings.b2_linearSlop;
      }
      
      public static function §`C§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§@u§ = new b2DistanceProxy();
         _loc5_.§@u§.Set(param1);
         _loc5_.§!>§ = new b2DistanceProxy();
         _loc5_.§!>§.Set(param3);
         _loc5_.§1!N§ = param2;
         _loc5_.§'T§ = param4;
         _loc5_.§!!_§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§@!H§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§8!'§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§0!B§ = param1.§0!B§;
      }
      
      public function §use§() : int
      {
         return this.§,!f§;
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
