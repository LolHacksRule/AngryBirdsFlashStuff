package §&U§
{
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2AABB;
   import §9"§.b2Distance;
   import §9"§.b2DistanceInput;
   import §9"§.b2DistanceOutput;
   import §9"§.b2DistanceProxy;
   import §9"§.b2RayCastInput;
   import §9"§.b2RayCastOutput;
   import §9"§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §]!"§:int = -1;
      
      b2internal static const §&!L§:int = 0;
      
      b2internal static const §,!K§:int = 1;
      
      b2internal static const § Y§:int = 2;
      
      b2internal static const §53§:int = 3;
      
      public static const §0!J§:int = 1;
      
      public static const §5!7§:int = 0;
      
      public static const §?E§:int = -1;
       
      
      b2internal var §8!J§:int;
      
      b2internal var §@s§:Number;
      
      public function b2Shape()
      {
         super();
         this.§8!J§ = b2internal::]!";
         this.§@s§ = b2Settings.b2_linearSlop;
      }
      
      public static function §[!K§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§+X§ = new b2DistanceProxy();
         _loc5_.§+X§.Set(param1);
         _loc5_.§4q§ = new b2DistanceProxy();
         _loc5_.§4q§.Set(param3);
         _loc5_.§&!C§ = param2;
         _loc5_.§,!P§ = param4;
         _loc5_.§[!+§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§]!H§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§%!P§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§@s§ = param1.§@s§;
      }
      
      public function §"!M§() : int
      {
         return this.§8!J§;
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
