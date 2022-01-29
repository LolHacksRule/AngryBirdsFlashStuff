package §"#i§
{
   import § "%§.b2Transform;
   import § "%§.b2Vec2;
   import §'"$§.b2AABB;
   import §'"$§.b2Distance;
   import §'"$§.b2DistanceInput;
   import §'"$§.b2DistanceOutput;
   import §'"$§.b2DistanceProxy;
   import §'"$§.b2RayCastInput;
   import §'"$§.b2RayCastOutput;
   import §'"$§.b2SimplexCache;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §,1§:int = -1;
      
      b2internal static const §!X§:int = 0;
      
      b2internal static const §9##§:int = 1;
      
      b2internal static const §-#a§:int = 2;
      
      b2internal static const §5u§:int = 3;
      
      public static const §4$§:int = 1;
      
      public static const §]![§:int = 0;
      
      public static const §>"5§:int = -1;
       
      
      b2internal var §"#W§:int;
      
      b2internal var §?!>§:Number;
      
      public function b2Shape()
      {
         super();
         this.§"#W§ = b2internal::,1;
         this.§?!>§ = b2Settings.b2_linearSlop;
      }
      
      public static function §4"-§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§6"e§ = new b2DistanceProxy();
         _loc5_.§6"e§.Set(param1);
         _loc5_.§1#_§ = new b2DistanceProxy();
         _loc5_.§1#_§.Set(param3);
         _loc5_.§33§ = param2;
         _loc5_.§9#`§ = param4;
         _loc5_.§0#!§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§3n§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§`"L§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§?!>§ = param1.§?!>§;
      }
      
      public function §+L§() : int
      {
         return this.§"#W§;
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
