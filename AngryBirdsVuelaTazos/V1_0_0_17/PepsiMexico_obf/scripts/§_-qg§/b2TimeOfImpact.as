package §_-qg§
{
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Sweep;
   import §_-Ja§.b2Transform;
   import §_-lh§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-l3§:b2SimplexCache;
      
      private static var §_-PS§:b2DistanceInput;
      
      private static var §_-6A§:b2Transform;
      
      private static var §_-ge§:b2Transform;
      
      private static var §_-5p§:b2SeparationFunction;
      
      private static var §_-iX§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            b2_toiCalls = 0;
         }
         if(!_loc1_)
         {
            b2_toiMaxIters = 0;
            if(!_loc1_)
            {
               addr34:
               b2_toiRootIters = 0;
               b2_toiMaxRootIters = 0;
               §_-l3§ = new b2SimplexCache();
               if(_loc2_ || _loc1_)
               {
                  §_-PS§ = new b2DistanceInput();
                  §_-6A§ = new b2Transform();
                  if(!_loc1_)
                  {
                     §_-ge§ = new b2Transform();
                     addr79:
                     §_-5p§ = new b2SeparationFunction();
                     addr83:
                     §_-iX§ = new b2DistanceOutput();
                  }
                  return;
               }
               §§goto(addr83);
            }
            §§goto(addr79);
         }
         §§goto(addr34);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-d1§(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:int = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         if(!(_loc23_ && b2TimeOfImpact))
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc24_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§ do§;
         var _loc3_:b2DistanceProxy = param1.§_-q9§;
         var _loc4_:b2Sweep = param1.§_-nQ§;
         var _loc5_:b2Sweep = param1.§_-OY§;
         if(_loc24_)
         {
            b2Settings.b2Assert(_loc4_.§_-EG§ == _loc5_.§_-EG§);
            if(_loc24_)
            {
               addr81:
               b2Settings.b2Assert(1 - _loc4_.§_-EG§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§_-Q2§);
            if(!_loc23_)
            {
               §§push(§§pop() + _loc3_.§_-Q2§);
               if(_loc24_ || _loc2_)
               {
                  addr104:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(param1.§_-hR§);
               if(!(_loc23_ && b2TimeOfImpact))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(!(_loc23_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               var _loc9_:int = 1000;
               var _loc10_:int = 0;
               §§push(0);
               if(_loc24_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc11_:* = §§pop();
               if(!_loc23_)
               {
                  §_-l3§.count = 0;
                  if(!_loc23_)
                  {
                     addr143:
                     §_-PS§.§_-X4§ = false;
                  }
                  loop0:
                  while(true)
                  {
                     _loc4_.§_-ZO§(§_-6A§,_loc8_);
                     _loc5_.§_-ZO§(§_-ge§,_loc8_);
                     §§push(§_-PS§);
                     if(!(_loc23_ && _loc3_))
                     {
                        §§pop().§ do§ = _loc2_;
                        §§push(§_-PS§);
                        if(!_loc23_)
                        {
                           addr169:
                           §§pop().§_-q9§ = _loc3_;
                           if(_loc24_)
                           {
                              §§push(§_-PS§);
                              if(!_loc23_)
                              {
                                 §§pop().§_-Yf§ = §_-6A§;
                                 addr179:
                                 §_-PS§.§_-gD§ = §_-ge§;
                                 if(!_loc23_)
                                 {
                                    b2Distance.§_-PT§(§_-iX§,§_-l3§,§_-PS§);
                                    §§push(§_-iX§.§_-fF§);
                                    if(_loc24_ || param1)
                                    {
                                       if(§§pop() <= 0)
                                       {
                                          _loc8_ = Number(1);
                                       }
                                       else
                                       {
                                          §§push(§_-5p§);
                                          if(!_loc23_)
                                          {
                                             §§pop().§_-lc§(§_-l3§,_loc2_,§_-6A§,_loc3_,§_-ge§);
                                             §§push(§_-5p§);
                                             if(_loc24_)
                                             {
                                                addr215:
                                                §§push(§_-6A§);
                                                if(!(_loc23_ && param1))
                                                {
                                                   §§push(§_-ge§);
                                                   if(!_loc23_)
                                                   {
                                                      §§push(_loc12_ = §§pop().Evaluate(§§pop(),§§pop()));
                                                      if(_loc24_ || param1)
                                                      {
                                                         if(§§pop() <= 0)
                                                         {
                                                            if(_loc24_)
                                                            {
                                                               §§push(1);
                                                               if(_loc24_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc23_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     §§goto(addr755);
                                                                  }
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc20_);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           _loc17_ = Number(§§pop());
                                                                           addr638:
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              _loc18_++;
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push((_loc21_ = §§findproperty(b2_toiRootIters)).b2_toiRootIters);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                                 _loc22_ = §§pop();
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    _loc21_.b2_toiRootIters = _loc22_;
                                                                                 }
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       if(_loc24_ || _loc3_)
                                                                                       {
                                                                                          §§push(50);
                                                                                          if(!(_loc23_ && param1))
                                                                                          {
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   addr675:
                                                                                                   b2_toiMaxRootIters = b2Math.§_-YD§(b2_toiMaxRootIters,_loc18_);
                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(1 + 100 * Number.MIN_VALUE);
                                                                                                      if(_loc24_ || b2TimeOfImpact)
                                                                                                      {
                                                                                                         addr703:
                                                                                                         §§push(§§pop() * _loc8_);
                                                                                                      }
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc23_ && _loc2_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr755);
                                                                                                         }
                                                                                                         _loc8_ = §§pop();
                                                                                                         addr720:
                                                                                                         _loc10_++;
                                                                                                         §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            _loc21_.b2_toiIters = _loc22_;
                                                                                                         }
                                                                                                         §§push(_loc10_);
                                                                                                         break loop8;
                                                                                                      }
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         addr707:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr753:
                                                                                                      }
                                                                                                      §§goto(addr755);
                                                                                                   }
                                                                                                   §§goto(addr755);
                                                                                                   addr673:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc18_);
                                                                                                      §§push(1);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(§§pop() & §§pop())
                                                                                                      {
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§push(_loc14_);
                                                                                                         if(_loc24_ || _loc2_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc11_ - _loc16_);
                                                                                                               §§push(_loc15_);
                                                                                                               §§push(_loc14_);
                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr504:
                                                                                                                        §§push(_loc17_ - _loc16_);
                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc19_ = Number(§§pop() + §§pop());
                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr538:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_.§_-ZO§(§_-6A§,_loc19_);
                                                                                                                                    if(!(_loc24_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    _loc5_.§_-ZO§(§_-ge§,_loc19_);
                                                                                                                                    if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                    {
                                                                                                                                       §§push(§_-5p§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§_-6A§);
                                                                                                                                          addr562:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§_-ge§);
                                                                                                                                             addr563:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   _loc20_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Math);
                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - _loc11_);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().§_-xY§(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(0.025);
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   addr589:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() < §§pop() * §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            continue loop8;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = Number(§§pop());
                                                                                                                                                            §§goto(addr675);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr755);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr613:
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(_loc19_));
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr616:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr616:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr707);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr613:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            if(!(_loc24_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop7;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                               addr629:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc16_ = Number(§§pop());
                                                                                                                                                                  continue loop13;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr619:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr707);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr561:
                                                                                                                                    }
                                                                                                                                    §§goto(addr575);
                                                                                                                                 }
                                                                                                                                 addr538:
                                                                                                                              }
                                                                                                                              §§goto(addr628);
                                                                                                                           }
                                                                                                                           addr513:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr613);
                                                                                                                  }
                                                                                                                  §§goto(addr589);
                                                                                                               }
                                                                                                               §§goto(addr504);
                                                                                                            }
                                                                                                            §§goto(addr703);
                                                                                                            addr479:
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         §§push(_loc14_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop() * (§§pop() + _loc15_)));
                                                                                                            if(_loc24_ || _loc2_)
                                                                                                            {
                                                                                                               _loc19_ = §§pop();
                                                                                                               §§goto(addr538);
                                                                                                            }
                                                                                                         }
                                                                                                         addr526:
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   §§goto(addr673);
                                                                                                   addr674:
                                                                                                }
                                                                                                §§goto(addr755);
                                                                                             }
                                                                                          }
                                                                                          addr738:
                                                                                          if(§§pop() != §§pop())
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(_loc24_ || param1)
                                                                                          {
                                                                                             §§goto(addr753);
                                                                                          }
                                                                                          §§goto(addr755);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr737:
                                                                                    §§goto(addr738);
                                                                                    §§push(_loc9_);
                                                                                 }
                                                                                 §§goto(addr753);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr755);
                                                               }
                                                               §§goto(addr737);
                                                            }
                                                            §§goto(addr538);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc24_)
                                                            {
                                                               §§push(0);
                                                               if(_loc24_ || param1)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!(_loc23_ && param1))
                                                                     {
                                                                        §§push(_loc12_);
                                                                        §§push(_loc6_);
                                                                        if(!(_loc23_ && _loc3_))
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(_loc24_)
                                                                              {
                                                                                 §§push(b2Math);
                                                                                 §§push(_loc6_);
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       addr288:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       §§push(0.75);
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          addr296:
                                                                                          §§push(§§pop() * _loc6_);
                                                                                       }
                                                                                       §§push(§§pop().§_-YD§(§§pop(),§§pop()));
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          _loc11_ = Number(§§pop());
                                                                                          addr342:
                                                                                          §§push(_loc12_);
                                                                                          §§push(_loc11_);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(§§pop() - §§pop() < 0.5 * _loc7_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(_loc24_ || b2TimeOfImpact)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      addr362:
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         addr364:
                                                                                                         §§push(Number(1));
                                                                                                         if(_loc24_ || _loc3_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               §§goto(addr755);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr720);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr386:
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               _loc14_ = _loc8_;
                                                                                                               §§push(1);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  addr401:
                                                                                                                  _loc15_ = Number(§§pop());
                                                                                                                  addr402:
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        addr408:
                                                                                                                        _loc16_ = §§pop();
                                                                                                                        _loc4_.§_-ZO§(§_-6A§,_loc15_);
                                                                                                                        _loc5_.§_-ZO§(§_-ge§,_loc15_);
                                                                                                                        §§push(§_-5p§);
                                                                                                                        if(_loc24_ || param1)
                                                                                                                        {
                                                                                                                           addr425:
                                                                                                                           §§push(§_-6A§);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(§_-ge§);
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 addr431:
                                                                                                                                 §§push(Number(§§pop().Evaluate(§§pop(),§§pop())));
                                                                                                                                 §§push(Number(§§pop().Evaluate(§§pop(),§§pop())));
                                                                                                                                 if(_loc24_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          addr447:
                                                                                                                                          _loc8_ = Number(1);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr755);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr720);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc18_ = 0;
                                                                                                                                          if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                          {
                                                                                                                                             §§goto(addr674);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr755);
                                                                                                                                    }
                                                                                                                                    §§goto(addr703);
                                                                                                                                 }
                                                                                                                                 §§goto(addr513);
                                                                                                                              }
                                                                                                                              §§goto(addr563);
                                                                                                                           }
                                                                                                                           §§goto(addr562);
                                                                                                                        }
                                                                                                                        §§goto(addr561);
                                                                                                                     }
                                                                                                                     §§goto(addr619);
                                                                                                                  }
                                                                                                                  §§goto(addr479);
                                                                                                               }
                                                                                                               §§goto(addr447);
                                                                                                            }
                                                                                                            §§goto(addr616);
                                                                                                         }
                                                                                                         §§goto(addr753);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr755);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr738);
                                                                                                }
                                                                                                §§goto(addr737);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(Number(_loc8_));
                                                                                             }
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                          §§goto(addr613);
                                                                                       }
                                                                                       §§goto(addr629);
                                                                                    }
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr402);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(b2Math);
                                                                              §§push(_loc12_);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc24_ || _loc2_)
                                                                                 {
                                                                                    addr322:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    §§push(0.02);
                                                                                    if(!(_loc23_ && _loc2_))
                                                                                    {
                                                                                       addr330:
                                                                                       §§push(§§pop() * _loc6_);
                                                                                    }
                                                                                    §§push(Number(§§pop().§_-YD§(§§pop(),§§pop())));
                                                                                    if(!(_loc23_ && _loc2_))
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr408);
                                                                                 }
                                                                                 §§goto(addr330);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                     §§goto(addr638);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr362);
                                                            }
                                                            §§goto(addr364);
                                                         }
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr431);
                                                }
                                                §§goto(addr562);
                                             }
                                             §§goto(addr425);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr755);
                                    }
                                    §§goto(addr401);
                                 }
                                 §§goto(addr720);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr593);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr169);
                  }
               }
               §§goto(addr143);
            }
            §§goto(addr104);
         }
         §§goto(addr81);
      }
   }
}
