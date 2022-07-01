package §6U§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §1!1§.b2AABB;
   import §1!1§.b2Distance;
   import §1!1§.b2DistanceInput;
   import §1!1§.b2DistanceOutput;
   import §1!1§.b2DistanceProxy;
   import §1!1§.b2RayCastInput;
   import §1!1§.b2RayCastOutput;
   import §1!1§.b2SimplexCache;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §?!!§:int = -1;
      
      b2internal static const §^C§:int = 0;
      
      b2internal static const §`"6§:int = 1;
      
      b2internal static const §?!M§:int = 2;
      
      b2internal static const §4U§:int = 3;
      
      public static const §0!m§:int = 1;
      
      public static const §%!X§:int = 0;
      
      public static const §--§:int = -1;
       
      
      b2internal var §""#§:int;
      
      b2internal var §'O§:Number;
      
      public function b2Shape()
      {
         super();
         this.§""#§ = b2internal::?!!;
         this.§'O§ = b2Settings.b2_linearSlop;
      }
      
      public static function §;!p§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§"!s§ = new b2DistanceProxy();
         _loc5_.§"!s§.Set(param1);
         _loc5_.§ !W§ = new b2DistanceProxy();
         _loc5_.§ !W§.Set(param3);
         _loc5_.§-"3§ = param2;
         _loc5_.§"=§ = param4;
         _loc5_.§0A§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§&g§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§3!Q§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§'O§ = param1.§'O§;
      }
      
      public function §8!d§() : int
      {
         return this.§""#§;
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
