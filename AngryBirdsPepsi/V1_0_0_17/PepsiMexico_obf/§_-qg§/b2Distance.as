package §_-qg§
{
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-BI§:b2Simplex;
      
      private static var §_-4X§:Vector.<int>;
      
      private static var §_-Pf§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2Distance)
         {
            §_-BI§ = new b2Simplex();
            if(!(_loc2_ && _loc1_))
            {
               §_-4X§ = new Vector.<int>(3);
               if(_loc1_)
               {
                  addr54:
                  §_-Pf§ = new Vector.<int>(3);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §_-PT§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         if(!_loc28_)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(_loc29_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!(_loc28_ && b2Distance))
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§ do§;
         var _loc5_:b2DistanceProxy = param3.§_-q9§;
         var _loc6_:b2Transform = param3.§_-Yf§;
         var _loc7_:b2Transform = param3.§_-gD§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-BI§).§_-B3§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-Ui§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §_-4X§;
         var _loc12_:Vector.<int> = §_-Pf§;
         var _loc13_:int = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§_-5s§()).§_-Un§());
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!(_loc28_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         var _loc19_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc19_);
            loop1:
            while(true)
            {
               §§push(_loc10_);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     break loop1;
                  }
                  _loc13_ = _loc8_.§_-01§;
                  if(_loc29_ || b2Distance)
                  {
                     _loc17_ = 0;
                     if(_loc29_)
                     {
                        while(true)
                        {
                           §§push(_loc17_);
                           §§push(_loc13_);
                           if(_loc29_ || param2)
                           {
                              if(§§pop() < §§pop())
                              {
                                 continue;
                              }
                              _loc26_ = _loc8_.§_-01§;
                              if(_loc29_ || b2Distance)
                              {
                                 §§push(1);
                                 if(!(_loc28_ && param2))
                                 {
                                    §§push(_loc26_);
                                    if(_loc29_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc29_)
                                          {
                                             §§push(0);
                                             if(_loc28_)
                                             {
                                                addr228:
                                                §§push(_loc26_);
                                                if(_loc29_)
                                                {
                                                   addr231:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         addr239:
                                                         §§push(1);
                                                         if(!(_loc28_ && param2))
                                                         {
                                                            addr257:
                                                            if(!_loc29_)
                                                            {
                                                               break loop2;
                                                            }
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  break;
                                                               case 1:
                                                                  _loc8_.Solve2();
                                                                  break;
                                                               case 2:
                                                                  _loc8_.Solve3();
                                                                  break;
                                                               default:
                                                                  b2Settings.b2Assert(false);
                                                                  if(_loc29_ || param3)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr616:
                                                                  §§push(param1.§_-fF§);
                                                                  if(_loc29_)
                                                                  {
                                                                     addr620:
                                                                     §§push(_loc23_);
                                                                     if(_loc29_ || b2Distance)
                                                                     {
                                                                        §§push(§§pop() + _loc24_);
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!(_loc28_ && param1))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc29_)
                                                                           {
                                                                              addr642:
                                                                              §§pop();
                                                                              if(_loc29_)
                                                                              {
                                                                                 addr650:
                                                                                 if(param1.§_-fF§ > Number.MIN_VALUE)
                                                                                 {
                                                                                    if(_loc29_ || param1)
                                                                                    {
                                                                                       addr658:
                                                                                       §§push(param1);
                                                                                       §§push(param1.§_-fF§);
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!(_loc28_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() + _loc24_);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                       §§pop().§_-fF§ = §§pop();
                                                                                    }
                                                                                    (_loc25_ = b2Math.§_-TD§(param1.§_-R1§,param1.§_-Eg§)).Normalize();
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(param1.§_-Eg§);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§push(param1.§_-Eg§);
                                                                                          if(!(_loc28_ && param1))
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   §§push(_loc25_.x);
                                                                                                   if(_loc29_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc29_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc29_ || param3)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            if(_loc29_ || b2Distance)
                                                                                                            {
                                                                                                               addr743:
                                                                                                               §§push(param1.§_-Eg§);
                                                                                                               §§push(param1.§_-Eg§.y);
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  addr746:
                                                                                                                  §§push(_loc23_);
                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                  {
                                                                                                                     addr758:
                                                                                                                     §§pop().y = §§pop() + §§pop() * _loc25_.y;
                                                                                                                     addr757:
                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                     {
                                                                                                                        §§push(param1.§_-R1§);
                                                                                                                        if(!(_loc28_ && param2))
                                                                                                                        {
                                                                                                                           §§push(param1.§_-R1§);
                                                                                                                           if(!(_loc28_ && param2))
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!(_loc28_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(_loc24_);
                                                                                                                                 if(_loc29_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc25_.x);
                                                                                                                                    if(_loc29_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc29_ || param2)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                addr827:
                                                                                                                                                §§push(param1.§_-R1§);
                                                                                                                                                §§push(param1.§_-R1§.y);
                                                                                                                                                if(!(_loc28_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr847:
                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                   if(_loc29_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr843:
                                                                                                                                                      §§push(§§pop() * _loc25_.y);
                                                                                                                                                   }
                                                                                                                                                   §§pop().y = §§pop() - §§pop();
                                                                                                                                                   return;
                                                                                                                                                   addr848:
                                                                                                                                                }
                                                                                                                                                §§goto(addr847);
                                                                                                                                             }
                                                                                                                                             §§goto(addr848);
                                                                                                                                          }
                                                                                                                                          §§goto(addr847);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr843);
                                                                                                                              }
                                                                                                                              §§goto(addr847);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr827);
                                                                                                                  }
                                                                                                                  §§goto(addr757);
                                                                                                               }
                                                                                                               §§goto(addr758);
                                                                                                            }
                                                                                                            §§goto(addr847);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr758);
                                                                                             }
                                                                                             §§goto(addr746);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr743);
                                                                                    }
                                                                                    §§goto(addr827);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc18_ = new b2Vec2());
                                                                                    §§push(0.5);
                                                                                    if(_loc29_ || param1)
                                                                                    {
                                                                                       §§push(param1.§_-Eg§.x);
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          §§push(§§pop() + param1.§_-R1§.x);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    §§pop().x = §§pop();
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       §§push(0.5);
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          §§push(param1.§_-Eg§.y);
                                                                                          if(!(_loc28_ && b2Distance))
                                                                                          {
                                                                                             §§push(§§pop() + param1.§_-R1§.y);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          §§push(param1.§_-Eg§);
                                                                                          if(_loc29_ || param2)
                                                                                          {
                                                                                             §§push(param1.§_-R1§);
                                                                                             if(_loc29_ || param1)
                                                                                             {
                                                                                                §§push(_loc18_.x);
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc28_ && b2Distance))
                                                                                                   {
                                                                                                      _loc26_ = §§pop();
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         if(!(_loc28_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc26_);
                                                                                                            if(_loc29_ || b2Distance)
                                                                                                            {
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(_loc29_ || param1)
                                                                                                                  {
                                                                                                                     addr982:
                                                                                                                     param1.§_-R1§.y = _loc26_ = _loc18_.y;
                                                                                                                     addr984:
                                                                                                                     §§push(param1.§_-Eg§);
                                                                                                                     §§push(_loc26_);
                                                                                                                  }
                                                                                                                  §§goto(addr847);
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  addr988:
                                                                                                                  param1.§_-fF§ = 0;
                                                                                                               }
                                                                                                               §§goto(addr847);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr984);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr982);
                                                                                    }
                                                                                    §§goto(addr988);
                                                                                 }
                                                                              }
                                                                              §§goto(addr658);
                                                                           }
                                                                        }
                                                                        §§goto(addr650);
                                                                     }
                                                                     §§goto(addr642);
                                                                  }
                                                                  §§goto(addr650);
                                                            }
                                                            §§push(_loc8_.§_-01§);
                                                            if(_loc28_)
                                                            {
                                                               break loop2;
                                                            }
                                                            §§push(3);
                                                            if(_loc29_ || param3)
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                            addr247:
                                                         }
                                                         else
                                                         {
                                                            addr249:
                                                            if(§§pop() !== _loc26_)
                                                            {
                                                               §§goto(addr257);
                                                               §§push(3);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                      }
                                                      §§goto(addr257);
                                                      §§push(2);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr249);
                                                      §§push(3);
                                                   }
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr257);
                                          }
                                          §§goto(addr239);
                                       }
                                       else
                                       {
                                          §§push(2);
                                          if(!(_loc28_ && param1))
                                          {
                                             §§goto(addr228);
                                          }
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr239);
                           }
                           break;
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push((_loc18_ = _loc8_.§_-5s§()).§_-Un§());
                           if(!(_loc28_ && param3))
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc28_ && param1))
                              {
                                 addr303:
                                 §§push(§§pop());
                                 if(!_loc28_)
                                 {
                                    _loc16_ = §§pop();
                                    addr316:
                                    addr317:
                                    if(_loc29_)
                                    {
                                       §§push(_loc15_);
                                    }
                                    _loc15_ = Number(§§pop());
                                    if((_loc20_ = _loc8_.§_-f2§()).§_-Un§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                    {
                                       addr535:
                                       b2_gjkMaxIters = b2Math.§_-YD§(b2_gjkMaxIters,_loc19_);
                                       if(_loc29_)
                                       {
                                          §§goto(addr543);
                                       }
                                       §§goto(addr603);
                                    }
                                    else
                                    {
                                       (_loc21_ = _loc9_[_loc8_.§_-01§]).indexA = _loc4_.§_-xy§(b2Math.§_-P4§(_loc6_.R,_loc20_.§_-D§()));
                                       if(_loc29_ || param3)
                                       {
                                          _loc21_.§_-s3§ = b2Math.§_-Y9§(_loc6_,_loc4_.§_-Su§(_loc21_.indexA));
                                          _loc21_.indexB = _loc5_.§_-xy§(b2Math.§_-P4§(_loc7_.R,_loc20_));
                                          if(!_loc29_)
                                          {
                                             continue loop0;
                                          }
                                          _loc21_.§_-yk§ = b2Math.§_-Y9§(_loc7_,_loc5_.§_-Su§(_loc21_.indexB));
                                          _loc21_.§_-ah§ = b2Math.§_-TD§(_loc21_.§_-yk§,_loc21_.§_-s3§);
                                          _loc19_++;
                                          §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                          if(!(_loc28_ && param2))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc27_ = §§pop();
                                          if(!(_loc28_ && b2Distance))
                                          {
                                             _loc26_.b2_gjkIters = _loc27_;
                                          }
                                          if(!_loc28_)
                                          {
                                             §§push(false);
                                             if(!(_loc28_ && param2))
                                             {
                                                _loc22_ = §§pop();
                                                §§push(0);
                                                if(!(_loc28_ && param1))
                                                {
                                                   _loc17_ = §§pop();
                                                   if(!(_loc29_ || param1))
                                                   {
                                                      continue loop0;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc17_);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop() < _loc13_)
                                                         {
                                                            §§push(_loc21_.indexA);
                                                            if(_loc29_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == _loc11_[_loc17_]);
                                                                  if(_loc29_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc29_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc28_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(_loc21_.indexB);
                                                                              if(_loc28_ && b2Distance)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == _loc12_[_loc17_]);
                                                                                 if(_loc29_ || b2Distance)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             _loc22_ = §§pop();
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr497:
                                                                                                break;
                                                                                             }
                                                                                             addr504:
                                                                                             §§goto(addr535);
                                                                                          }
                                                                                          break loop7;
                                                                                       }
                                                                                       _loc17_++;
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr502:
                                                                                    §§push(_loc22_);
                                                                                    break;
                                                                                    addr483:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push((_loc26_ = _loc8_).§_-01§);
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              _loc27_ = §§pop();
                                                                              if(!(_loc28_ && b2Distance))
                                                                              {
                                                                                 _loc26_.§_-01§ = _loc27_;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr504);
                                                                        }
                                                                     }
                                                                     addr456:
                                                                  }
                                                                  §§goto(addr483);
                                                               }
                                                               addr450:
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                   }
                                                   addr499:
                                                }
                                                §§goto(addr450);
                                             }
                                             §§goto(addr456);
                                          }
                                          §§goto(addr497);
                                       }
                                       §§goto(addr499);
                                    }
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc28_)
                                    {
                                       addr313:
                                       §§push(_loc16_);
                                       if(!_loc28_)
                                       {
                                          §§goto(addr316);
                                       }
                                       §§goto(addr317);
                                    }
                                    §§goto(addr316);
                                 }
                                 §§goto(addr313);
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr303);
                        }
                        §§goto(addr535);
                     }
                     §§goto(addr650);
                  }
                  §§goto(addr578);
               }
            }
            if(_loc29_ || param2)
            {
               §§goto(addr535);
            }
            §§goto(addr658);
         }
      }
   }
}
