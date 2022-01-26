package §5p§
{
   import §7S§.b2AABB;
   import §7S§.b2Distance;
   import §7S§.b2DistanceInput;
   import §7S§.b2DistanceOutput;
   import §7S§.b2DistanceProxy;
   import §7S§.b2RayCastInput;
   import §7S§.b2RayCastOutput;
   import §7S§.b2SimplexCache;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Transform;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §"U§:int = -1;
      
      b2internal static const §!E§:int = 0;
      
      b2internal static const §%1§:int = 1;
      
      b2internal static const §9!M§:int = 2;
      
      b2internal static const §4%§:int = 3;
      
      public static const §=! §:int = 1;
      
      public static const §-E§:int = 0;
      
      public static const §>k§:int = -1;
       
      
      b2internal var §@!_§:int;
      
      b2internal var §8!!§:Number;
      
      public function b2Shape()
      {
         super();
         this.§@!_§ = b2internal::"U;
         this.§8!!§ = b2Settings.b2_linearSlop;
      }
      
      public static function §=o§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§,!]§ = new b2DistanceProxy();
         _loc5_.§,!]§.Set(param1);
         _loc5_.§#!;§ = new b2DistanceProxy();
         _loc5_.§#!;§.Set(param3);
         _loc5_.§9!P§ = param2;
         _loc5_.§9S§ = param4;
         _loc5_.§,[§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§2!"§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§7w§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§8!!§ = param1.§8!!§;
      }
      
      public function §9o§() : int
      {
         return this.§@!_§;
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
