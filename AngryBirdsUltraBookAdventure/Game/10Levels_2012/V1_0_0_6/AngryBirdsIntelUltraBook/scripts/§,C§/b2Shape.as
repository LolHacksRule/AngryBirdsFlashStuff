package §,C§
{
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2AABB;
   import §8w§.b2Distance;
   import §8w§.b2DistanceInput;
   import §8w§.b2DistanceOutput;
   import §8w§.b2DistanceProxy;
   import §8w§.b2RayCastInput;
   import §8w§.b2RayCastOutput;
   import §8w§.b2SimplexCache;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const § !n§:int = -1;
      
      b2internal static const §1"§:int = 0;
      
      b2internal static const §+!N§:int = 1;
      
      b2internal static const §`!<§:int = 2;
      
      b2internal static const §6§:int = 3;
      
      public static const §6E§:int = 1;
      
      public static const §+!e§:int = 0;
      
      public static const §%!S§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § !n§ = -1;
         }
         while(true)
         {
            §1"§ = 0;
            loop1:
            while(true)
            {
               §+!N§ = 1;
               do
               {
                  §`!<§ = 2;
                  while(true)
                  {
                     §6§ = 3;
                     addr78:
                     while(_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
               while(_loc1_);
               
               return;
            }
         }
      }
      
      b2internal var §"_§:int;
      
      b2internal var §?!X§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§"_§ = b2internal:: !n;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            this.§?!X§ = b2Settings.b2_linearSlop;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §3!V§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§9!;§ = new b2DistanceProxy();
         if(_loc8_)
         {
            _loc5_.§9!;§.Set(param1);
         }
         loop0:
         while(true)
         {
            _loc5_.§ !%§ = new b2DistanceProxy();
            while(true)
            {
               _loc5_.§ !%§.Set(param3);
               loop2:
               while(true)
               {
                  _loc5_.§ T§ = param2;
                  while(true)
                  {
                     addr44:
                     addr33:
                     while(true)
                     {
                        _loc5_.§?!+§ = param4;
                        continue loop2;
                     }
                     if(!(_loc8_ || b2Shape))
                     {
                        continue;
                     }
                     if(_loc9_)
                     {
                        continue loop0;
                     }
                     if(true)
                     {
                        var _loc6_:b2SimplexCache;
                        (_loc6_ = new b2SimplexCache()).count = 0;
                        var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                        if(!_loc9_)
                        {
                           b2Distance.§3H§(_loc7_,_loc6_,_loc5_);
                        }
                        return _loc7_.§6=§ < 10 * Number.MIN_VALUE;
                     }
                     §§goto(addr44);
                  }
               }
               if(_loc9_ && param2)
               {
                  continue;
               }
               _loc5_.§5!=§ = true;
               if(_loc8_)
               {
                  §§goto(addr33);
               }
               §§goto(addr48);
            }
         }
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?!X§ = param1.§?!X§;
         }
      }
      
      public function §'!_§() : int
      {
         return this.§"_§;
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
