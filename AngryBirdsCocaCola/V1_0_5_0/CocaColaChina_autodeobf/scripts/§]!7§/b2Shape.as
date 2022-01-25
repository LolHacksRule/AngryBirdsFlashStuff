package §]!7§
{
   import §!u§.b2AABB;
   import §!u§.b2Distance;
   import §!u§.b2DistanceInput;
   import §!u§.b2DistanceOutput;
   import §!u§.b2DistanceProxy;
   import §!u§.b2RayCastInput;
   import §!u§.b2RayCastOutput;
   import §!u§.b2SimplexCache;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §;h§.b2Transform;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §%]§:int = -1;
      
      b2internal static const §8m§:int = 0;
      
      b2internal static const §3!D§:int = 1;
      
      b2internal static const §,F§:int = 2;
      
      b2internal static const §+!=§:int = 3;
      
      public static const §]t§:int = 1;
      
      public static const §-!Q§:int = 0;
      
      public static const §5!§:int = -1;
       
      
      b2internal var §2+§:int;
      
      b2internal var §,!3§:Number;
      
      public function b2Shape()
      {
         super();
         this.§2+§ = b2internal::%];
         this.§,!3§ = b2Settings.b2_linearSlop;
      }
      
      public static function §"!a§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§8G§ = new b2DistanceProxy();
         _loc5_.§8G§.Set(param1);
         _loc5_.§@e§ = new b2DistanceProxy();
         _loc5_.§@e§.Set(param3);
         _loc5_.§&!5§ = param2;
         _loc5_.§6w§ = param4;
         _loc5_.§!!?§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§6!_§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§4m§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§,!3§ = param1.§,!3§;
      }
      
      public function §`!Q§() : int
      {
         return this.§2+§;
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
