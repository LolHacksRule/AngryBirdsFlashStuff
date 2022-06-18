package §+#f§
{
   import §%!9§.b2Transform;
   import §%!9§.b2Vec2;
   import §7"^§.b2AABB;
   import §7"^§.b2Distance;
   import §7"^§.b2DistanceInput;
   import §7"^§.b2DistanceOutput;
   import §7"^§.b2DistanceProxy;
   import §7"^§.b2RayCastInput;
   import §7"^§.b2RayCastOutput;
   import §7"^§.b2SimplexCache;
   import §9#K§.b2Settings;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §&Z§:int = -1;
      
      b2internal static const § j§:int = 0;
      
      b2internal static const §"!<§:int = 1;
      
      b2internal static const §%$,§:int = 2;
      
      b2internal static const §-"7§:int = 3;
      
      public static const §2! §:int = 1;
      
      public static const §-#7§:int = 0;
      
      public static const §[5§:int = -1;
       
      
      b2internal var §9!a§:int;
      
      b2internal var §[1§:Number;
      
      public function b2Shape()
      {
         super();
         this.§9!a§ = b2internal::&Z;
         this.§[1§ = b2Settings.b2_linearSlop;
      }
      
      public static function §+$&§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§7"'§ = new b2DistanceProxy();
         _loc5_.§7"'§.Set(param1);
         _loc5_.§>z§ = new b2DistanceProxy();
         _loc5_.§>z§.Set(param3);
         _loc5_.§"!a§ = param2;
         _loc5_.§+!8§ = param4;
         _loc5_.§'#u§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§"u§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§0!j§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§[1§ = param1.§[1§;
      }
      
      public function §%"+§() : int
      {
         return this.§9!a§;
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
