package §2k§
{
   import §%4§.b2AABB;
   import §%4§.b2Distance;
   import §%4§.b2DistanceInput;
   import §%4§.b2DistanceOutput;
   import §%4§.b2DistanceProxy;
   import §%4§.b2RayCastInput;
   import §%4§.b2RayCastOutput;
   import §%4§.b2SimplexCache;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §;!O§:int = -1;
      
      b2internal static const §;n§:int = 0;
      
      b2internal static const §<!D§:int = 1;
      
      b2internal static const §=!E§:int = 2;
      
      b2internal static const §1!v§:int = 3;
      
      public static const §,"?§:int = 1;
      
      public static const §^!9§:int = 0;
      
      public static const §4w§:int = -1;
       
      
      b2internal var §0!,§:int;
      
      b2internal var §&!$§:Number;
      
      public function b2Shape()
      {
         super();
         this.§0!,§ = b2internal::;!O;
         this.§&!$§ = b2Settings.b2_linearSlop;
      }
      
      public static function §6m§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§]!0§ = new b2DistanceProxy();
         _loc5_.§]!0§.Set(param1);
         _loc5_.§&!`§ = new b2DistanceProxy();
         _loc5_.§&!`§.Set(param3);
         _loc5_.§&!-§ = param2;
         _loc5_.§9!k§ = param4;
         _loc5_.§`!9§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§0?§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§8F§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§&!$§ = param1.§&!$§;
      }
      
      public function §;!F§() : int
      {
         return this.§0!,§;
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
