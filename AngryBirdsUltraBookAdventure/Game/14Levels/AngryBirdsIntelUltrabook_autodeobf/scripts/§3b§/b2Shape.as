package §3b§
{
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §>!Z§.b2AABB;
   import §>!Z§.b2Distance;
   import §>!Z§.b2DistanceInput;
   import §>!Z§.b2DistanceOutput;
   import §>!Z§.b2DistanceProxy;
   import §>!Z§.b2RayCastInput;
   import §>!Z§.b2RayCastOutput;
   import §>!Z§.b2SimplexCache;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §7!]§:int = -1;
      
      b2internal static const §^!6§:int = 0;
      
      b2internal static const §=&§:int = 1;
      
      b2internal static const §=n§:int = 2;
      
      b2internal static const §=!#§:int = 3;
      
      public static const §%!j§:int = 1;
      
      public static const §]!i§:int = 0;
      
      public static const §"!r§:int = -1;
       
      
      b2internal var §3r§:int;
      
      b2internal var § !c§:Number;
      
      public function b2Shape()
      {
         super();
         this.§3r§ = b2internal::7!];
         this.§ !c§ = b2Settings.b2_linearSlop;
      }
      
      public static function §]I§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§,N§ = new b2DistanceProxy();
         _loc5_.§,N§.Set(param1);
         _loc5_.§#y§ = new b2DistanceProxy();
         _loc5_.§#y§.Set(param3);
         _loc5_.§ !f§ = param2;
         _loc5_.§!@§ = param4;
         _loc5_.§#!+§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§65§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§>!_§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§ !c§ = param1.§ !c§;
      }
      
      public function § 5§() : int
      {
         return this.§3r§;
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
