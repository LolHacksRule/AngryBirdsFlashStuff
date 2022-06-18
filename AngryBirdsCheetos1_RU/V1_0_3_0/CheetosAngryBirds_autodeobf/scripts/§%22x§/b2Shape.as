package §"x§
{
   import §#,§.b2Settings;
   import §#,§.b2internal;
   import §7$§.b2AABB;
   import §7$§.b2Distance;
   import §7$§.b2DistanceInput;
   import §7$§.b2DistanceOutput;
   import §7$§.b2DistanceProxy;
   import §7$§.b2RayCastInput;
   import §7$§.b2RayCastOutput;
   import §7$§.b2SimplexCache;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §?!8§:int = -1;
      
      b2internal static const §8_§:int = 0;
      
      b2internal static const §+N§:int = 1;
      
      b2internal static const §9O§:int = 2;
      
      b2internal static const §+L§:int = 3;
      
      public static const §3!Z§:int = 1;
      
      public static const §,f§:int = 0;
      
      public static const §>_§:int = -1;
       
      
      b2internal var §%V§:int;
      
      b2internal var §?'§:Number;
      
      public function b2Shape()
      {
         super();
         this.§%V§ = b2internal::?!8;
         this.§?'§ = b2Settings.b2_linearSlop;
      }
      
      public static function §?U§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§@W§ = new b2DistanceProxy();
         _loc5_.§@W§.Set(param1);
         _loc5_.§?!_§ = new b2DistanceProxy();
         _loc5_.§?!_§.Set(param3);
         _loc5_.§5x§ = param2;
         _loc5_.§'X§ = param4;
         _loc5_.§=H§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§5!X§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§]g§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§?'§ = param1.§?'§;
      }
      
      public function §,!W§() : int
      {
         return this.§%V§;
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
