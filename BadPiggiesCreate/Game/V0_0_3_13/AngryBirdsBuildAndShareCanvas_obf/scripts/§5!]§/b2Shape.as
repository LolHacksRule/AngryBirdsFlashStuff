package §5!]§
{
   import §-g§.b2AABB;
   import §-g§.b2Distance;
   import §-g§.b2DistanceInput;
   import §-g§.b2DistanceOutput;
   import §-g§.b2DistanceProxy;
   import §-g§.b2RayCastInput;
   import §-g§.b2RayCastOutput;
   import §-g§.b2SimplexCache;
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §+k§:int = -1;
      
      b2internal static const §%_§:int = 0;
      
      b2internal static const §8!3§:int = 1;
      
      b2internal static const §function§:int = 2;
      
      b2internal static const §9"$§:int = 3;
      
      public static const §;"9§:int = 1;
      
      public static const §1s§:int = 0;
      
      public static const §-! §:int = -1;
       
      
      b2internal var §&"9§:int;
      
      b2internal var §9"=§:Number;
      
      public function b2Shape()
      {
         super();
         this.§&"9§ = b2internal::+k;
         this.§9"=§ = b2Settings.b2_linearSlop;
      }
      
      public static function §,d§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§7!Z§ = new b2DistanceProxy();
         _loc5_.§7!Z§.Set(param1);
         _loc5_.§[;§ = new b2DistanceProxy();
         _loc5_.§[;§.Set(param3);
         _loc5_.§1F§ = param2;
         _loc5_.§>,§ = param4;
         _loc5_.§1!N§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§`<§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§;J§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§9"=§ = param1.§9"=§;
      }
      
      public function §7!r§() : int
      {
         return this.§&"9§;
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
