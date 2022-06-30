package §=u§
{
   import §%]§.b2AABB;
   import §%]§.b2Distance;
   import §%]§.b2DistanceInput;
   import §%]§.b2DistanceOutput;
   import §%]§.b2DistanceProxy;
   import §%]§.b2RayCastInput;
   import §%]§.b2RayCastOutput;
   import §%]§.b2SimplexCache;
   import §,!3§.b2Transform;
   import §,!3§.b2Vec2;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §&!!§:int = -1;
      
      b2internal static const §2!J§:int = 0;
      
      b2internal static const §1!J§:int = 1;
      
      b2internal static const §<r§:int = 2;
      
      b2internal static const §"F§:int = 3;
      
      public static const §0E§:int = 1;
      
      public static const §`S§:int = 0;
      
      public static const § Q§:int = -1;
       
      
      b2internal var §?S§:int;
      
      b2internal var § !W§:Number;
      
      public function b2Shape()
      {
         super();
         this.§?S§ = b2internal::&!!;
         this.§ !W§ = b2Settings.b2_linearSlop;
      }
      
      public static function §#8§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§`!0§ = new b2DistanceProxy();
         _loc5_.§`!0§.Set(param1);
         _loc5_.§?!2§ = new b2DistanceProxy();
         _loc5_.§?!2§.Set(param3);
         _loc5_.§!!H§ = param2;
         _loc5_.§0!R§ = param4;
         _loc5_.§<!!§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§%&§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§^!;§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§ !W§ = param1.§ !W§;
      }
      
      public function §[!H§() : int
      {
         return this.§?S§;
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
