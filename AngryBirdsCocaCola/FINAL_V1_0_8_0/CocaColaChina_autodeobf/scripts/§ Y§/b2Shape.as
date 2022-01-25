package § Y§
{
   import §6V§.b2Transform;
   import §6V§.b2Vec2;
   import §?F§.b2AABB;
   import §?F§.b2Distance;
   import §?F§.b2DistanceInput;
   import §?F§.b2DistanceOutput;
   import §?F§.b2DistanceProxy;
   import §?F§.b2RayCastInput;
   import §?F§.b2RayCastOutput;
   import §?F§.b2SimplexCache;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §+g§:int = -1;
      
      b2internal static const §[w§:int = 0;
      
      b2internal static const §"!c§:int = 1;
      
      b2internal static const §=m§:int = 2;
      
      b2internal static const §,!6§:int = 3;
      
      public static const §2?§:int = 1;
      
      public static const §5!E§:int = 0;
      
      public static const §5k§:int = -1;
       
      
      b2internal var §2M§:int;
      
      b2internal var § !!§:Number;
      
      public function b2Shape()
      {
         super();
         this.§2M§ = b2internal::+g;
         this.§ !!§ = b2Settings.b2_linearSlop;
      }
      
      public static function §13§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§^!F§ = new b2DistanceProxy();
         _loc5_.§^!F§.Set(param1);
         _loc5_.§`!S§ = new b2DistanceProxy();
         _loc5_.§`!S§.Set(param3);
         _loc5_.§<!U§ = param2;
         _loc5_.§,!$§ = param4;
         _loc5_.§&u§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§4!$§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§-;§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§ !!§ = param1.§ !!§;
      }
      
      public function §1k§() : int
      {
         return this.§2M§;
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
