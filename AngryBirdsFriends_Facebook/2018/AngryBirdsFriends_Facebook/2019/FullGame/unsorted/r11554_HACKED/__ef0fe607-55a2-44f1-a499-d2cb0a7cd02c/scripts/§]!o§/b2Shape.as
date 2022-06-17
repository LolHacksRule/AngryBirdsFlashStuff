package §]!o§
{
   import §0J§.b2AABB;
   import §0J§.b2Distance;
   import §0J§.b2DistanceInput;
   import §0J§.b2DistanceOutput;
   import §0J§.b2DistanceProxy;
   import §0J§.b2RayCastInput;
   import §0J§.b2RayCastOutput;
   import §0J§.b2SimplexCache;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §`# §.b2Transform;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §>#y§:int = -1;
      
      b2internal static const §=#T§:int = 0;
      
      b2internal static const §]#6§:int = 1;
      
      b2internal static const §+v§:int = 2;
      
      b2internal static const §,!t§:int = 3;
      
      public static const § #0§:int = 1;
      
      public static const §6#6§:int = 0;
      
      public static const §3"c§:int = -1;
       
      
      b2internal var §'!A§:int;
      
      b2internal var §,"k§:Number;
      
      public function b2Shape()
      {
         super();
         this.§'!A§ = b2internal::>#y;
         this.§,"k§ = b2Settings.b2_linearSlop;
      }
      
      public static function §!"5§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§[#G§ = new b2DistanceProxy();
         _loc5_.§[#G§.Set(param1);
         _loc5_.§[$@§ = new b2DistanceProxy();
         _loc5_.§[$@§.Set(param3);
         _loc5_.§@D§ = param2;
         _loc5_.§"#L§ = param4;
         _loc5_.§1#%§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§3$4§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§5$3§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§,"k§ = param1.§,"k§;
      }
      
      public function §52§() : int
      {
         return this.§'!A§;
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
