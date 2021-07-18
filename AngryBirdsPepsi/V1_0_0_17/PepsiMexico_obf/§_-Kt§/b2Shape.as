package §_-Kt§
{
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-qg§.b2AABB;
   import §_-qg§.b2Distance;
   import §_-qg§.b2DistanceInput;
   import §_-qg§.b2DistanceOutput;
   import §_-qg§.b2DistanceProxy;
   import §_-qg§.b2RayCastInput;
   import §_-qg§.b2RayCastOutput;
   import §_-qg§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §_-Vl§:int = -1;
      
      b2internal static const §_-n7§:int = 0;
      
      b2internal static const §_-6T§:int = 1;
      
      b2internal static const §_-mn§:int = 2;
      
      b2internal static const §_-Hi§:int = 3;
      
      public static const §_-74§:int = 1;
      
      public static const §_-VP§:int = 0;
      
      public static const §_-OP§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-mn§ = 2;
            §_-Hi§ = 3;
            §_-74§ = 1;
            §_-VP§ = 0;
            §_-OP§ = -1;
         }
      }
      
      b2internal var §_-Sj§:int;
      
      b2internal var §_-Q2§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               this.§_-Sj§ = b2internal::_-Vl;
               if(_loc1_)
               {
                  this.§_-Q2§ = b2Settings.b2_linearSlop;
               }
            }
         }
      }
      
      public static function §_-pb§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§ do§ = new b2DistanceProxy();
         _loc5_.§ do§.Set(param1);
         if(!(_loc8_ && param1))
         {
            _loc5_.§_-q9§ = new b2DistanceProxy();
            if(_loc9_ || param1)
            {
               _loc5_.§_-q9§.Set(param3);
               addr55:
               _loc5_.§_-Yf§ = param2;
            }
            _loc5_.§_-gD§ = param4;
            _loc5_.§_-X4§ = true;
            var _loc6_:b2SimplexCache;
            (_loc6_ = new b2SimplexCache()).count = 0;
            var _loc7_:b2DistanceOutput = new b2DistanceOutput();
            if(_loc9_ || param3)
            {
               b2Distance.§_-PT§(_loc7_,_loc6_,_loc5_);
            }
            return _loc7_.§_-fF§ < 10 * Number.MIN_VALUE;
         }
         §§goto(addr55);
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-Q2§ = param1.§_-Q2§;
         }
      }
      
      public function §_-ww§() : int
      {
         return this.§_-Sj§;
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
