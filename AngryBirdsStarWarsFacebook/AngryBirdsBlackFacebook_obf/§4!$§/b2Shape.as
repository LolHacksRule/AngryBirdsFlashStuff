package §4!$§
{
   import §3"5§.b2AABB;
   import §3"5§.b2Distance;
   import §3"5§.b2DistanceInput;
   import §3"5§.b2DistanceOutput;
   import §3"5§.b2DistanceProxy;
   import §3"5§.b2RayCastInput;
   import §3"5§.b2RayCastOutput;
   import §3"5§.b2SimplexCache;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §6#1§:int = -1;
      
      b2internal static const §;!T§:int = 0;
      
      b2internal static const § !7§:int = 1;
      
      b2internal static const §5"l§:int = 2;
      
      b2internal static const §`"#§:int = 3;
      
      public static const §<#K§:int = 1;
      
      public static const §#!6§:int = 0;
      
      public static const §="z§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §6#1§ = -1;
            loop0:
            while(true)
            {
               §;!T§ = 0;
               while(true)
               {
                  § !7§ = 1;
                  loop2:
                  while(true)
                  {
                     §5"l§ = 2;
                     loop3:
                     while(true)
                     {
                        §`"#§ = 3;
                        while(true)
                        {
                           §<#K§ = 1;
                           continue loop2;
                           addr47:
                           while(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    §="z§ = -1;
                                    if(_loc2_)
                                    {
                                       addr35:
                                       if(_loc2_ || _loc2_)
                                       {
                                          return;
                                          addr42:
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §#!6§ = 0;
                     §§goto(addr47);
                  }
                  §§goto(addr42);
               }
            }
         }
         §§goto(addr82);
      }
      
      b2internal var §%!9§:int;
      
      b2internal var § "^§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            do
            {
               this.§%!9§ = b2internal::6#1;
               do
               {
                  this.§ "^§ = b2Settings.b2_linearSlop;
               }
               while(_loc1_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public static function §?#S§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§<!b§ = new b2DistanceProxy();
         if(_loc9_ || param3)
         {
            _loc5_.§<!b§.Set(param1);
         }
         loop0:
         while(true)
         {
            _loc5_.§#!]§ = new b2DistanceProxy();
            loop1:
            while(true)
            {
               _loc5_.§#!]§.Set(param3);
               loop2:
               while(true)
               {
                  _loc5_.§##=§ = param2;
                  loop3:
                  while(true)
                  {
                     addr53:
                     while(true)
                     {
                        _loc5_.§&#L§ = param4;
                        addr57:
                        while(!_loc8_)
                        {
                           if(_loc9_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ "^§ = param1.§ "^§;
         }
      }
      
      public function §8! §() : int
      {
         return this.§%!9§;
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
