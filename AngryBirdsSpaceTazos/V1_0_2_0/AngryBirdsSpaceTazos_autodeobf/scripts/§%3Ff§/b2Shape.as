package §?f§
{
   import §&!S§.b2Transform;
   import §&!S§.b2Vec2;
   import §3m§.b2AABB;
   import §3m§.b2Distance;
   import §3m§.b2DistanceInput;
   import §3m§.b2DistanceOutput;
   import §3m§.b2DistanceProxy;
   import §3m§.b2RayCastInput;
   import §3m§.b2RayCastOutput;
   import §3m§.b2SimplexCache;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §[!,§:int = -1;
      
      b2internal static const §>"?§:int = 0;
      
      b2internal static const §"P§:int = 1;
      
      b2internal static const §9+§:int = 2;
      
      b2internal static const §4!J§:int = 3;
      
      public static const §["3§:int = 1;
      
      public static const §in§:int = 0;
      
      public static const §0-§:int = -1;
       
      
      b2internal var §5!q§:int;
      
      b2internal var §'"D§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5!q§ = b2internal::[!,;
         this.§'"D§ = b2Settings.b2_linearSlop;
      }
      
      public static function §7"3§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§@!§ = new b2DistanceProxy();
         _loc5_.§@!§.Set(param1);
         _loc5_.§'%§ = new b2DistanceProxy();
         _loc5_.§'%§.Set(param3);
         _loc5_.§[!M§ = param2;
         _loc5_.§#!a§ = param4;
         _loc5_.§7!n§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§[!U§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§6b§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§'"D§ = param1.§'"D§;
      }
      
      public function §,!k§() : int
      {
         return this.§5!q§;
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
