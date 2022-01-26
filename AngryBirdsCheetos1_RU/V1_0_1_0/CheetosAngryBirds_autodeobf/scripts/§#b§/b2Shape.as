package §#b§
{
   import §%!B§.b2AABB;
   import §%!B§.b2Distance;
   import §%!B§.b2DistanceInput;
   import §%!B§.b2DistanceOutput;
   import §%!B§.b2DistanceProxy;
   import §%!B§.b2RayCastInput;
   import §%!B§.b2RayCastOutput;
   import §%!B§.b2SimplexCache;
   import §&!B§.b2Transform;
   import §&!B§.b2Vec2;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const § [§:int = -1;
      
      b2internal static const §,_§:int = 0;
      
      b2internal static const §2f§:int = 1;
      
      b2internal static const § !&§:int = 2;
      
      b2internal static const §;!A§:int = 3;
      
      public static const §6q§:int = 1;
      
      public static const §"l§:int = 0;
      
      public static const §'[§:int = -1;
       
      
      b2internal var §@9§:int;
      
      b2internal var §!!`§:Number;
      
      public function b2Shape()
      {
         super();
         this.§@9§ = b2internal:: [;
         this.§!!`§ = b2Settings.b2_linearSlop;
      }
      
      public static function §8!X§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§8!=§ = new b2DistanceProxy();
         _loc5_.§8!=§.Set(param1);
         _loc5_.§0A§ = new b2DistanceProxy();
         _loc5_.§0A§.Set(param3);
         _loc5_.§@a§ = param2;
         _loc5_.§2!Y§ = param4;
         _loc5_.§[!;§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§^!$§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§,h§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§!!`§ = param1.§!!`§;
      }
      
      public function §=!,§() : int
      {
         return this.§@9§;
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
