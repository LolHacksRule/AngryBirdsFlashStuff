package §!"3§
{
   import §'"-§.b2AABB;
   import §'"-§.b2Distance;
   import §'"-§.b2DistanceInput;
   import §'"-§.b2DistanceOutput;
   import §'"-§.b2DistanceProxy;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §'"-§.b2SimplexCache;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §%§:int = -1;
      
      b2internal static const § "&§:int = 0;
      
      b2internal static const §8x§:int = 1;
      
      b2internal static const §?!7§:int = 2;
      
      b2internal static const §,!@§:int = 3;
      
      public static const §%!_§:int = 1;
      
      public static const §7!%§:int = 0;
      
      public static const §^"§:int = -1;
       
      
      b2internal var §<"@§:int;
      
      b2internal var §0!_§:Number;
      
      public function b2Shape()
      {
         super();
         this.§<"@§ = b2internal::%;
         this.§0!_§ = b2Settings.b2_linearSlop;
      }
      
      public static function §9e§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§>!j§ = new b2DistanceProxy();
         _loc5_.§>!j§.Set(param1);
         _loc5_.§@!a§ = new b2DistanceProxy();
         _loc5_.§@!a§.Set(param3);
         _loc5_.§-H§ = param2;
         _loc5_.§3!3§ = param4;
         _loc5_.§0y§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§4"H§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§<"1§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§0!_§ = param1.§0!_§;
      }
      
      public function §>!f§() : int
      {
         return this.§<"@§;
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
