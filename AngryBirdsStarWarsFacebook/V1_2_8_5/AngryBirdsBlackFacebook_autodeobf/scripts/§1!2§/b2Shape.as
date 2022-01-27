package §1!2§
{
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §7"A§.b2Transform;
   import §7"A§.b2Vec2;
   import §>r§.b2AABB;
   import §>r§.b2Distance;
   import §>r§.b2DistanceInput;
   import §>r§.b2DistanceOutput;
   import §>r§.b2DistanceProxy;
   import §>r§.b2RayCastInput;
   import §>r§.b2RayCastOutput;
   import §>r§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §>"'§:int = -1;
      
      b2internal static const §8"y§:int = 0;
      
      b2internal static const §+"<§:int = 1;
      
      b2internal static const §;"-§:int = 2;
      
      b2internal static const §-r§:int = 3;
      
      public static const §'d§:int = 1;
      
      public static const §6"^§:int = 0;
      
      public static const §,"@§:int = -1;
       
      
      b2internal var §<"a§:int;
      
      b2internal var §#J§:Number;
      
      public function b2Shape()
      {
         super();
         this.§<"a§ = b2internal::>"';
         this.§#J§ = b2Settings.b2_linearSlop;
      }
      
      public static function §+">§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§'"d§ = new b2DistanceProxy();
         _loc5_.§'"d§.Set(param1);
         _loc5_.§ "l§ = new b2DistanceProxy();
         _loc5_.§ "l§.Set(param3);
         _loc5_.§2!+§ = param2;
         _loc5_.§]"Y§ = param4;
         _loc5_.§5"r§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§;!%§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§4!4§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§#J§ = param1.§#J§;
      }
      
      public function §+"M§() : int
      {
         return this.§<"a§;
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
