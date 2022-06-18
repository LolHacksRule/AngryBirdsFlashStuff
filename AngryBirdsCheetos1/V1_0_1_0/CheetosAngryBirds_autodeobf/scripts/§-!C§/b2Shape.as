package §-!C§
{
   import § G§.b2AABB;
   import § G§.b2Distance;
   import § G§.b2DistanceInput;
   import § G§.b2DistanceOutput;
   import § G§.b2DistanceProxy;
   import § G§.b2RayCastInput;
   import § G§.b2RayCastOutput;
   import § G§.b2SimplexCache;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §8;§:int = -1;
      
      b2internal static const §9!T§:int = 0;
      
      b2internal static const §;!5§:int = 1;
      
      b2internal static const §"?§:int = 2;
      
      b2internal static const §!!-§:int = 3;
      
      public static const §[§:int = 1;
      
      public static const §5!+§:int = 0;
      
      public static const §8J§:int = -1;
       
      
      b2internal var §3c§:int;
      
      b2internal var §=!W§:Number;
      
      public function b2Shape()
      {
         super();
         this.§3c§ = b2internal::8;;
         this.§=!W§ = b2Settings.b2_linearSlop;
      }
      
      public static function §;!4§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§;!?§ = new b2DistanceProxy();
         _loc5_.§;!?§.Set(param1);
         _loc5_.§&z§ = new b2DistanceProxy();
         _loc5_.§&z§.Set(param3);
         _loc5_.§+]§ = param2;
         _loc5_.§&!6§ = param4;
         _loc5_.§0V§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§const§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§ !@§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§=!W§ = param1.§=!W§;
      }
      
      public function §0!$§() : int
      {
         return this.§3c§;
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
