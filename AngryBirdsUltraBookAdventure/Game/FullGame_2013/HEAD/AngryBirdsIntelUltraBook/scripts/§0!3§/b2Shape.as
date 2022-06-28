package §0!3§
{
   import §!m§.b2AABB;
   import §!m§.b2Distance;
   import §!m§.b2DistanceInput;
   import §!m§.b2DistanceOutput;
   import §!m§.b2DistanceProxy;
   import §!m§.b2RayCastInput;
   import §!m§.b2RayCastOutput;
   import §!m§.b2SimplexCache;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §@!!§:int = -1;
      
      b2internal static const §^%§:int = 0;
      
      b2internal static const §9Q§:int = 1;
      
      b2internal static const §#[§:int = 2;
      
      b2internal static const §[I§:int = 3;
      
      public static const §^h§:int = 1;
      
      public static const §;Q§:int = 0;
      
      public static const §?M§:int = -1;
       
      
      b2internal var §2!5§:int;
      
      b2internal var §!@§:Number;
      
      public function b2Shape()
      {
         super();
         this.§2!5§ = §@!!§;
         this.§!@§ = b2Settings.b2_linearSlop;
      }
      
      public static function § V§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput = new b2DistanceInput();
         _loc5_.§'[§ = new b2DistanceProxy();
         _loc5_.§'[§.Set(param1);
         _loc5_.§4P§ = new b2DistanceProxy();
         _loc5_.§4P§.Set(param3);
         _loc5_.§;!5§ = param2;
         _loc5_.§'G§ = param4;
         _loc5_.§>L§ = true;
         var _loc6_:b2SimplexCache = new b2SimplexCache();
         _loc6_.count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§^!g§(_loc7_,_loc6_,_loc5_);
         return _loc7_.distance < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§!@§ = param1.§!@§;
      }
      
      public function §6!-§() : int
      {
         return this.§2!5§;
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
