package §4!$§
{
   import §3"5§.b2AABB;
   import §3"5§.b2Distance;
   import §3"5§.b2DistanceInput;
   import §3"5§.b2DistanceOutput;
   import §3"5§.b2DistanceProxy;
   import §3"5§.b2RayCastInput;
   import §3"5§.b2RayCastOutput;
   import §3"5§.b2SimplexCache;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §6#1§:int = -1;
      
      b2internal static const §;!T§:int = 0;
      
      b2internal static const § !7§:int = 1;
      
      b2internal static const §5"l§:int = 2;
      
      b2internal static const §`"#§:int = 3;
      
      public static const §<#K§:int = 1;
      
      public static const §#!6§:int = 0;
      
      public static const §="z§:int = -1;
       
      
      b2internal var §%!9§:int;
      
      b2internal var § "^§:Number;
      
      public function b2Shape()
      {
         super();
         this.§%!9§ = b2internal::6#1;
         this.§ "^§ = b2Settings.b2_linearSlop;
      }
      
      public static function §?#S§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§<!b§ = new b2DistanceProxy();
         _loc5_.§<!b§.Set(param1);
         _loc5_.§#!]§ = new b2DistanceProxy();
         _loc5_.§#!]§.Set(param3);
         _loc5_.§##=§ = param2;
         _loc5_.§&#L§ = param4;
         _loc5_.§@"k§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§?"2§(_loc7_,_loc6_,_loc5_);
         return _loc7_.distance < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§ "^§ = param1.§ "^§;
      }
      
      public function §8! §() : int
      {
         return this.§%!9§;
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
