package §[e§
{
   import §-j§.b2AABB;
   import §-j§.b2Distance;
   import §-j§.b2DistanceInput;
   import §-j§.b2DistanceOutput;
   import §-j§.b2DistanceProxy;
   import §-j§.b2RayCastInput;
   import §-j§.b2RayCastOutput;
   import §-j§.b2SimplexCache;
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §[K§.b2Transform;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §>!z§:int = -1;
      
      b2internal static const §?!%§:int = 0;
      
      b2internal static const §+"0§:int = 1;
      
      b2internal static const §%c§:int = 2;
      
      b2internal static const §5!E§:int = 3;
      
      public static const §=!Z§:int = 1;
      
      public static const §9Z§:int = 0;
      
      public static const §;!x§:int = -1;
       
      
      b2internal var §5"6§:int;
      
      b2internal var §-!D§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5"6§ = b2internal::>!z;
         this.§-!D§ = b2Settings.b2_linearSlop;
      }
      
      public static function §^s§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§&!p§ = new b2DistanceProxy();
         _loc5_.§&!p§.Set(param1);
         _loc5_.§[m§ = new b2DistanceProxy();
         _loc5_.§[m§.Set(param3);
         _loc5_.§@!&§ = param2;
         _loc5_.§=!f§ = param4;
         _loc5_.§%" § = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§-"$§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§9d§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§-!D§ = param1.§-!D§;
      }
      
      public function §&!u§() : int
      {
         return this.§5"6§;
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
