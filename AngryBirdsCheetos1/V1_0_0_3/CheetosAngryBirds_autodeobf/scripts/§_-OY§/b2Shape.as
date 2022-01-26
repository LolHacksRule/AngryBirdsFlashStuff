package §_-OY§
{
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Kz§.b2AABB;
   import §_-Kz§.b2Distance;
   import §_-Kz§.b2DistanceInput;
   import §_-Kz§.b2DistanceOutput;
   import §_-Kz§.b2DistanceProxy;
   import §_-Kz§.b2RayCastInput;
   import §_-Kz§.b2RayCastOutput;
   import §_-Kz§.b2SimplexCache;
   import §_-Vn§.b2Transform;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-rz§:int = -1;
      
      b2internal static const §_-b9§:int = 0;
      
      b2internal static const §_-8u§:int = 1;
      
      b2internal static const §_-Jk§:int = 2;
      
      b2internal static const §_-Uw§:int = 3;
      
      public static const §_-Eo§:int = 1;
      
      public static const §_-KH§:int = 0;
      
      public static const §_-7s§:int = -1;
       
      
      b2internal var §_-Kg§:int;
      
      b2internal var §_-EG§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-Kg§ = b2internal::_-rz;
         this.§_-EG§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-wl§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-t6§ = new b2DistanceProxy();
         _loc5_.§_-t6§.Set(param1);
         _loc5_.§_-iZ§ = new b2DistanceProxy();
         _loc5_.§_-iZ§.Set(param3);
         _loc5_.§_-p8§ = param2;
         _loc5_.§_-Mv§ = param4;
         _loc5_.§_-7H§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-N§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-TQ§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-EG§ = param1.§_-EG§;
      }
      
      public function §_-n§() : int
      {
         return this.§_-Kg§;
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
