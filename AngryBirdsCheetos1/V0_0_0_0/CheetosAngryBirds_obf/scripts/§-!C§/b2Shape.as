package §-!C§
{
   import § G§.b2AABB;
   import § G§.b2Distance;
   import § G§.b2DistanceInput;
   import § G§.b2DistanceOutput;
   import § G§.b2DistanceProxy;
   import § G§.b2RayCastInput;
   import § G§.b2RayCastOutput;
   import § G§.b2SimplexCache;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §8;§:int = -1;
      
      b2internal static const §9!T§:int = 0;
      
      b2internal static const §;!5§:int = 1;
      
      b2internal static const §"?§:int = 2;
      
      b2internal static const §!!-§:int = 3;
      
      public static const §[§:int = 1;
      
      public static const §5!+§:int = 0;
      
      public static const §8J§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8;§ = -1;
            loop0:
            while(true)
            {
               §9!T§ = 0;
               while(true)
               {
                  §;!5§ = 1;
                  addr36:
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            §"?§ = 2;
            while(true)
            {
               §!!-§ = 3;
               addr79:
               while(!_loc2_)
               {
                  §[§ = 1;
                  continue loop2;
               }
            }
         }
         §§goto(addr55);
      }
      
      b2internal var §3c§:int;
      
      b2internal var §=!W§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§3c§ = b2internal::8;;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§=!W§ = b2Settings.b2_linearSlop;
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public static function §;!4§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§;!?§ = new b2DistanceProxy();
         if(_loc9_)
         {
            _loc5_.§;!?§.Set(param1);
            loop0:
            while(true)
            {
               _loc5_.§&z§ = new b2DistanceProxy();
               while(true)
               {
                  _loc5_.§&z§.Set(param3);
                  loop2:
                  for(; !(_loc8_ && param1); loop4:
                  while(_loc9_ || param2)
                  {
                     loop5:
                     do
                     {
                        _loc5_.§&!6§ = param4;
                        while(_loc9_)
                        {
                           _loc5_.§0V§ = true;
                           if(!_loc8_)
                           {
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                     while(false);
                     
                     var _loc6_:b2SimplexCache;
                     (_loc6_ = new b2SimplexCache()).count = 0;
                     var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                     if(!(_loc8_ && param1))
                     {
                        b2Distance.§const§(_loc7_,_loc6_,_loc5_);
                     }
                     return _loc7_.§ !@§ < 10 * Number.MIN_VALUE;
                  })
                  {
                     if(_loc8_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        _loc5_.§+]§ = param2;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=!W§ = param1.§=!W§;
         }
      }
      
      public function §0!$§() : int
      {
         return this.§3c§;
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
