package §&I§
{
   import §!"8§.b2Transform;
   import §!"8§.b2Vec2;
   import §6!d§.b2AABB;
   import §6!d§.b2Distance;
   import §6!d§.b2DistanceInput;
   import §6!d§.b2DistanceOutput;
   import §6!d§.b2DistanceProxy;
   import §6!d§.b2RayCastInput;
   import §6!d§.b2RayCastOutput;
   import §6!d§.b2SimplexCache;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §0!Y§:int = -1;
      
      b2internal static const §-"=§:int = 0;
      
      b2internal static const §?! §:int = 1;
      
      b2internal static const §0_§:int = 2;
      
      b2internal static const §8!S§:int = 3;
      
      public static const §%c§:int = 1;
      
      public static const §"Q§:int = 0;
      
      public static const §!"6§:int = -1;
       
      
      b2internal var §=""§:int;
      
      b2internal var §^s§:Number;
      
      public function b2Shape()
      {
         super();
         this.§=""§ = b2internal::0!Y;
         this.§^s§ = b2Settings.b2_linearSlop;
      }
      
      public static function §6!v§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§`+§ = new b2DistanceProxy();
         _loc5_.§`+§.Set(param1);
         _loc5_.§%!i§ = new b2DistanceProxy();
         _loc5_.§%!i§.Set(param3);
         _loc5_.§'6§ = param2;
         _loc5_.§8-§ = param4;
         _loc5_.§%#§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§<!@§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§<!P§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§^s§ = param1.§^s§;
      }
      
      public function §9!j§() : int
      {
         return this.§=""§;
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
