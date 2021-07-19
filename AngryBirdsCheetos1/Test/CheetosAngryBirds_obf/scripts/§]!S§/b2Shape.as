package §]!S§
{
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2AABB;
   import §-r§.b2Distance;
   import §-r§.b2DistanceInput;
   import §-r§.b2DistanceOutput;
   import §-r§.b2DistanceProxy;
   import §-r§.b2RayCastInput;
   import §-r§.b2RayCastOutput;
   import §-r§.b2SimplexCache;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §;<§:int = -1;
      
      b2internal static const §,-§:int = 0;
      
      b2internal static const §"![§:int = 1;
      
      b2internal static const §#!D§:int = 2;
      
      b2internal static const §2!6§:int = 3;
      
      public static const §[Q§:int = 1;
      
      public static const §&6§:int = 0;
      
      public static const §2!F§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;<§ = -1;
            loop0:
            while(true)
            {
               §,-§ = 0;
               loop1:
               while(true)
               {
                  §"![§ = 1;
                  loop2:
                  while(true)
                  {
                     §#!D§ = 2;
                     addr79:
                     if(_loc1_ || _loc1_)
                     {
                        §[Q§ = 1;
                        loop5:
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §&6§ = 0;
                              while(_loc1_)
                              {
                                 §2!F§ = -1;
                                 if(_loc1_ || b2Shape)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc2_ && b2Shape))
                              {
                                 §§goto(addr79);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §2!6§ = 3;
                                    continue loop4;
                                 }
                                 addr91:
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      b2internal var §#!&§:int;
      
      b2internal var §#&§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§#!&§ = b2internal::;<;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§#&§ = b2Settings.b2_linearSlop;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §"!F§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§-C§ = new b2DistanceProxy();
         if(_loc9_ || param3)
         {
            _loc5_.§-C§.Set(param1);
            while(true)
            {
               _loc5_.§%!J§ = new b2DistanceProxy();
               addr78:
               while(!_loc8_)
               {
                  _loc5_.§%!J§.Set(param3);
                  while(true)
                  {
                     _loc5_.§'1§ = param2;
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               _loc5_.§0!$§ = param4;
               while(_loc9_)
               {
                  if(!_loc8_)
                  {
                     _loc5_.§"_§ = true;
                     if(_loc9_)
                     {
                        if(!_loc8_)
                        {
                           if(true)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
               §§goto(addr72);
            }
            var _loc6_:b2SimplexCache;
            (_loc6_ = new b2SimplexCache()).count = 0;
            var _loc7_:b2DistanceOutput = new b2DistanceOutput();
            if(!(_loc8_ && b2Shape))
            {
               b2Distance.§4!-§(_loc7_,_loc6_,_loc5_);
            }
            return _loc7_.§8!6§ < 10 * Number.MIN_VALUE;
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
            this.§#&§ = param1.§#&§;
         }
      }
      
      public function §7!_§() : int
      {
         return this.§#!&§;
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
