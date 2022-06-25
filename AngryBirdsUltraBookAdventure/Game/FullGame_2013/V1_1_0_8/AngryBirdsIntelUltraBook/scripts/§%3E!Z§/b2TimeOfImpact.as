package §>!Z§
{
   import §&H§.b2Math;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §@!3§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §7!D§:b2SimplexCache;
      
      private static var §%p§:b2DistanceInput;
      
      private static var §0G§:b2Transform;
      
      private static var §9t§:b2Transform;
      
      private static var §[L§:b2SeparationFunction;
      
      private static var §!9§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2TimeOfImpact))
         {
            b2_toiCalls = 0;
            loop0:
            while(true)
            {
               b2_toiIters = 0;
               loop1:
               while(true)
               {
                  b2_toiMaxIters = 0;
                  loop2:
                  for(; !_loc2_; if(_loc1_ || _loc2_)
                  {
                     continue loop1;
                  })
                  {
                     b2_toiRootIters = 0;
                     loop3:
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        loop4:
                        while(true)
                        {
                           §7!D§ = new b2SimplexCache();
                           while(true)
                           {
                              §%p§ = new b2DistanceInput();
                              while(!_loc2_)
                              {
                                 §0G§ = new b2Transform();
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       §9t§ = new b2Transform();
                                       while(_loc1_)
                                       {
                                          §[L§ = new b2SeparationFunction();
                                          while(_loc1_ || _loc2_)
                                          {
                                             §!9§ = new b2DistanceOutput();
                                             if(!_loc1_)
                                             {
                                                continue;
                                             }
                                             if(_loc1_)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr80);
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                       addr80:
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §6!C§(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         if(!(_loc24_ && _loc3_))
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc23_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§,N§;
         var _loc3_:b2DistanceProxy = param1.§#y§;
         var _loc4_:b2Sweep = param1.§,!+§;
         var _loc5_:b2Sweep = param1.§5!v§;
         if(_loc23_)
         {
            b2Settings.b2Assert(_loc4_.§3J§ == _loc5_.§3J§);
            if(!(_loc24_ && _loc2_))
            {
               b2Settings.b2Assert(1 - _loc4_.§3J§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§ !c§);
         if(!_loc24_)
         {
            §§push(§§pop() + _loc3_.§ !c§);
            if(_loc23_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(param1.§^b§);
         if(!(_loc24_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc23_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = 1000;
         var _loc10_:int = 0;
         §§push(0);
         if(!_loc24_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         if(_loc23_)
         {
            §7!D§.count = 0;
         }
         do
         {
            §%p§.§#!+§ = false;
         }
         while(_loc24_ && b2TimeOfImpact);
         
         loop1:
         while(true)
         {
            _loc4_.§%J§(§0G§,_loc8_);
            loop2:
            while(true)
            {
               _loc5_.§%J§(§9t§,_loc8_);
               while(true)
               {
                  §§push(§%p§);
                  loop4:
                  while(true)
                  {
                     §§pop().§,N§ = _loc2_;
                     if(!(_loc23_ || param1))
                     {
                        addr1233:
                        if(_loc10_ == _loc9_)
                        {
                           if(_loc23_ || b2TimeOfImpact)
                           {
                              addr1245:
                              b2_toiMaxIters = b2Math.§&h§(b2_toiMaxIters,_loc10_);
                              addr1243:
                           }
                           addr1252:
                           return _loc8_;
                        }
                        continue loop1;
                     }
                     §§push(§%p§);
                     loop5:
                     while(true)
                     {
                        §§pop().§#y§ = _loc3_;
                        addr1046:
                        while(true)
                        {
                           §§push(§%p§);
                           loop7:
                           while(true)
                           {
                              §§pop().§ !f§ = §0G§;
                              addr1041:
                              while(true)
                              {
                                 §§push(§%p§);
                                 if(_loc23_)
                                 {
                                    if(!_loc24_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop7;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc24_ && param1))
                  {
                     _loc4_.§%J§(§0G§,_loc15_);
                     if(_loc24_ && _loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop2;
               }
               §§goto(addr1200);
            }
         }
      }
   }
}
