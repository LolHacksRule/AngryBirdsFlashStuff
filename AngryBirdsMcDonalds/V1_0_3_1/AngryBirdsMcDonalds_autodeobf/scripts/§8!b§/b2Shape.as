package §8!b§
{
   import §-!T§.b2AABB;
   import §-!T§.b2Distance;
   import §-!T§.b2DistanceInput;
   import §-!T§.b2DistanceOutput;
   import §-!T§.b2DistanceProxy;
   import §-!T§.b2RayCastInput;
   import §-!T§.b2RayCastOutput;
   import §-!T§.b2SimplexCache;
   import §0,§.b2Transform;
   import §0,§.b2Vec2;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §2R§:int = -1;
      
      b2internal static const §<7§:int = 0;
      
      b2internal static const §5!e§:int = 1;
      
      b2internal static const §7H§:int = 2;
      
      b2internal static const § !N§:int = 3;
      
      public static const §3!Z§:int = 1;
      
      public static const §5!d§:int = 0;
      
      public static const §=!A§:int = -1;
       
      
      b2internal var §5!a§:int;
      
      b2internal var §=V§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5!a§ = b2internal::2R;
         this.§=V§ = b2Settings.b2_linearSlop;
      }
      
      public static function §7q§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§'w§ = new b2DistanceProxy();
         _loc5_.§'w§.Set(param1);
         _loc5_.§+!S§ = new b2DistanceProxy();
         _loc5_.§+!S§.Set(param3);
         _loc5_.§-L§ = param2;
         _loc5_.§>O§ = param4;
         _loc5_.§=!U§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§'!1§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§;8§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§=V§ = param1.§=V§;
      }
      
      public function §"!I§() : int
      {
         return this.§5!a§;
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
