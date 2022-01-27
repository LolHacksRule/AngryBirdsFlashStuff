package §4!W§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §6!n§.b2Transform;
   import §6!n§.b2Vec2;
   import §;!Z§.b2AABB;
   import §;!Z§.b2Distance;
   import §;!Z§.b2DistanceInput;
   import §;!Z§.b2DistanceOutput;
   import §;!Z§.b2DistanceProxy;
   import §;!Z§.b2RayCastInput;
   import §;!Z§.b2RayCastOutput;
   import §;!Z§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §%!2§:int = -1;
      
      b2internal static const §9t§:int = 0;
      
      b2internal static const §>b§:int = 1;
      
      b2internal static const §[!e§:int = 2;
      
      b2internal static const §>!z§:int = 3;
      
      public static const §]!H§:int = 1;
      
      public static const §]>§:int = 0;
      
      public static const §3%§:int = -1;
       
      
      b2internal var §`K§:int;
      
      b2internal var §!!l§:Number;
      
      public function b2Shape()
      {
         super();
         this.§`K§ = b2internal::%!2;
         this.§!!l§ = b2Settings.b2_linearSlop;
      }
      
      public static function §1'§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§+z§ = new b2DistanceProxy();
         _loc5_.§+z§.Set(param1);
         _loc5_.§5!$§ = new b2DistanceProxy();
         _loc5_.§5!$§.Set(param3);
         _loc5_.§+!g§ = param2;
         _loc5_.§,X§ = param4;
         _loc5_.§>D§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§4!T§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§2v§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§!!l§ = param1.§!!l§;
      }
      
      public function §finally§() : int
      {
         return this.§`K§;
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
