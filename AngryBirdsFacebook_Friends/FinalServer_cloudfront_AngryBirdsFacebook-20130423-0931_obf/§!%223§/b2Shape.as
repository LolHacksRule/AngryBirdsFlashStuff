package §!"3§
{
   import §'"-§.b2AABB;
   import §'"-§.b2Distance;
   import §'"-§.b2DistanceInput;
   import §'"-§.b2DistanceOutput;
   import §'"-§.b2DistanceProxy;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §'"-§.b2SimplexCache;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §%§:int = -1;
      
      b2internal static const § "&§:int = 0;
      
      b2internal static const §8x§:int = 1;
      
      b2internal static const §?!7§:int = 2;
      
      b2internal static const §,!@§:int = 3;
      
      public static const §%!_§:int = 1;
      
      public static const §7!%§:int = 0;
      
      public static const §^"§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §%§ = -1;
            loop0:
            while(true)
            {
               § "&§ = 0;
               while(true)
               {
                  §8x§ = 1;
                  addr115:
                  while(!_loc1_)
                  {
                     §?!7§ = 2;
                  }
                  continue loop0;
                  while(_loc2_ || _loc2_)
                  {
                     §%!_§ = 1;
                     loop5:
                     for(; !(_loc1_ && b2Shape); §7!%§ = 0,do
                     {
                        §^"§ = -1;
                     }
                     while(!(_loc2_ || b2Shape));
                     ,if(!(_loc1_ && _loc1_))
                     {
                        addr47:
                        if(_loc1_ && _loc2_)
                        {
                           while(true)
                           {
                              §,!@§ = 3;
                              break loop5;
                              §§goto(addr47);
                           }
                           addr110:
                        }
                        return;
                     })
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr115);
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      b2internal var §<"@§:int;
      
      b2internal var §0!_§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         while(true)
         {
            this.§<"@§ = b2internal::%;
            while(!(_loc1_ && _loc2_))
            {
               this.§0!_§ = b2Settings.b2_linearSlop;
               if(!(_loc1_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public static function §9e§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§>!j§ = new b2DistanceProxy();
         if(_loc8_)
         {
            _loc5_.§>!j§.Set(param1);
            while(true)
            {
               _loc5_.§@!a§ = new b2DistanceProxy();
               while(true)
               {
                  _loc5_.§@!a§.Set(param3);
                  addr71:
                  while(!_loc9_)
                  {
                     _loc5_.§-H§ = param2;
                     loop3:
                     while(true)
                     {
                        addr39:
                        while(true)
                        {
                           _loc5_.§3!3§ = param4;
                           continue loop3;
                        }
                     }
                  }
               }
            }
            addr94:
         }
         while(true)
         {
            _loc5_.§0y§ = true;
            if(!_loc9_)
            {
               if(_loc8_)
               {
                  if(!_loc9_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr39);
                  }
                  else
                  {
                     §§goto(addr94);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr43);
         }
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         if(!_loc9_)
         {
            b2Distance.§4"H§(_loc7_,_loc6_,_loc5_);
         }
         return _loc7_.§<"1§ < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§0!_§ = param1.§0!_§;
         }
      }
      
      public function §>!f§() : int
      {
         return this.§<"@§;
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
