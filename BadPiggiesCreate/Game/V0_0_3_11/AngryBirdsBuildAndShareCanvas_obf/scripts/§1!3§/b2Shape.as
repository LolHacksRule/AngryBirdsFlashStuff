package §1!3§
{
   import § 6§.b2AABB;
   import § 6§.b2Distance;
   import § 6§.b2DistanceInput;
   import § 6§.b2DistanceOutput;
   import § 6§.b2DistanceProxy;
   import § 6§.b2RayCastInput;
   import § 6§.b2RayCastOutput;
   import § 6§.b2SimplexCache;
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §6S§:int = -1;
      
      b2internal static const §'6§:int = 0;
      
      b2internal static const §4!Q§:int = 1;
      
      b2internal static const §-"$§:int = 2;
      
      b2internal static const §19§:int = 3;
      
      public static const §1K§:int = 1;
      
      public static const §-!'§:int = 0;
      
      public static const §54§:int = -1;
       
      
      b2internal var §7!S§:int;
      
      b2internal var §5^§:Number;
      
      public function b2Shape()
      {
         super();
         this.§7!S§ = b2internal::6S;
         this.§5^§ = b2Settings.b2_linearSlop;
      }
      
      public static function §&!P§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§#!=§ = new b2DistanceProxy();
         _loc5_.§#!=§.Set(param1);
         _loc5_.§;P§ = new b2DistanceProxy();
         _loc5_.§;P§.Set(param3);
         _loc5_.§#" § = param2;
         _loc5_.§%z§ = param4;
         _loc5_.§;!Q§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§,!3§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§!m§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§5^§ = param1.§5^§;
      }
      
      public function §,!B§() : int
      {
         return this.§7!S§;
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
