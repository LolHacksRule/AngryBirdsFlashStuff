package §-!$§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Transform;
   import §+,§.b2Vec2;
   import §?§.b2AABB;
   import §?§.b2Distance;
   import §?§.b2DistanceInput;
   import §?§.b2DistanceOutput;
   import §?§.b2DistanceProxy;
   import §?§.b2RayCastInput;
   import §?§.b2RayCastOutput;
   import §?§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §%!!§:int = -1;
      
      b2internal static const §@B§:int = 0;
      
      b2internal static const §0D§:int = 1;
      
      b2internal static const §]!]§:int = 2;
      
      b2internal static const §+!$§:int = 3;
      
      public static const § E§:int = 1;
      
      public static const §1o§:int = 0;
      
      public static const §'!M§:int = -1;
       
      
      b2internal var §&D§:int;
      
      b2internal var each:Number;
      
      public function b2Shape()
      {
         super();
         this.§&D§ = b2internal::%!!;
         this.each = b2Settings.b2_linearSlop;
      }
      
      public static function §@!Z§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§,]§ = new b2DistanceProxy();
         _loc5_.§,]§.Set(param1);
         _loc5_.§ !&§ = new b2DistanceProxy();
         _loc5_.§ !&§.Set(param3);
         _loc5_.§@]§ = param2;
         _loc5_.§ K§ = param4;
         _loc5_.§&=§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§2!M§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§"i§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.each = param1.each;
      }
      
      public function §@i§() : int
      {
         return this.§&D§;
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
