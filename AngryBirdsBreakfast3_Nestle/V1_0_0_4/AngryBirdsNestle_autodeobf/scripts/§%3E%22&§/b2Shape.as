package §>"&§
{
   import §,P§.b2AABB;
   import §,P§.b2Distance;
   import §,P§.b2DistanceInput;
   import §,P§.b2DistanceOutput;
   import §,P§.b2DistanceProxy;
   import §,P§.b2RayCastInput;
   import §,P§.b2RayCastOutput;
   import §,P§.b2SimplexCache;
   import §-%§.b2Transform;
   import §-%§.b2Vec2;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §=@§:int = -1;
      
      b2internal static const §+;§:int = 0;
      
      b2internal static const §`g§:int = 1;
      
      b2internal static const §-!g§:int = 2;
      
      b2internal static const §"%§:int = 3;
      
      public static const § n§:int = 1;
      
      public static const §^!P§:int = 0;
      
      public static const §^"§:int = -1;
       
      
      b2internal var §^Z§:int;
      
      b2internal var §4=§:Number;
      
      public function b2Shape()
      {
         super();
         this.§^Z§ = b2internal::=@;
         this.§4=§ = b2Settings.b2_linearSlop;
      }
      
      public static function §1`§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§,"4§ = new b2DistanceProxy();
         _loc5_.§,"4§.Set(param1);
         _loc5_.§0S§ = new b2DistanceProxy();
         _loc5_.§0S§.Set(param3);
         _loc5_.§9!f§ = param2;
         _loc5_.§+L§ = param4;
         _loc5_.§1!A§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§4x§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§2@§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§4=§ = param1.§4=§;
      }
      
      public function §4!C§() : int
      {
         return this.§^Z§;
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
