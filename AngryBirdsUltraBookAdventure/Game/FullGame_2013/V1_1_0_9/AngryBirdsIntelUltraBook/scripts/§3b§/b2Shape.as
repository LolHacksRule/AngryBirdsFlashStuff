package §3b§
{
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §>!Z§.b2AABB;
   import §>!Z§.b2Distance;
   import §>!Z§.b2DistanceInput;
   import §>!Z§.b2DistanceOutput;
   import §>!Z§.b2DistanceProxy;
   import §>!Z§.b2RayCastInput;
   import §>!Z§.b2RayCastOutput;
   import §>!Z§.b2SimplexCache;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §7!]§:int = -1;
      
      b2internal static const §^!6§:int = 0;
      
      b2internal static const §=&§:int = 1;
      
      b2internal static const §=n§:int = 2;
      
      b2internal static const §=!#§:int = 3;
      
      public static const §%!j§:int = 1;
      
      public static const §]!i§:int = 0;
      
      public static const §"!r§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2Shape))
         {
            §7!]§ = -1;
            loop0:
            while(true)
            {
               §^!6§ = 0;
               while(true)
               {
                  §=&§ = 1;
                  loop2:
                  for(; _loc2_ || _loc2_; if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  },§%!j§ = 1,§§goto(addr62))
                  {
                     §=n§ = 2;
                     loop3:
                     while(true)
                     {
                        §=!#§ = 3;
                        loop4:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr62:
                           loop5:
                           while(true)
                           {
                              if(_loc1_ && _loc1_)
                              {
                                 continue loop4;
                                 do
                                 {
                                    if(_loc2_ || b2Shape)
                                    {
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 while(§"!r§ = -1, !_loc2_);
                                 
                              }
                              continue loop0;
                              addr40:
                              §§goto(addr35);
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         addr35:
      }
      
      b2internal var §3r§:int;
      
      b2internal var § !c§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         do
         {
            this.§3r§ = b2internal::7!];
            do
            {
               this.§ !c§ = b2Settings.b2_linearSlop;
            }
            while(!(_loc1_ || this));
            
         }
         while(!_loc1_);
         
      }
      
      public static function §]I§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§,N§ = new b2DistanceProxy();
         if(!_loc9_)
         {
            _loc5_.§,N§.Set(param1);
            while(true)
            {
               _loc5_.§#y§ = new b2DistanceProxy();
               loop1:
               for(; !(_loc9_ && param2); while(_loc8_ || param3)
               {
                  §§goto(addr42);
                  §§goto(addr33);
               })
               {
                  _loc5_.§#y§.Set(param3);
                  while(true)
                  {
                     _loc5_.§ !f§ = param2;
                     continue loop1;
                     loop5:
                     while(_loc8_ || param1)
                     {
                        while(true)
                        {
                           _loc5_.§#!+§ = true;
                           if(_loc9_)
                           {
                              continue loop5;
                           }
                           if(!(_loc8_ || b2Shape))
                           {
                              continue loop1;
                           }
                           if(true)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc5_.§!@§ = param4;
                              continue loop5;
                           }
                        }
                        var _loc6_:b2SimplexCache;
                        (_loc6_ = new b2SimplexCache()).count = 0;
                        var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                        if(!(_loc9_ && param1))
                        {
                           b2Distance.§65§(_loc7_,_loc6_,_loc5_);
                        }
                        return _loc7_.§>!_§ < 10 * Number.MIN_VALUE;
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !c§ = param1.§ !c§;
         }
      }
      
      public function § 5§() : int
      {
         return this.§3r§;
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
