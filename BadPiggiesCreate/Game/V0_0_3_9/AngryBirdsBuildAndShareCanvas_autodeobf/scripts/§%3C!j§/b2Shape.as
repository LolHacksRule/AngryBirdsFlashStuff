package §<!j§
{
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §7"'§.b2Settings;
   import §7"'§.b2internal;
   import §[!Z§.b2AABB;
   import §[!Z§.b2Distance;
   import §[!Z§.b2DistanceInput;
   import §[!Z§.b2DistanceOutput;
   import §[!Z§.b2DistanceProxy;
   import §[!Z§.b2RayCastInput;
   import §[!Z§.b2RayCastOutput;
   import §[!Z§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §+"§:int = -1;
      
      b2internal static const §;e§:int = 0;
      
      b2internal static const §[X§:int = 1;
      
      b2internal static const §9"-§:int = 2;
      
      b2internal static const §@![§:int = 3;
      
      public static const §"!x§:int = 1;
      
      public static const §3"6§:int = 0;
      
      public static const §1!e§:int = -1;
       
      
      b2internal var §!!y§:int;
      
      b2internal var §7!1§:Number;
      
      public function b2Shape()
      {
         super();
         this.§!!y§ = b2internal::+";
         this.§7!1§ = b2Settings.b2_linearSlop;
      }
      
      public static function §<!O§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§=!#§ = new b2DistanceProxy();
         _loc5_.§=!#§.Set(param1);
         _loc5_.§ 3§ = new b2DistanceProxy();
         _loc5_.§ 3§.Set(param3);
         _loc5_.§#"'§ = param2;
         _loc5_.§%!U§ = param4;
         _loc5_.§2!m§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§1!§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§3"#§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§7!1§ = param1.§7!1§;
      }
      
      public function get() : int
      {
         return this.§!!y§;
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
