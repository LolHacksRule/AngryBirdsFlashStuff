package §,7§
{
   import §"U§.b2Transform;
   import §"U§.b2Vec2;
   import §<!!§.b2AABB;
   import §<!!§.b2Distance;
   import §<!!§.b2DistanceInput;
   import §<!!§.b2DistanceOutput;
   import §<!!§.b2DistanceProxy;
   import §<!!§.b2RayCastInput;
   import §<!!§.b2RayCastOutput;
   import §<!!§.b2SimplexCache;
   import §=!X§.b2Settings;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §'5§:int = -1;
      
      b2internal static const §%b§:int = 0;
      
      b2internal static const §0!7§:int = 1;
      
      b2internal static const § h§:int = 2;
      
      b2internal static const §^!§:int = 3;
      
      public static const §`!@§:int = 1;
      
      public static const §#P§:int = 0;
      
      public static const §]!P§:int = -1;
       
      
      b2internal var §+k§:int;
      
      b2internal var §^!c§:Number;
      
      public function b2Shape()
      {
         super();
         this.§+k§ = b2internal::'5;
         this.§^!c§ = b2Settings.b2_linearSlop;
      }
      
      public static function §;l§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§ "§ = new b2DistanceProxy();
         _loc5_.§ "§.Set(param1);
         _loc5_.§,x§ = new b2DistanceProxy();
         _loc5_.§,x§.Set(param3);
         _loc5_.§7q§ = param2;
         _loc5_.§^d§ = param4;
         _loc5_.§^1§ = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.§6!k§(_loc7_,_loc6_,_loc5_);
         return _loc7_.§4?§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.§^!c§ = param1.§^!c§;
      }
      
      public function §^!A§() : int
      {
         return this.§+k§;
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
