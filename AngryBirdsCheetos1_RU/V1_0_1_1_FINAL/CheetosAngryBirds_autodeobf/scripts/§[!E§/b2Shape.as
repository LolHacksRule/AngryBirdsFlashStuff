package §[!E§
{
   import §!!#§.b2AABB;
   import §!!#§.b2Distance;
   import §!!#§.b2DistanceInput;
   import §!!#§.b2DistanceOutput;
   import §!!#§.b2DistanceProxy;
   import §!!#§.b2RayCastInput;
   import §!!#§.b2RayCastOutput;
   import §!!#§.b2SimplexCache;
   import §4! §.b2Settings;
   import §4! §.b2internal;
   import §^q§.b2Transform;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §9f§:int = -1;
      
      b2internal static const §5E§:int = 0;
      
      b2internal static const §+4§:int = 1;
      
      b2internal static const §!d§:int = 2;
      
      b2internal static const §^E§:int = 3;
      
      public static const §,!R§:int = 1;
      
      public static const §62§:int = 0;
      
      public static const §]1§:int = -1;
       
      
      b2internal var §3;§:int;
      
      b2internal var §9@§:Number;
      
      public function b2Shape()
      {
         super();
         this.§3;§ = b2internal::9f;
         this.§9@§ = b2Settings.b2_linearSlop;
      }
      
      public static function §?`§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§'!@§ = new b2DistanceProxy();
         _loc5_.§'!@§.Set(param1);
         _loc5_.§5!4§ = new b2DistanceProxy();
         _loc5_.§5!4§.Set(param3);
         _loc5_.§]!F§ = param2;
         _loc5_.§!`§ = param4;
         _loc5_.§#!^§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§^!"§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§+p§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§9@§ = param1.§9@§;
      }
      
      public function §9P§() : int
      {
         return this.§3;§;
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
