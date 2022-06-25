package §0!'§
{
   import §&!-§.b2AABB;
   import §&!-§.b2Distance;
   import §&!-§.b2DistanceInput;
   import §&!-§.b2DistanceOutput;
   import §&!-§.b2DistanceProxy;
   import §&!-§.b2RayCastInput;
   import §&!-§.b2RayCastOutput;
   import §&!-§.b2SimplexCache;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §^L§:int = -1;
      
      b2internal static const §8&§:int = 0;
      
      b2internal static const §8y§:int = 1;
      
      b2internal static const §<!o§:int = 2;
      
      b2internal static const §">§:int = 3;
      
      public static const §8k§:int = 1;
      
      public static const §<Y§:int = 0;
      
      public static const §3! §:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^L§ = -1;
         }
         while(true)
         {
            §8&§ = 0;
            loop1:
            while(true)
            {
               §8y§ = 1;
               while(true)
               {
                  §<!o§ = 2;
                  continue loop1;
                  addr60:
                  if(_loc1_ || _loc2_)
                  {
                     §<Y§ = 0;
                     do
                     {
                        §3! § = -1;
                     }
                     while(_loc2_);
                     
                     addr67:
                     if(_loc2_ && _loc2_)
                     {
                        loop5:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr60);
                           }
                           else
                           {
                              while(true)
                              {
                                 §8k§ = 1;
                                 continue loop5;
                              }
                              addr72:
                           }
                        }
                        continue;
                     }
                     if(_loc1_)
                     {
                        return;
                     }
                     continue loop1;
                  }
               }
            }
            if(_loc2_ && _loc1_)
            {
               continue;
            }
            §">§ = 3;
            §§goto(addr72);
         }
      }
      
      b2internal var §"!1§:int;
      
      b2internal var §6q§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§"!1§ = b2internal::^L;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§6q§ = b2Settings.b2_linearSlop;
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      public static function §'V§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§5R§ = new b2DistanceProxy();
         if(_loc9_)
         {
            _loc5_.§5R§.Set(param1);
            while(true)
            {
               _loc5_.§0D§ = new b2DistanceProxy();
               addr85:
               while(true)
               {
                  _loc5_.§0D§.Set(param3);
               }
               addr51:
               if(_loc8_ && b2Shape)
               {
                  continue;
               }
               _loc5_.§2!j§ = true;
               if(_loc9_ || param2)
               {
                  if(!_loc8_)
                  {
                     if(false)
                     {
                        loop4:
                        while(true)
                        {
                           _loc5_.§`]§ = param4;
                           addr47:
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr51);
                              }
                              addr79:
                              while(true)
                              {
                                 _loc5_.§&!D§ = param2;
                                 break loop4;
                              }
                           }
                           §§goto(addr85);
                        }
                        while(true)
                        {
                           §§goto(addr43);
                        }
                        addr43:
                        addr73:
                     }
                     var _loc6_:b2SimplexCache;
                     (_loc6_ = new b2SimplexCache()).count = 0;
                     var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                     if(_loc9_ || param1)
                     {
                        b2Distance.§7U§(_loc7_,_loc6_,_loc5_);
                     }
                     return _loc7_.§!!q§ < 10 * Number.MIN_VALUE;
                  }
                  §§goto(addr73);
               }
               §§goto(addr47);
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
         if(!(_loc2_ && _loc2_))
         {
            this.§6q§ = param1.§6q§;
         }
      }
      
      public function §0!@§() : int
      {
         return this.§"!1§;
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
