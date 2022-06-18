package §each §
{
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §5!K§.b2Transform;
   import §5!K§.b2Vec2;
   import §]M§.b2AABB;
   import §]M§.b2Distance;
   import §]M§.b2DistanceInput;
   import §]M§.b2DistanceOutput;
   import §]M§.b2DistanceProxy;
   import §]M§.b2RayCastInput;
   import §]M§.b2RayCastOutput;
   import §]M§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §]!$§:int = -1;
      
      b2internal static const §63§:int = 0;
      
      b2internal static const §case §:int = 1;
      
      b2internal static const §%B§:int = 2;
      
      b2internal static const §8!"§:int = 3;
      
      public static const § !2§:int = 1;
      
      public static const §;i§:int = 0;
      
      public static const §'!Z§:int = -1;
       
      
      b2internal var §&>§:int;
      
      b2internal var §>!;§:Number;
      
      public function b2Shape()
      {
         super();
         this.§&>§ = b2internal::]!$;
         this.§>!;§ = b2Settings.b2_linearSlop;
      }
      
      public static function §>!4§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§&!!§ = new b2DistanceProxy();
         _loc5_.§&!!§.Set(param1);
         _loc5_.§!!L§ = new b2DistanceProxy();
         _loc5_.§!!L§.Set(param3);
         _loc5_.§^![§ = param2;
         _loc5_.§%!J§ = param4;
         _loc5_.§9I§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§&M§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§;!=§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§>!;§ = param1.§>!;§;
      }
      
      public function §"5§() : int
      {
         return this.§&>§;
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
