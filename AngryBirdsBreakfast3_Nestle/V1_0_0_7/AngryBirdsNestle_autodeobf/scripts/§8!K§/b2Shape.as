package §8!K§
{
   import §!!o§.b2AABB;
   import §!!o§.b2Distance;
   import §!!o§.b2DistanceInput;
   import §!!o§.b2DistanceOutput;
   import §!!o§.b2DistanceProxy;
   import §!!o§.b2RayCastInput;
   import §!!o§.b2RayCastOutput;
   import §!!o§.b2SimplexCache;
   import §!r§.b2Settings;
   import §!r§.b2internal;
   import §-!2§.b2Transform;
   import §-!2§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §%!7§:int = -1;
      
      b2internal static const §>!D§:int = 0;
      
      b2internal static const §3!f§:int = 1;
      
      b2internal static const §!!>§:int = 2;
      
      b2internal static const §@m§:int = 3;
      
      public static const §^!c§:int = 1;
      
      public static const §'!3§:int = 0;
      
      public static const §!0§:int = -1;
       
      
      b2internal var §%"+§:int;
      
      b2internal var §;J§:Number;
      
      public function b2Shape()
      {
         super();
         this.§%"+§ = b2internal::%!7;
         this.§;J§ = b2Settings.b2_linearSlop;
      }
      
      public static function §?"2§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§!4§ = new b2DistanceProxy();
         _loc5_.§!4§.Set(param1);
         _loc5_.§&![§ = new b2DistanceProxy();
         _loc5_.§&![§.Set(param3);
         _loc5_.§",§ = param2;
         _loc5_.§ "-§ = param4;
         _loc5_.§-!J§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§%!9§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§>!>§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§;J§ = param1.§;J§;
      }
      
      public function §6`§() : int
      {
         return this.§%"+§;
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
