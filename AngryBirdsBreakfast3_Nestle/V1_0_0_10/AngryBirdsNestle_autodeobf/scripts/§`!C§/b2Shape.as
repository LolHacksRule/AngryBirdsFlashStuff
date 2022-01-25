package §`!C§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §7!&§.b2AABB;
   import §7!&§.b2Distance;
   import §7!&§.b2DistanceInput;
   import §7!&§.b2DistanceOutput;
   import §7!&§.b2DistanceProxy;
   import §7!&§.b2RayCastInput;
   import §7!&§.b2RayCastOutput;
   import §7!&§.b2SimplexCache;
   import §?"'§.b2Transform;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §+!U§:int = -1;
      
      b2internal static const §7"4§:int = 0;
      
      b2internal static const §?"#§:int = 1;
      
      b2internal static const §4!7§:int = 2;
      
      b2internal static const § !S§:int = 3;
      
      public static const §if §:int = 1;
      
      public static const §-z§:int = 0;
      
      public static const §%!!§:int = -1;
       
      
      b2internal var §[!5§:int;
      
      b2internal var §>"§:Number;
      
      public function b2Shape()
      {
         super();
         this.§[!5§ = b2internal::+!U;
         this.§>"§ = b2Settings.b2_linearSlop;
      }
      
      public static function § "0§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§@!n§ = new b2DistanceProxy();
         _loc5_.§@!n§.Set(param1);
         _loc5_.§[!D§ = new b2DistanceProxy();
         _loc5_.§[!D§.Set(param3);
         _loc5_.§4!u§ = param2;
         _loc5_.§[!<§ = param4;
         _loc5_.§1h§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§<0§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§&!c§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§>"§ = param1.§>"§;
      }
      
      public function §&r§() : int
      {
         return this.§[!5§;
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
