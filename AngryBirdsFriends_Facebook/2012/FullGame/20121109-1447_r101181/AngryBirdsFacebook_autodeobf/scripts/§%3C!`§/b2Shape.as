package §<!`§
{
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §55§.b2AABB;
   import §55§.b2Distance;
   import §55§.b2DistanceInput;
   import §55§.b2DistanceOutput;
   import §55§.b2DistanceProxy;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   import §55§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §&!G§:int = -1;
      
      b2internal static const §'!U§:int = 0;
      
      b2internal static const §@!#§:int = 1;
      
      b2internal static const §`M§:int = 2;
      
      b2internal static const §'"A§:int = 3;
      
      public static const § ;§:int = 1;
      
      public static const §="E§:int = 0;
      
      public static const §"!d§:int = -1;
       
      
      b2internal var §<";§:int;
      
      b2internal var §%I§:Number;
      
      public function b2Shape()
      {
         super();
         this.§<";§ = b2internal::&!G;
         this.§%I§ = b2Settings.b2_linearSlop;
      }
      
      public static function §3§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§7!p§ = new b2DistanceProxy();
         _loc5_.§7!p§.Set(param1);
         _loc5_.§["@§ = new b2DistanceProxy();
         _loc5_.§["@§.Set(param3);
         _loc5_.§'!3§ = param2;
         _loc5_.§@!4§ = param4;
         _loc5_.§1k§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§;!h§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§0!e§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§%I§ = param1.§%I§;
      }
      
      public function §"r§() : int
      {
         return this.§<";§;
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
