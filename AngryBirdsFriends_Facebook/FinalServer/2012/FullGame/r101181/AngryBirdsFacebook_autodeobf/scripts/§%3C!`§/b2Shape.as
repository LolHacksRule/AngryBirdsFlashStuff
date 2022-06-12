package §<!`§
{
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §55§.b2AABB;
   import §55§.b2Distance;
   import §55§.b2DistanceInput;
   import §55§.b2DistanceOutput;
   import §55§.b2DistanceProxy;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   import §55§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §&!G§:int = -1;
      
      b2internal static const §'!U§:int = 0;
      
      b2internal static const §@!#§:int = 1;
      
      b2internal static const §`M§:int = 2;
      
      b2internal static const §'"A§:int = 3;
      
      public static const § ;§:int = 1;
      
      public static const §="E§:int = 0;
      
      public static const §"!d§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&!G§ = -1;
            loop0:
            while(true)
            {
               §'!U§ = 0;
               addr111:
               while(true)
               {
                  §@!#§ = 1;
               }
               loop5:
               while(true)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §="E§ = 0;
                     loop6:
                     while(!_loc2_)
                     {
                        §"!d§ = -1;
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        addr34:
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc1_ || b2Shape)
                           {
                              if(_loc1_)
                              {
                                 return;
                              }
                              break loop5;
                           }
                           loop3:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §'"A§ = 3;
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §`M§ = 2;
                                    continue loop3;
                                 }
                                 addr106:
                              }
                           }
                           addr41:
                        }
                        while(true)
                        {
                           § ;§ = 1;
                           break loop6;
                           §§goto(addr34);
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr111);
            }
         }
         §§goto(addr106);
      }
      
      b2internal var §<";§:int;
      
      b2internal var §%I§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§<";§ = b2internal::&!G;
            while(_loc1_ || _loc2_)
            {
               this.§%I§ = b2Settings.b2_linearSlop;
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public static function §3§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§7!p§ = new b2DistanceProxy();
         if(!(_loc9_ && param3))
         {
            _loc5_.§7!p§.Set(param1);
            while(true)
            {
               _loc5_.§["@§ = new b2DistanceProxy();
               addr94:
               while(true)
               {
                  _loc5_.§["@§.Set(param3);
               }
            }
            addr109:
         }
         loop2:
         while(true)
         {
            _loc5_.§'!3§ = param2;
            while(true)
            {
               addr64:
               addr43:
               while(true)
               {
                  _loc5_.§@!4§ = param4;
                  continue loop2;
               }
               if(_loc9_ && param2)
               {
                  continue;
               }
               if(_loc8_)
               {
                  if(true)
                  {
                     var _loc6_:b2SimplexCache;
                     (_loc6_ = new b2SimplexCache()).count = 0;
                     var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                     if(!_loc9_)
                     {
                        b2Distance.§;!h§(_loc7_,_loc6_,_loc5_);
                     }
                     return _loc7_.§0!e§ < 10 * Number.MIN_VALUE;
                  }
                  §§goto(addr64);
               }
               else
               {
                  §§goto(addr109);
               }
            }
         }
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§%I§ = param1.§%I§;
         }
      }
      
      public function §"r§() : int
      {
         return this.§<";§;
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
