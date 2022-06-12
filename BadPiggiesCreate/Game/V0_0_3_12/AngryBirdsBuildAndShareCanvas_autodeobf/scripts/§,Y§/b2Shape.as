package §,Y§
{
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   import §;"0§.b2AABB;
   import §;"0§.b2Distance;
   import §;"0§.b2DistanceInput;
   import §;"0§.b2DistanceOutput;
   import §;"0§.b2DistanceProxy;
   import §;"0§.b2RayCastInput;
   import §;"0§.b2RayCastOutput;
   import §;"0§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §>!R§:int = -1;
      
      b2internal static const §93§:int = 0;
      
      b2internal static const §-n§:int = 1;
      
      b2internal static const §!;§:int = 2;
      
      b2internal static const §#!k§:int = 3;
      
      public static const §;!A§:int = 1;
      
      public static const §,!b§:int = 0;
      
      public static const §6!K§:int = -1;
       
      
      b2internal var §+V§:int;
      
      b2internal var §[!?§:Number;
      
      public function b2Shape()
      {
         super();
         this.§+V§ = b2internal::>!R;
         this.§[!?§ = b2Settings.b2_linearSlop;
      }
      
      public static function §3!z§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§!!z§ = new b2DistanceProxy();
         _loc5_.§!!z§.Set(param1);
         _loc5_.§,!e§ = new b2DistanceProxy();
         _loc5_.§,!e§.Set(param3);
         _loc5_.§@@§ = param2;
         _loc5_.§class§ = param4;
         _loc5_.§%!@§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§^!-§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§=Y§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§[!?§ = param1.§[!?§;
      }
      
      public function §6!Q§() : int
      {
         return this.§+V§;
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
