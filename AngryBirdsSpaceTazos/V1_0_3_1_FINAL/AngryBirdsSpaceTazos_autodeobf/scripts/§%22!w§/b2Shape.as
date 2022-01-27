package §"!w§
{
   import §8K§.b2Settings;
   import §8K§.b2internal;
   import §>!m§.b2AABB;
   import §>!m§.b2Distance;
   import §>!m§.b2DistanceInput;
   import §>!m§.b2DistanceOutput;
   import §>!m§.b2DistanceProxy;
   import §>!m§.b2RayCastInput;
   import §>!m§.b2RayCastOutput;
   import §>!m§.b2SimplexCache;
   import §[!f§.b2Transform;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const § !&§:int = -1;
      
      b2internal static const §?!<§:int = 0;
      
      b2internal static const §7!D§:int = 1;
      
      b2internal static const §]!1§:int = 2;
      
      b2internal static const §<!Y§:int = 3;
      
      public static const §?!x§:int = 1;
      
      public static const §1!W§:int = 0;
      
      public static const §'K§:int = -1;
       
      
      b2internal var §9!w§:int;
      
      b2internal var §^!G§:Number;
      
      public function b2Shape()
      {
         super();
         this.§9!w§ = b2internal:: !&;
         this.§^!G§ = b2Settings.b2_linearSlop;
      }
      
      public static function § "B§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§@!G§ = new b2DistanceProxy();
         _loc5_.§@!G§.Set(param1);
         _loc5_.§%!S§ = new b2DistanceProxy();
         _loc5_.§%!S§.Set(param3);
         _loc5_.§<!H§ = param2;
         _loc5_.§<!w§ = param4;
         _loc5_.§89§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§&S§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§[t§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§^!G§ = param1.§^!G§;
      }
      
      public function §^![§() : int
      {
         return this.§9!w§;
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
