package §,!T§
{
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §6!R§.b2Transform;
   import §6!R§.b2Vec2;
   import §9$A§.b2AABB;
   import §9$A§.b2Distance;
   import §9$A§.b2DistanceInput;
   import §9$A§.b2DistanceOutput;
   import §9$A§.b2DistanceProxy;
   import §9$A§.b2RayCastInput;
   import §9$A§.b2RayCastOutput;
   import §9$A§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §6"i§:int = -1;
      
      b2internal static const §?#n§:int = 0;
      
      b2internal static const §!"Q§:int = 1;
      
      b2internal static const § #W§:int = 2;
      
      b2internal static const §!"V§:int = 3;
      
      public static const §'"9§:int = 1;
      
      public static const §[#i§:int = 0;
      
      public static const §]m§:int = -1;
       
      
      b2internal var § "u§:int;
      
      b2internal var §?#o§:Number;
      
      public function b2Shape()
      {
         super();
         this.§ "u§ = b2internal::6"i;
         this.§?#o§ = b2Settings.b2_linearSlop;
      }
      
      public static function §!"j§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§,"?§ = new b2DistanceProxy();
         _loc5_.§,"?§.Set(param1);
         _loc5_.§!S§ = new b2DistanceProxy();
         _loc5_.§!S§.Set(param3);
         _loc5_.§&>§ = param2;
         _loc5_.§]l§ = param4;
         _loc5_.§-"b§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§^#q§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§6V§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§?#o§ = param1.§?#o§;
      }
      
      public function §!"k§() : int
      {
         return this.§ "u§;
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
