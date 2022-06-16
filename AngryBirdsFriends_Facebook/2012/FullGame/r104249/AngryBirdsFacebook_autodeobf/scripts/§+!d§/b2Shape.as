package §+!d§
{
   import § !0§.b2AABB;
   import § !0§.b2Distance;
   import § !0§.b2DistanceInput;
   import § !0§.b2DistanceOutput;
   import § !0§.b2DistanceProxy;
   import § !0§.b2RayCastInput;
   import § !0§.b2RayCastOutput;
   import § !0§.b2SimplexCache;
   import §7F§.b2Transform;
   import §7F§.b2Vec2;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §6!w§:int = -1;
      
      b2internal static const §9!y§:int = 0;
      
      b2internal static const §-c§:int = 1;
      
      b2internal static const §^"'§:int = 2;
      
      b2internal static const §"!,§:int = 3;
      
      public static const §#!=§:int = 1;
      
      public static const §+>§:int = 0;
      
      public static const §,s§:int = -1;
       
      
      b2internal var §6N§:int;
      
      b2internal var §,0§:Number;
      
      public function b2Shape()
      {
         super();
         this.§6N§ = b2internal::6!w;
         this.§,0§ = b2Settings.b2_linearSlop;
      }
      
      public static function §;!r§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§7!C§ = new b2DistanceProxy();
         _loc5_.§7!C§.Set(param1);
         _loc5_.§`"!§ = new b2DistanceProxy();
         _loc5_.§`"!§.Set(param3);
         _loc5_.§9!w§ = param2;
         _loc5_.§2]§ = param4;
         _loc5_.§58§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§ !z§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§3"#§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§,0§ = param1.§,0§;
      }
      
      public function §;!w§() : int
      {
         return this.§6N§;
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
