package §[!L§
{
   import §%!#§.b2AABB;
   import §%!#§.b2Distance;
   import §%!#§.b2DistanceInput;
   import §%!#§.b2DistanceOutput;
   import §%!#§.b2DistanceProxy;
   import §%!#§.b2RayCastInput;
   import §%!#§.b2RayCastOutput;
   import §%!#§.b2SimplexCache;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §^>§.b2Transform;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §use §:int = -1;
      
      b2internal static const §">§:int = 0;
      
      b2internal static const §2!c§:int = 1;
      
      b2internal static const §>"Z§:int = 2;
      
      b2internal static const §`l§:int = 3;
      
      public static const §?!v§:int = 1;
      
      public static const §,?§:int = 0;
      
      public static const §"Q§:int = -1;
       
      
      b2internal var §?I§:int;
      
      b2internal var §8!"§:Number;
      
      public function b2Shape()
      {
         super();
         this.§?I§ = b2internal::use ;
         this.§8!"§ = b2Settings.b2_linearSlop;
      }
      
      public static function §^y§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§37§ = new b2DistanceProxy();
         _loc5_.§37§.Set(param1);
         _loc5_.§3",§ = new b2DistanceProxy();
         _loc5_.§3",§.Set(param3);
         _loc5_.§7"R§ = param2;
         _loc5_.§;!!§ = param4;
         _loc5_.§+J§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§8"q§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§'"V§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§8!"§ = param1.§8!"§;
      }
      
      public function § "N§() : int
      {
         return this.§?I§;
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
