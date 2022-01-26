package §1!H§
{
   import §0!2§.b2AABB;
   import §0!2§.b2Distance;
   import §0!2§.b2DistanceInput;
   import §0!2§.b2DistanceOutput;
   import §0!2§.b2DistanceProxy;
   import §0!2§.b2RayCastInput;
   import §0!2§.b2RayCastOutput;
   import §0!2§.b2SimplexCache;
   import §;]§.b2Settings;
   import §;]§.b2internal;
   import §=E§.b2Transform;
   import §=E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §;!4§:int = -1;
      
      b2internal static const §8;§:int = 0;
      
      b2internal static const §9!T§:int = 1;
      
      b2internal static const §;!5§:int = 2;
      
      b2internal static const §"?§:int = 3;
      
      public static const §!!-§:int = 1;
      
      public static const §[§:int = 0;
      
      public static const §5!+§:int = -1;
       
      
      b2internal var §3c§:int;
      
      b2internal var §-!C§:Number;
      
      public function b2Shape()
      {
         super();
         this.§3c§ = b2internal::;!4;
         this.§-!C§ = b2Settings.b2_linearSlop;
      }
      
      public static function §=!W§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§5j§ = new b2DistanceProxy();
         _loc5_.§5j§.Set(param1);
         _loc5_.§;!?§ = new b2DistanceProxy();
         _loc5_.§;!?§.Set(param3);
         _loc5_.§&z§ = param2;
         _loc5_.§+]§ = param4;
         _loc5_.§&!6§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§?d§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§!B§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§-!C§ = param1.§-!C§;
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
