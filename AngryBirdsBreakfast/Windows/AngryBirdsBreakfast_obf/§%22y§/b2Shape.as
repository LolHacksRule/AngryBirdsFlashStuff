package §"y§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §^9§.b2AABB;
   import §^9§.b2Distance;
   import §^9§.b2DistanceInput;
   import §^9§.b2DistanceOutput;
   import §^9§.b2DistanceProxy;
   import §^9§.b2RayCastInput;
   import §^9§.b2RayCastOutput;
   import §^9§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §9N§:int = -1;
      
      b2internal static const §9_§:int = 0;
      
      b2internal static const §2e§:int = 1;
      
      b2internal static const §[!Q§:int = 2;
      
      b2internal static const §@!y§:int = 3;
      
      public static const §>N§:int = 1;
      
      public static const §8""§:int = 0;
      
      public static const §,!N§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9N§ = -1;
            loop0:
            while(true)
            {
               §9_§ = 0;
               loop1:
               while(true)
               {
                  §2e§ = 1;
                  while(true)
                  {
                     §[!Q§ = 2;
                     loop3:
                     while(!(_loc1_ && b2Shape))
                     {
                        §@!y§ = 3;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §>N§ = 1;
                                 addr68:
                                 while(true)
                                 {
                                    §8""§ = 0;
                                    while(_loc2_ || b2Shape)
                                    {
                                       §,!N§ = -1;
                                       if(_loc1_)
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          §§goto(addr32);
                                       }
                                       §§goto(addr68);
                                    }
                                    continue loop3;
                                 }
                              }
                              return;
                              addr41:
                              addr75:
                           }
                           break;
                           addr32:
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           §§goto(addr41);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      b2internal var §6m§:int;
      
      b2internal var §,!;§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§6m§ = b2internal::9N;
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§,!;§ = b2Settings.b2_linearSlop;
            if(_loc2_ || _loc1_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §]",§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§2J§ = new b2DistanceProxy();
         if(!_loc8_)
         {
            _loc5_.§2J§.Set(param1);
            loop0:
            while(true)
            {
               _loc5_.§4"$§ = new b2DistanceProxy();
               addr95:
               while(true)
               {
                  _loc5_.§4"$§.Set(param3);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc5_.§'"-§ = param2;
            §§goto(addr57);
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
         if(_loc2_ || param1)
         {
            this.§,!;§ = param1.§,!;§;
         }
      }
      
      public function §<!A§() : int
      {
         return this.§6m§;
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
