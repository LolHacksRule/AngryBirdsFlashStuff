package §@,§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Transform;
   import §3q§.b2Vec2;
   import §9!$§.b2AABB;
   import §9!$§.b2Distance;
   import §9!$§.b2DistanceInput;
   import §9!$§.b2DistanceOutput;
   import §9!$§.b2DistanceProxy;
   import §9!$§.b2RayCastInput;
   import §9!$§.b2RayCastOutput;
   import §9!$§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §?!-§:int = -1;
      
      b2internal static const §2i§:int = 0;
      
      b2internal static const §2!1§:int = 1;
      
      b2internal static const § _§:int = 2;
      
      b2internal static const §2@§:int = 3;
      
      public static const §8+§:int = 1;
      
      public static const §1!M§:int = 0;
      
      public static const §4O§:int = -1;
       
      
      b2internal var §5! §:int;
      
      b2internal var §!R§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5! § = b2internal::?!-;
         this.§!R§ = b2Settings.b2_linearSlop;
      }
      
      public static function §1?§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§;`§ = new b2DistanceProxy();
         _loc5_.§;`§.Set(param1);
         _loc5_.§?!5§ = new b2DistanceProxy();
         _loc5_.§?!5§.Set(param3);
         _loc5_.§0Q§ = param2;
         _loc5_.§3t§ = param4;
         _loc5_.§&0§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§0!#§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§9!H§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§!R§ = param1.§!R§;
      }
      
      public function §1!A§() : int
      {
         return this.§5! §;
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
