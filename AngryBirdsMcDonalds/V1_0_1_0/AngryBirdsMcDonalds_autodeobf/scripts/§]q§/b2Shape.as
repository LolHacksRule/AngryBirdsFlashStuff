package §]q§
{
   import §!R§.b2Transform;
   import §!R§.b2Vec2;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   import §]7§.b2AABB;
   import §]7§.b2Distance;
   import §]7§.b2DistanceInput;
   import §]7§.b2DistanceOutput;
   import §]7§.b2DistanceProxy;
   import §]7§.b2RayCastInput;
   import §]7§.b2RayCastOutput;
   import §]7§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §4!;§:int = -1;
      
      b2internal static const §9!X§:int = 0;
      
      b2internal static const §1!N§:int = 1;
      
      b2internal static const §6!V§:int = 2;
      
      b2internal static const §]O§:int = 3;
      
      public static const §"m§:int = 1;
      
      public static const §&O§:int = 0;
      
      public static const §`r§:int = -1;
       
      
      b2internal var §+C§:int;
      
      b2internal var §!C§:Number;
      
      public function b2Shape()
      {
         super();
         this.§+C§ = b2internal::4!;;
         this.§!C§ = b2Settings.b2_linearSlop;
      }
      
      public static function §6!_§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§9s§ = new b2DistanceProxy();
         _loc5_.§9s§.Set(param1);
         _loc5_.§4!S§ = new b2DistanceProxy();
         _loc5_.§4!S§.Set(param3);
         _loc5_.§%!X§ = param2;
         _loc5_.§'!c§ = param4;
         _loc5_.§?!^§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§'-§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§0!R§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§!C§ = param1.§!C§;
      }
      
      public function §#+§() : int
      {
         return this.§+C§;
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
