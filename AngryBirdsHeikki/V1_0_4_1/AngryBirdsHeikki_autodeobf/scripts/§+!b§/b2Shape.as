package §+!b§
{
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §<"§.b2AABB;
   import §<"§.b2Distance;
   import §<"§.b2DistanceInput;
   import §<"§.b2DistanceOutput;
   import §<"§.b2DistanceProxy;
   import §<"§.b2RayCastInput;
   import §<"§.b2RayCastOutput;
   import §<"§.b2SimplexCache;
   import §=i§.b2Transform;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §-7§:int = -1;
      
      b2internal static const §2!Q§:int = 0;
      
      b2internal static const §-§:int = 1;
      
      b2internal static const §9^§:int = 2;
      
      b2internal static const §0!1§:int = 3;
      
      public static const §&V§:int = 1;
      
      public static const §'X§:int = 0;
      
      public static const §+G§:int = -1;
       
      
      b2internal var §'A§:int;
      
      b2internal var §6x§:Number;
      
      public function b2Shape()
      {
         super();
         this.§'A§ = b2internal::-7;
         this.§6x§ = b2Settings.b2_linearSlop;
      }
      
      public static function §!!D§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§^!C§ = new b2DistanceProxy();
         _loc5_.§^!C§.Set(param1);
         _loc5_.§[G§ = new b2DistanceProxy();
         _loc5_.§[G§.Set(param3);
         _loc5_.§0!'§ = param2;
         _loc5_.§5y§ = param4;
         _loc5_.§!l§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§=q§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§<!_§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§6x§ = param1.§6x§;
      }
      
      public function §<!M§() : int
      {
         return this.§'A§;
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
