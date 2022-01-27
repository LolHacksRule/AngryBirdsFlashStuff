package §-!!§
{
   import § !_§.b2Transform;
   import § !_§.b2Vec2;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §^t§.b2AABB;
   import §^t§.b2Distance;
   import §^t§.b2DistanceInput;
   import §^t§.b2DistanceOutput;
   import §^t§.b2DistanceProxy;
   import §^t§.b2RayCastInput;
   import §^t§.b2RayCastOutput;
   import §^t§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §4N§:int = -1;
      
      b2internal static const §2T§:int = 0;
      
      b2internal static const §>H§:int = 1;
      
      b2internal static const §>"§:int = 2;
      
      b2internal static const §?`§:int = 3;
      
      public static const §-3§:int = 1;
      
      public static const §=!P§:int = 0;
      
      public static const §6Y§:int = -1;
       
      
      b2internal var §3!a§:int;
      
      b2internal var §?T§:Number;
      
      public function b2Shape()
      {
         super();
         this.§3!a§ = b2internal::4N;
         this.§?T§ = b2Settings.b2_linearSlop;
      }
      
      public static function §"!=§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§[3§ = new b2DistanceProxy();
         _loc5_.§[3§.Set(param1);
         _loc5_.§3p§ = new b2DistanceProxy();
         _loc5_.§3p§.Set(param3);
         _loc5_.§ 6§ = param2;
         _loc5_.§`!>§ = param4;
         _loc5_.§0!P§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§9t§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§6l§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§?T§ = param1.§?T§;
      }
      
      public function §6+§() : int
      {
         return this.§3!a§;
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
