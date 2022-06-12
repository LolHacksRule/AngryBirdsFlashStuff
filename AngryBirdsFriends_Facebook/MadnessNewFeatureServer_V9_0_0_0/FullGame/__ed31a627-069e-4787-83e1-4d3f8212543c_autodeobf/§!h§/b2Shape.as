package §!H§
{
   import §4$E§.b2AABB;
   import §4$E§.b2Distance;
   import §4$E§.b2DistanceInput;
   import §4$E§.b2DistanceOutput;
   import §4$E§.b2DistanceProxy;
   import §4$E§.b2RayCastInput;
   import §4$E§.b2RayCastOutput;
   import §4$E§.b2SimplexCache;
   import §?!C§.b2Transform;
   import §?!C§.b2Vec2;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const dynamic:int = -1;
      
      b2internal static const §"$E§:int = 0;
      
      b2internal static const §?6§:int = 1;
      
      b2internal static const §#!-§:int = 2;
      
      b2internal static const §?#j§:int = 3;
      
      public static const §0#1§:int = 1;
      
      public static const §""P§:int = 0;
      
      public static const §>!+§:int = -1;
       
      
      b2internal var §5"F§:int;
      
      b2internal var §5#n§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5"F§ = b2internal::dynamic;
         this.§5#n§ = b2Settings.b2_linearSlop;
      }
      
      public static function §9#]§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§#"X§ = new b2DistanceProxy();
         _loc5_.§#"X§.Set(param1);
         _loc5_.§-!x§ = new b2DistanceProxy();
         _loc5_.§-!x§.Set(param3);
         _loc5_.§'>§ = param2;
         _loc5_.§?"g§ = param4;
         _loc5_.§-!H§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§8#5§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§9J§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§5#n§ = param1.§5#n§;
      }
      
      public function §8!p§() : int
      {
         return this.§5"F§;
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
