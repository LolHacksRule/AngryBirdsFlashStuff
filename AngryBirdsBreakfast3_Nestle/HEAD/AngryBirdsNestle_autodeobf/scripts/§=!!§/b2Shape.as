package §=!!§
{
   import §!§.b2AABB;
   import §!§.b2Distance;
   import §!§.b2DistanceInput;
   import §!§.b2DistanceOutput;
   import §!§.b2DistanceProxy;
   import §!§.b2RayCastInput;
   import §!§.b2RayCastOutput;
   import §!§.b2SimplexCache;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §[6§:int = -1;
      
      b2internal static const §+!B§:int = 0;
      
      b2internal static const §3!;§:int = 1;
      
      b2internal static const § 8§:int = 2;
      
      b2internal static const §"a§:int = 3;
      
      public static const §5!N§:int = 1;
      
      public static const §0!]§:int = 0;
      
      public static const §`1§:int = -1;
       
      
      b2internal var §5Q§:int;
      
      b2internal var §>!M§:Number;
      
      public function b2Shape()
      {
         super();
         this.§5Q§ = b2internal::[6;
         this.§>!M§ = b2Settings.b2_linearSlop;
      }
      
      public static function §4I§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§+!l§ = new b2DistanceProxy();
         _loc5_.§+!l§.Set(param1);
         _loc5_.§!!5§ = new b2DistanceProxy();
         _loc5_.§!!5§.Set(param3);
         _loc5_.§5!H§ = param2;
         _loc5_.§9!&§ = param4;
         _loc5_.§6!T§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§ "4§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§2!7§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§>!M§ = param1.§>!M§;
      }
      
      public function §4!v§() : int
      {
         return this.§5Q§;
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
