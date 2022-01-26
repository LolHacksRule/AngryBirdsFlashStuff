package §>![§
{
   import § Y§.b2AABB;
   import § Y§.b2Distance;
   import § Y§.b2DistanceInput;
   import § Y§.b2DistanceOutput;
   import § Y§.b2DistanceProxy;
   import § Y§.b2RayCastInput;
   import § Y§.b2RayCastOutput;
   import § Y§.b2SimplexCache;
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §<!8§.b2Transform;
   import §<!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §?0§:int = -1;
      
      b2internal static const §4!c§:int = 0;
      
      b2internal static const §6!2§:int = 1;
      
      b2internal static const §-!<§:int = 2;
      
      b2internal static const §=W§:int = 3;
      
      public static const §-2§:int = 1;
      
      public static const §@]§:int = 0;
      
      public static const §6!>§:int = -1;
       
      
      b2internal var §'!c§:int;
      
      b2internal var §2B§:Number;
      
      public function b2Shape()
      {
         super();
         this.§'!c§ = b2internal::?0;
         this.§2B§ = b2Settings.b2_linearSlop;
      }
      
      public static function §#!J§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§+!L§ = new b2DistanceProxy();
         _loc5_.§+!L§.Set(param1);
         _loc5_.§%!-§ = new b2DistanceProxy();
         _loc5_.§%!-§.Set(param3);
         _loc5_.§ !D§ = param2;
         _loc5_.§[[§ = param4;
         _loc5_.§?'§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§'!§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§4"§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§2B§ = param1.§2B§;
      }
      
      public function §6`§() : int
      {
         return this.§'!c§;
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
