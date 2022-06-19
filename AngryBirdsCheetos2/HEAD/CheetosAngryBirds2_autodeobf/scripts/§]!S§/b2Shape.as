package §]!S§
{
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2AABB;
   import §-r§.b2Distance;
   import §-r§.b2DistanceInput;
   import §-r§.b2DistanceOutput;
   import §-r§.b2DistanceProxy;
   import §-r§.b2RayCastInput;
   import §-r§.b2RayCastOutput;
   import §-r§.b2SimplexCache;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §;<§:int = -1;
      
      b2internal static const §,-§:int = 0;
      
      b2internal static const §"![§:int = 1;
      
      b2internal static const §#!D§:int = 2;
      
      b2internal static const §2!6§:int = 3;
      
      public static const §[Q§:int = 1;
      
      public static const §&6§:int = 0;
      
      public static const §2!F§:int = -1;
       
      
      b2internal var §#!&§:int;
      
      b2internal var §#&§:Number;
      
      public function b2Shape()
      {
         super();
         this.§#!&§ = b2internal::;<;
         this.§#&§ = b2Settings.b2_linearSlop;
      }
      
      public static function §"!F§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§-C§ = new b2DistanceProxy();
         _loc5_.§-C§.Set(param1);
         _loc5_.§%!J§ = new b2DistanceProxy();
         _loc5_.§%!J§.Set(param3);
         _loc5_.§'1§ = param2;
         _loc5_.§0!$§ = param4;
         _loc5_.§"_§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§4!-§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§8!6§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§#&§ = param1.§#&§;
      }
      
      public function §7!_§() : int
      {
         return this.§#!&§;
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
