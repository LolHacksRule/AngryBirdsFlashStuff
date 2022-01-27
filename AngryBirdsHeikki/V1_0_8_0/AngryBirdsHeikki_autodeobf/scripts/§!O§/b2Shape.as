package §!O§
{
   import §0!=§.b2Transform;
   import §0!=§.b2Vec2;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   import §`!E§.b2AABB;
   import §`!E§.b2Distance;
   import §`!E§.b2DistanceInput;
   import §`!E§.b2DistanceOutput;
   import §`!E§.b2DistanceProxy;
   import §`!E§.b2RayCastInput;
   import §`!E§.b2RayCastOutput;
   import §`!E§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §+2§:int = -1;
      
      b2internal static const §8!%§:int = 0;
      
      b2internal static const § !T§:int = 1;
      
      b2internal static const §,z§:int = 2;
      
      b2internal static const §0?§:int = 3;
      
      public static const §]§:int = 1;
      
      public static const §`C§:int = 0;
      
      public static const §?e§:int = -1;
       
      
      b2internal var §%P§:int;
      
      b2internal var §]!5§:Number;
      
      public function b2Shape()
      {
         super();
         this.§%P§ = b2internal::+2;
         this.§]!5§ = b2Settings.b2_linearSlop;
      }
      
      public static function §&!?§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§0!f§ = new b2DistanceProxy();
         _loc5_.§0!f§.Set(param1);
         _loc5_.§<!I§ = new b2DistanceProxy();
         _loc5_.§<!I§.Set(param3);
         _loc5_.§7!X§ = param2;
         _loc5_.§'n§ = param4;
         _loc5_.§5!8§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§#!f§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§[!>§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§]!5§ = param1.§]!5§;
      }
      
      public function §7"§() : int
      {
         return this.§%P§;
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
