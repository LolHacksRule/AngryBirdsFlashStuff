package §0!'§
{
   import §&!-§.b2AABB;
   import §&!-§.b2Distance;
   import §&!-§.b2DistanceInput;
   import §&!-§.b2DistanceOutput;
   import §&!-§.b2DistanceProxy;
   import §&!-§.b2RayCastInput;
   import §&!-§.b2RayCastOutput;
   import §&!-§.b2SimplexCache;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §^L§:int = -1;
      
      b2internal static const §8&§:int = 0;
      
      b2internal static const §8y§:int = 1;
      
      b2internal static const §<!o§:int = 2;
      
      b2internal static const §">§:int = 3;
      
      public static const §8k§:int = 1;
      
      public static const §<Y§:int = 0;
      
      public static const §3! §:int = -1;
       
      
      b2internal var §"!1§:int;
      
      b2internal var §6q§:Number;
      
      public function b2Shape()
      {
         super();
         this.§"!1§ = b2internal::^L;
         this.§6q§ = b2Settings.b2_linearSlop;
      }
      
      public static function §'V§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§5R§ = new b2DistanceProxy();
         _loc5_.§5R§.Set(param1);
         _loc5_.§0D§ = new b2DistanceProxy();
         _loc5_.§0D§.Set(param3);
         _loc5_.§&!D§ = param2;
         _loc5_.§`]§ = param4;
         _loc5_.§2!j§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§7U§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§!!q§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§6q§ = param1.§6q§;
      }
      
      public function §0!@§() : int
      {
         return this.§"!1§;
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
