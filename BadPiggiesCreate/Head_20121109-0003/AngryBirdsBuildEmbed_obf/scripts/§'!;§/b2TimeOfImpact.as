package §'!;§
{
   import §<!B§.b2Math;
   import §<!B§.b2Sweep;
   import §<!B§.b2Transform;
   import §?s§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §9!,§:b2SimplexCache;
      
      private static var §&?§:b2DistanceInput;
      
      private static var §]`§:b2Transform;
      
      private static var §-z§:b2Transform;
      
      private static var §<!I§:b2SeparationFunction;
      
      private static var §%0§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            b2_toiIters = 0;
            b2_toiMaxIters = 0;
            if(_loc1_)
            {
               b2_toiRootIters = 0;
               if(_loc1_ || _loc2_)
               {
                  b2_toiMaxRootIters = 0;
               }
               §9!,§ = new b2SimplexCache();
               §&?§ = new b2DistanceInput();
               if(!_loc2_)
               {
                  addr72:
                  §]`§ = new b2Transform();
                  §-z§ = new b2Transform();
                  §<!I§ = new b2SeparationFunction();
               }
               §%0§ = new b2DistanceOutput();
               return;
            }
         }
         §§goto(addr72);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §+O§(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         if(_loc24_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§4M§;
         var _loc3_:b2DistanceProxy = param1.§1!]§;
         var _loc4_:b2Sweep = param1.§"!&§;
         var _loc5_:b2Sweep = param1.§+^§;
         if(_loc24_ || b2TimeOfImpact)
         {
            b2Settings.b2Assert(_loc4_.§[!$§ == _loc5_.§[!$§);
            if(!_loc23_)
            {
               b2Settings.b2Assert(1 - _loc4_.§[!$§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§%+§);
         if(_loc24_)
         {
            §§push(§§pop() + _loc3_.§%+§);
            if(_loc24_)
            {
               addr102:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.§>![§);
            if(_loc24_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(_loc24_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:int = 1000;
            var _loc10_:int = 0;
            §§push(0);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!_loc23_)
            {
               §9!,§.count = 0;
               if(!_loc23_)
               {
                  §&?§.§?^§ = false;
               }
            }
            while(true)
            {
               _loc4_.§>!H§(§]`§,_loc8_);
               _loc5_.§>!H§(§-z§,_loc8_);
               §§push(§&?§);
               if(!_loc23_)
               {
                  §§pop().§4M§ = _loc2_;
                  §§push(§&?§);
                  if(_loc24_ || param1)
                  {
                     addr167:
                     §§pop().§1!]§ = _loc3_;
                     §§push(§&?§);
                     if(_loc24_ || param1)
                     {
                        addr177:
                        §§pop().§#! § = §]`§;
                        if(!(_loc23_ && b2TimeOfImpact))
                        {
                           addr187:
                           §&?§.§&X§ = §-z§;
                           if(_loc24_)
                           {
                              b2Distance.§@9§(§%0§,§9!,§,§&?§);
                              §§push(§%0§.§[!u§);
                              if(!_loc23_)
                              {
                                 if(§§pop() <= 0)
                                 {
                                    §§push(1);
                                    if(!(_loc23_ && param1))
                                    {
                                       _loc8_ = Number(§§pop());
                                    }
                                    else
                                    {
                                       addr268:
                                       §§push(Number(§§pop()));
                                       if(_loc24_)
                                       {
                                          _loc8_ = §§pop();
                                          if(!(_loc24_ || _loc2_))
                                          {
                                             addr512:
                                          }
                                       }
                                       else
                                       {
                                          addr737:
                                          §§push(1 + 100 * Number.MIN_VALUE);
                                          if(_loc24_ || _loc2_)
                                          {
                                             addr752:
                                             if(§§pop() < §§pop() * _loc8_)
                                             {
                                                if(!(_loc23_ && _loc3_))
                                                {
                                                   §§goto(addr816);
                                                }
                                                §§goto(addr811);
                                             }
                                             else
                                             {
                                                §§push(_loc13_);
                                                if(!_loc23_)
                                                {
                                                   addr764:
                                                   §§push(Number(§§pop()));
                                                   if(_loc24_ || param1)
                                                   {
                                                      addr772:
                                                      _loc8_ = §§pop();
                                                      addr773:
                                                      _loc10_++;
                                                      §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                                      if(!_loc23_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      _loc22_ = §§pop();
                                                      if(_loc24_ || _loc2_)
                                                      {
                                                         _loc21_.b2_toiIters = _loc22_;
                                                      }
                                                      if(!(_loc23_ && param1))
                                                      {
                                                         addr811:
                                                         if(_loc10_ != _loc9_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr816);
                                                }
                                                §§goto(addr772);
                                             }
                                          }
                                          §§goto(addr752);
                                       }
                                    }
                                    §§goto(addr816);
                                 }
                                 else
                                 {
                                    §§push(§<!I§);
                                    if(_loc24_)
                                    {
                                       §§pop().§6!V§(§9!,§,_loc2_,§]`§,_loc3_,§-z§);
                                       §§push(§<!I§);
                                       if(_loc24_)
                                       {
                                          addr225:
                                          §§push(§]`§);
                                          if(!(_loc23_ && b2TimeOfImpact))
                                          {
                                             §§push(§-z§);
                                             if(_loc24_)
                                             {
                                                §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                if(_loc24_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc23_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc23_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         §§push(0);
                                                         if(!(_loc23_ && param1))
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               if(!(_loc23_ && b2TimeOfImpact))
                                                               {
                                                                  §§goto(addr268);
                                                                  §§push(1);
                                                               }
                                                               else
                                                               {
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     _loc5_.§>!H§(§-z§,_loc19_);
                                                                     §§push(§<!I§);
                                                                     addr609:
                                                                     while(true)
                                                                     {
                                                                        §§push(§]`§);
                                                                        addr610:
                                                                        while(true)
                                                                        {
                                                                           §§push(§-z§);
                                                                           addr611:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc20_ = §§pop();
                                                                                 addr614:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(b2Math);
                                                                                    §§push(_loc20_);
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc11_);
                                                                                    }
                                                                                    §§push(§§pop().§?!3§(§§pop()));
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0.025);
                                                                                       if(!(_loc23_ && _loc2_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * _loc7_);
                                                                                          }
                                                                                          addr629:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             addr632:
                                                                                             §§push(_loc19_);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                addr723:
                                                                                                b2_toiMaxRootIters = b2Math.§,!a§(b2_toiMaxRootIters,_loc18_);
                                                                                                §§push(_loc13_);
                                                                                                if(_loc24_ || param1)
                                                                                                {
                                                                                                   §§goto(addr737);
                                                                                                }
                                                                                                addr637:
                                                                                             }
                                                                                             §§goto(addr816);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc23_ && _loc2_))
                                                                                                         {
                                                                                                            _loc14_ = §§pop();
                                                                                                            if(_loc24_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(_loc20_);
                                                                                                               if(_loc24_ || param1)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop6:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc16_ = §§pop();
                                                                                                                     addr670:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop3:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc18_++;
                                                                                                                           §§push((_loc21_ = §§findproperty(b2_toiRootIters)).b2_toiRootIters);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                           }
                                                                                                                           _loc22_ = §§pop();
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              _loc21_.b2_toiRootIters = _loc22_;
                                                                                                                           }
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              §§push(50);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr723);
                                                                                                                                       }
                                                                                                                                       §§goto(addr772);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() & §§pop());
                                                                                                                                                }
                                                                                                                                                addr535:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr536:
                                                                                                                                          loop9:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - _loc16_);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr578:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                  if(!(_loc24_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     break loop9;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc23_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop11;
                                                                                                                                                                  }
                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_.§>!H§(§]`§,_loc19_);
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr578:
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr578);
                                                                                                                                                         §§push(§§pop() / (§§pop() - §§pop()));
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            addr595:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop5;
                                                                                                                                                               }
                                                                                                                                                               _loc19_ = Number(§§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr594:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr600);
                                                                                                                                                   }
                                                                                                                                                   addr550:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr675:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                            if(!(_loc24_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr723);
                                                                                                                                                         addr683:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr764);
                                                                                                                                                   addr675:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(0.5);
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                §§push(_loc15_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr594);
                                                                                                                                          }
                                                                                                                                          §§goto(addr752);
                                                                                                                                       }
                                                                                                                                       §§goto(addr811);
                                                                                                                                       addr722:
                                                                                                                                    }
                                                                                                                                    §§goto(addr764);
                                                                                                                                 }
                                                                                                                                 addr713:
                                                                                                                              }
                                                                                                                              §§goto(addr811);
                                                                                                                           }
                                                                                                                           §§goto(addr772);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr673:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                  }
                                                                                                                  addr673:
                                                                                                               }
                                                                                                               §§goto(addr675);
                                                                                                            }
                                                                                                            §§goto(addr670);
                                                                                                         }
                                                                                                         §§goto(addr816);
                                                                                                      }
                                                                                                      addr644:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr672:
                                                                                                   }
                                                                                                   §§goto(addr673);
                                                                                                }
                                                                                                §§goto(addr752);
                                                                                             }
                                                                                             addr639:
                                                                                          }
                                                                                          §§goto(addr752);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr752);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               §§push(0);
                                                               if(_loc24_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc12_ > _loc6_)
                                                                     {
                                                                        §§push(b2Math);
                                                                        §§push(_loc6_);
                                                                        if(!(_loc23_ && _loc2_))
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc24_ || _loc2_)
                                                                           {
                                                                              addr306:
                                                                              §§push(§§pop() - §§pop());
                                                                              §§push(0.75);
                                                                              if(!(_loc23_ && b2TimeOfImpact))
                                                                              {
                                                                                 §§push(§§pop() * _loc6_);
                                                                              }
                                                                           }
                                                                           §§push(§§pop().§,!a§(§§pop(),§§pop()));
                                                                           if(_loc24_)
                                                                           {
                                                                              _loc11_ = Number(§§pop());
                                                                              addr362:
                                                                              §§push(_loc12_);
                                                                              §§push(_loc11_);
                                                                              if(!(_loc23_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(_loc24_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() * _loc7_);
                                                                                       if(!(_loc23_ && _loc2_))
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc23_ && b2TimeOfImpact))
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         if(_loc24_ || b2TimeOfImpact)
                                                                                                         {
                                                                                                            addr423:
                                                                                                            _loc8_ = Number(1);
                                                                                                            §§goto(addr816);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr436:
                                                                                                            §§push(Number(1));
                                                                                                            if(!(_loc23_ && param1))
                                                                                                            {
                                                                                                               _loc15_ = §§pop();
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc24_ || _loc3_)
                                                                                                               {
                                                                                                                  addr455:
                                                                                                                  _loc16_ = Number(§§pop());
                                                                                                                  _loc4_.§>!H§(§]`§,_loc15_);
                                                                                                                  addr454:
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     _loc5_.§>!H§(§-z§,_loc15_);
                                                                                                                     §§push(§<!I§);
                                                                                                                     if(_loc24_ || b2TimeOfImpact)
                                                                                                                     {
                                                                                                                        addr474:
                                                                                                                        §§push(§]`§);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           addr477:
                                                                                                                           §§push(§-z§);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              addr480:
                                                                                                                              §§push(Number(§§pop().Evaluate(§§pop(),§§pop())));
                                                                                                                              §§push(Number(§§pop().Evaluate(§§pop(),§§pop())));
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 _loc17_ = §§pop();
                                                                                                                                 if(§§pop() >= _loc11_)
                                                                                                                                 {
                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(1));
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr512);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr637);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr683);
                                                                                                                                       }
                                                                                                                                       §§goto(addr723);
                                                                                                                                    }
                                                                                                                                    §§goto(addr614);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       §§goto(addr722);
                                                                                                                                    }
                                                                                                                                    §§goto(addr536);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr752);
                                                                                                                           }
                                                                                                                           §§goto(addr611);
                                                                                                                        }
                                                                                                                        §§goto(addr610);
                                                                                                                     }
                                                                                                                     §§goto(addr609);
                                                                                                                  }
                                                                                                                  §§goto(addr811);
                                                                                                               }
                                                                                                               §§goto(addr675);
                                                                                                            }
                                                                                                            §§goto(addr672);
                                                                                                         }
                                                                                                      }
                                                                                                      addr816:
                                                                                                      b2_toiMaxIters = b2Math.§,!a§(b2_toiMaxIters,_loc10_);
                                                                                                      return _loc8_;
                                                                                                   }
                                                                                                   §§goto(addr535);
                                                                                                }
                                                                                                §§goto(addr536);
                                                                                             }
                                                                                             §§goto(addr436);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc13_ = _loc8_;
                                                                                             §§push(Number(_loc8_));
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                §§goto(addr436);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr454);
                                                                                       }
                                                                                       §§goto(addr595);
                                                                                    }
                                                                                    §§goto(addr550);
                                                                                 }
                                                                                 §§goto(addr639);
                                                                              }
                                                                              §§goto(addr629);
                                                                           }
                                                                           §§goto(addr764);
                                                                        }
                                                                        §§goto(addr306);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(b2Math);
                                                                        §§push(_loc12_);
                                                                        if(_loc24_ || _loc3_)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc24_)
                                                                           {
                                                                              addr335:
                                                                              §§push(§§pop() - §§pop());
                                                                              §§push(0.02);
                                                                              if(!(_loc23_ && b2TimeOfImpact))
                                                                              {
                                                                                 addr343:
                                                                                 §§push(§§pop() * _loc6_);
                                                                              }
                                                                              §§push(Number(§§pop().§,!a§(§§pop(),§§pop())));
                                                                              if(!(_loc23_ && _loc3_))
                                                                              {
                                                                                 addr354:
                                                                                 _loc11_ = §§pop();
                                                                                 if(_loc24_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 §§goto(addr423);
                                                                              }
                                                                              §§goto(addr673);
                                                                           }
                                                                           §§goto(addr343);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                  }
                                                                  §§goto(addr362);
                                                               }
                                                            }
                                                            §§goto(addr713);
                                                         }
                                                         §§goto(addr578);
                                                      }
                                                      §§goto(addr595);
                                                   }
                                                   §§goto(addr644);
                                                }
                                                §§goto(addr455);
                                             }
                                             §§goto(addr480);
                                          }
                                          §§goto(addr477);
                                       }
                                       §§goto(addr474);
                                    }
                                    §§goto(addr225);
                                 }
                              }
                              §§goto(addr354);
                           }
                           §§goto(addr632);
                        }
                        §§goto(addr773);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr177);
               }
               §§goto(addr167);
            }
         }
         §§goto(addr102);
      }
   }
}
