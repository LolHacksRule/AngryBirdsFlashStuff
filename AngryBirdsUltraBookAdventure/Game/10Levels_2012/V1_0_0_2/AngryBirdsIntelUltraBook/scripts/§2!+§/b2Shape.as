package §2!+§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2AABB;
   import §72§.b2Distance;
   import §72§.b2DistanceInput;
   import §72§.b2DistanceOutput;
   import §72§.b2DistanceProxy;
   import §72§.b2RayCastInput;
   import §72§.b2RayCastOutput;
   import §72§.b2SimplexCache;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §`5§:int = -1;
      
      b2internal static const §=! §:int = 0;
      
      b2internal static const §6!t§:int = 1;
      
      b2internal static const §=Q§:int = 2;
      
      b2internal static const §@!q§:int = 3;
      
      public static const §]!S§:int = 1;
      
      public static const §&C§:int = 0;
      
      public static const §@J§:int = -1;
       
      
      b2internal var §+!?§:int;
      
      b2internal var §9!A§:Number;
      
      public function b2Shape()
      {
         super();
         this.§+!?§ = b2internal::`5;
         this.§9!A§ = b2Settings.b2_linearSlop;
      }
      
      public static function §7l§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§]!O§ = new b2DistanceProxy();
         _loc5_.§]!O§.Set(param1);
         _loc5_.§&d§ = new b2DistanceProxy();
         _loc5_.§&d§.Set(param3);
         _loc5_.§=!G§ = param2;
         _loc5_.§"!O§ = param4;
         _loc5_.§^1§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§&7§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§8j§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§9!A§ = param1.§9!A§;
      }
      
      public function §2!r§() : int
      {
         return this.§+!?§;
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
