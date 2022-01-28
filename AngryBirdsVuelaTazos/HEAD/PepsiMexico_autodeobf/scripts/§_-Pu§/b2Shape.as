package §_-Pu§
{
   import §_-bA§.b2Transform;
   import §_-bA§.b2Vec2;
   import §_-mg§.b2AABB;
   import §_-mg§.b2Distance;
   import §_-mg§.b2DistanceInput;
   import §_-mg§.b2DistanceOutput;
   import §_-mg§.b2DistanceProxy;
   import §_-mg§.b2RayCastInput;
   import §_-mg§.b2RayCastOutput;
   import §_-mg§.b2SimplexCache;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-l9§:int = -1;
      
      b2internal static const §_-Pk§:int = 0;
      
      b2internal static const §_-u-§:int = 1;
      
      b2internal static const §_-ne§:int = 2;
      
      b2internal static const §_-Ua§:int = 3;
      
      public static const §_-F1§:int = 1;
      
      public static const §continue§:int = 0;
      
      public static const §_-4a§:int = -1;
       
      
      b2internal var §_-Ra§:int;
      
      b2internal var §_-Cv§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-Ra§ = b2internal::_-l9;
         this.§_-Cv§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-lP§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-tt§ = new b2DistanceProxy();
         _loc5_.§_-tt§.Set(param1);
         _loc5_.§_-co§ = new b2DistanceProxy();
         _loc5_.§_-co§.Set(param3);
         _loc5_.§_-P1§ = param2;
         _loc5_.§_-nO§ = param4;
         _loc5_.§_-XZ§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-6z§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§_-nV§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-Cv§ = param1.§_-Cv§;
      }
      
      public function §_-Wx§() : int
      {
         return this.§_-Ra§;
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
