package § if§
{
   import §_-F2§.b2Transform;
   import §_-F2§.b2Vec2;
   import §_-Jx§.b2AABB;
   import §_-Jx§.b2Distance;
   import §_-Jx§.b2DistanceInput;
   import §_-Jx§.b2DistanceOutput;
   import §_-Jx§.b2DistanceProxy;
   import §_-Jx§.b2RayCastInput;
   import §_-Jx§.b2RayCastOutput;
   import §_-Jx§.b2SimplexCache;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-ez§:int = -1;
      
      b2internal static const §_-4p§:int = 0;
      
      b2internal static const §_-Wf§:int = 1;
      
      b2internal static const §_-t9§:int = 2;
      
      b2internal static const §_-oI§:int = 3;
      
      public static const §_-Gd§:int = 1;
      
      public static const §_-bQ§:int = 0;
      
      public static const §_-QI§:int = -1;
       
      
      b2internal var §_-zO§:int;
      
      b2internal var §_-KL§:Number;
      
      public function b2Shape()
      {
         super();
         this.§_-zO§ = b2internal::_-ez;
         this.§_-KL§ = b2Settings.b2_linearSlop;
      }
      
      public static function §_-LO§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§_-WA§ = new b2DistanceProxy();
         _loc5_.§_-WA§.Set(param1);
         _loc5_.§_-tr§ = new b2DistanceProxy();
         _loc5_.§_-tr§.Set(param3);
         _loc5_.§_-dP§ = param2;
         _loc5_.§_-af§ = param4;
         _loc5_.§_-pF§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§_-NX§(_loc7_,_loc6_,_loc5_);
         return _loc7_.include < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§_-KL§ = param1.§_-KL§;
      }
      
      public function §_-cT§() : int
      {
         return this.§_-zO§;
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
