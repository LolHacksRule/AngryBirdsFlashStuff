package §?m§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §,!k§.b2Transform;
   import §,!k§.b2Vec2;
   import §6f§.b2AABB;
   import §6f§.b2Distance;
   import §6f§.b2DistanceInput;
   import §6f§.b2DistanceOutput;
   import §6f§.b2DistanceProxy;
   import §6f§.b2RayCastInput;
   import §6f§.b2RayCastOutput;
   import §6f§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §4!H§:int = -1;
      
      b2internal static const §;"4§:int = 0;
      
      b2internal static const §!Y§:int = 1;
      
      b2internal static const §3J§:int = 2;
      
      b2internal static const §3"%§:int = 3;
      
      public static const § !x§:int = 1;
      
      public static const §9!%§:int = 0;
      
      public static const §>W§:int = -1;
       
      
      b2internal var §=!;§:int;
      
      b2internal var §["2§:Number;
      
      public function b2Shape()
      {
         super();
         this.§=!;§ = b2internal::4!H;
         this.§["2§ = b2Settings.b2_linearSlop;
      }
      
      public static function §;!s§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§1!J§ = new b2DistanceProxy();
         _loc5_.§1!J§.Set(param1);
         _loc5_.§-!?§ = new b2DistanceProxy();
         _loc5_.§-!?§.Set(param3);
         _loc5_.§`"!§ = param2;
         _loc5_.§7K§ = param4;
         _loc5_.§9!O§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§]!;§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§#!a§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§["2§ = param1.§["2§;
      }
      
      public function §]"$§() : int
      {
         return this.§=!;§;
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
