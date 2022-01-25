package §'&§
{
   import §"!R§.b2Settings;
   import §"!R§.b2internal;
   import §;!7§.b2AABB;
   import §;!7§.b2Distance;
   import §;!7§.b2DistanceInput;
   import §;!7§.b2DistanceOutput;
   import §;!7§.b2DistanceProxy;
   import §;!7§.b2RayCastInput;
   import §;!7§.b2RayCastOutput;
   import §;!7§.b2SimplexCache;
   import §implements§.b2Transform;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §&!9§:int = -1;
      
      b2internal static const §@#§:int = 0;
      
      b2internal static const §+Q§:int = 1;
      
      b2internal static const §,J§:int = 2;
      
      b2internal static const §"^§:int = 3;
      
      public static const §+C§:int = 1;
      
      public static const § ^§:int = 0;
      
      public static const §;!,§:int = -1;
       
      
      b2internal var §;>§:int;
      
      b2internal var §[8§:Number;
      
      public function b2Shape()
      {
         super();
         this.§;>§ = b2internal::&!9;
         this.§[8§ = b2Settings.b2_linearSlop;
      }
      
      public static function §2<§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§9b§ = new b2DistanceProxy();
         _loc5_.§9b§.Set(param1);
         _loc5_.§'o§ = new b2DistanceProxy();
         _loc5_.§'o§.Set(param3);
         _loc5_.§&F§ = param2;
         _loc5_.§0!J§ = param4;
         _loc5_.§]i§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§]r§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§>!K§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§[8§ = param1.§[8§;
      }
      
      public function §@e§() : int
      {
         return this.§;>§;
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
