package §1#I§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §,#E§.b2AABB;
   import §,#E§.b2Distance;
   import §,#E§.b2DistanceInput;
   import §,#E§.b2DistanceOutput;
   import §,#E§.b2DistanceProxy;
   import §,#E§.b2RayCastInput;
   import §,#E§.b2RayCastOutput;
   import §,#E§.b2SimplexCache;
   import §04§.b2Transform;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §!$>§:int = -1;
      
      b2internal static const §7!#§:int = 0;
      
      b2internal static const §#!J§:int = 1;
      
      b2internal static const §^$#§:int = 2;
      
      b2internal static const §>"j§:int = 3;
      
      public static const §!6§:int = 1;
      
      public static const §0"§:int = 0;
      
      public static const §2"P§:int = -1;
       
      
      b2internal var §#!T§:int;
      
      b2internal var §&"7§:Number;
      
      public function b2Shape()
      {
         super();
         this.§#!T§ = b2internal::!$>;
         this.§&"7§ = b2Settings.b2_linearSlop;
      }
      
      public static function §2#%§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§^#1§ = new b2DistanceProxy();
         _loc5_.§^#1§.Set(param1);
         _loc5_.§2$A§ = new b2DistanceProxy();
         _loc5_.§2$A§.Set(param3);
         _loc5_.§>#J§ = param2;
         _loc5_.§8"Z§ = param4;
         _loc5_.§2!J§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§"!t§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§56§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§&"7§ = param1.§&"7§;
      }
      
      public function §<!e§() : int
      {
         return this.§#!T§;
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
