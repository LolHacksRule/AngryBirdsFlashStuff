package §"!9§
{
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.b2AABB;
   import §5!o§.b2Distance;
   import §5!o§.b2DistanceInput;
   import §5!o§.b2DistanceOutput;
   import §5!o§.b2DistanceProxy;
   import §5!o§.b2RayCastInput;
   import §5!o§.b2RayCastOutput;
   import §5!o§.b2SimplexCache;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §'$§:int = -1;
      
      b2internal static const §[x§:int = 0;
      
      b2internal static const §4A§:int = 1;
      
      b2internal static const §;!O§:int = 2;
      
      b2internal static const §;!Q§:int = 3;
      
      public static const §`§:int = 1;
      
      public static const §;!b§:int = 0;
      
      public static const §-!b§:int = -1;
       
      
      b2internal var §="1§:int;
      
      b2internal var §;$§:Number;
      
      public function b2Shape()
      {
         super();
         this.§="1§ = b2internal::'$;
         this.§;$§ = b2Settings.b2_linearSlop;
      }
      
      public static function §;c§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§^!W§ = new b2DistanceProxy();
         _loc5_.§^!W§.Set(param1);
         _loc5_.§+!4§ = new b2DistanceProxy();
         _loc5_.§+!4§.Set(param3);
         _loc5_.§'!k§ = param2;
         _loc5_.§%"4§ = param4;
         _loc5_.§2h§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§]H§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§`!8§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§;$§ = param1.§;$§;
      }
      
      public function §+!O§() : int
      {
         return this.§="1§;
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
