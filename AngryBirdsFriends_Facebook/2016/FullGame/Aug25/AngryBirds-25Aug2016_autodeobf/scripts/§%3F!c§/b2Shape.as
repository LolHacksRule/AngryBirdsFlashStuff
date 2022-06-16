package §?!c§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §0m§.b2Transform;
   import §0m§.b2Vec2;
   import §3"q§.b2AABB;
   import §3"q§.b2Distance;
   import §3"q§.b2DistanceInput;
   import §3"q§.b2DistanceOutput;
   import §3"q§.b2DistanceProxy;
   import §3"q§.b2RayCastInput;
   import §3"q§.b2RayCastOutput;
   import §3"q§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §#!1§:int = -1;
      
      b2internal static const §+0§:int = 0;
      
      b2internal static const §0#N§:int = 1;
      
      b2internal static const §`$&§:int = 2;
      
      b2internal static const §^"O§:int = 3;
      
      public static const §<!Z§:int = 1;
      
      public static const §0#2§:int = 0;
      
      public static const §0!t§:int = -1;
       
      
      b2internal var §6"&§:int;
      
      b2internal var §0#I§:Number;
      
      public function b2Shape()
      {
         super();
         this.§6"&§ = b2internal::#!1;
         this.§0#I§ = b2Settings.b2_linearSlop;
      }
      
      public static function §4"t§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§["-§ = new b2DistanceProxy();
         _loc5_.§["-§.Set(param1);
         _loc5_.§?$;§ = new b2DistanceProxy();
         _loc5_.§?$;§.Set(param3);
         _loc5_.§0E§ = param2;
         _loc5_.§6"M§ = param4;
         _loc5_.§2"4§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§ !R§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§-!i§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§0#I§ = param1.§0#I§;
      }
      
      public function § "c§() : int
      {
         return this.§6"&§;
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
