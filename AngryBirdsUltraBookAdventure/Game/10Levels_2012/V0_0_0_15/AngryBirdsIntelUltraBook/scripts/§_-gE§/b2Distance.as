package §_-gE§
{
   import §_-03n§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-Ex§:b2Simplex;
      
      private static var §_-E8§:Vector.<int>;
      
      private static var §_-cS§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2Distance))
         {
            §_-Ex§ = new b2Simplex();
            while(true)
            {
               §_-E8§ = new Vector.<int>(3);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            §_-cS§ = new Vector.<int>(3);
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §_-Gt§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         if(!(_loc28_ && b2Distance))
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!_loc28_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!_loc28_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§_-05Z§;
         var _loc5_:b2DistanceProxy = param3.§_-l4§;
         var _loc6_:b2Transform = param3.§_-Jr§;
         var _loc7_:b2Transform = param3.§_-St§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-Ex§).§_-4m§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-09U§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §_-E8§;
         var _loc12_:Vector.<int> = §_-cS§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§_-oo§()).§_-wN§());
         if(_loc29_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!_loc28_)
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
                     if(!_loc28_)
                     {
                        break;
                     }
                     param1.§_-08F§ = _loc19_;
                     _loc8_.§_-OX§(param2);
                     addr839:
                     addr828:
                  }
                  else
                  {
                     §§push(_loc8_.§_-ru§);
                     if(!(_loc28_ && param3))
                     {
                        §§push(int(§§pop()));
                        if(_loc28_)
                        {
                           continue loop1;
                        }
                        _loc13_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           if(_loc29_ || param1)
                           {
                              _loc17_ = §§pop();
                              if(_loc29_ || param2)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(!(_loc28_ && b2Distance))
                                    {
                                       §§push(_loc13_);
                                       if(!_loc29_)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc8_.§_-ru§);
                                             if(_loc28_)
                                             {
                                                continue loop1;
                                             }
                                             _loc26_ = §§pop();
                                             if(_loc29_ || b2Distance)
                                             {
                                                §§push(1);
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc26_);
                                                   if(!(_loc28_ && param2))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc29_)
                                                         {
                                                            §§push(0);
                                                            if(_loc29_ || param2)
                                                            {
                                                               addr326:
                                                               if(!(_loc28_ && param3))
                                                               {
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        break;
                                                                     case 1:
                                                                        _loc8_.Solve2();
                                                                        addr136:
                                                                        break;
                                                                        addr175:
                                                                     case 2:
                                                                        _loc8_.Solve3();
                                                                        if(_loc29_ || param2)
                                                                        {
                                                                           if(!(_loc28_ && b2Distance))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr175);
                                                                        }
                                                                        addr794:
                                                                        _loc24_ = _loc5_.§_-0CZ§;
                                                                        addr795:
                                                                        addr818:
                                                                        addr793:
                                                                        if(_loc29_ || b2Distance)
                                                                        {
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              addr756:
                                                                              §§push(param1.§_-1P§);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 if(!(_loc28_ && b2Distance))
                                                                                 {
                                                                                    if(_loc29_ || param3)
                                                                                    {
                                                                                       addr786:
                                                                                       §§push(_loc23_);
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() + _loc24_);
                                                                                       }
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          addr788:
                                                                                          §§pop();
                                                                                          addr789:
                                                                                          §§push(param1.§_-1P§);
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(§§pop() > Number.MIN_VALUE);
                                                                                                if(_loc29_ || param1)
                                                                                                {
                                                                                                   if(_loc29_ || param3)
                                                                                                   {
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         addr706:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc29_ || param1)
                                                                                                            {
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                  {
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        addr726:
                                                                                                                        §§push(param1);
                                                                                                                        §§push(param1.§_-1P§);
                                                                                                                        if(!(_loc28_ && param2))
                                                                                                                        {
                                                                                                                           §§push(_loc23_);
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc24_);
                                                                                                                           }
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                        }
                                                                                                                        §§pop().§_-1P§ = §§pop();
                                                                                                                        addr743:
                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                        {
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 addr754:
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr756);
                                                                                                                                 }
                                                                                                                                 (_loc25_ = b2Math.§_-DO§(param1.§_-pV§,param1.§_-dQ§)).Normalize();
                                                                                                                                 if(!(_loc28_ && b2Distance))
                                                                                                                                 {
                                                                                                                                    addr1022:
                                                                                                                                    param1.§_-dQ§.x += _loc23_ * _loc25_.x;
                                                                                                                                    addr1023:
                                                                                                                                    addr1018:
                                                                                                                                    addr1020:
                                                                                                                                    addr1021:
                                                                                                                                    addr1017:
                                                                                                                                    addr1016:
                                                                                                                                    §§push(param1.§_-dQ§);
                                                                                                                                    if(!(_loc28_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(param1.§_-dQ§);
                                                                                                                                       if(!(_loc28_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!(_loc28_ && b2Distance))
                                                                                                                                          {
                                                                                                                                             if(!(_loc28_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(_loc23_);
                                                                                                                                                if(!(_loc28_ && b2Distance))
                                                                                                                                                {
                                                                                                                                                   if(_loc29_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc25_.y);
                                                                                                                                                      if(_loc29_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr998:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc29_ || param2)
                                                                                                                                                         {
                                                                                                                                                            addr1006:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               addr1009:
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  addr924:
                                                                                                                                                                  addr942:
                                                                                                                                                                  addr929:
                                                                                                                                                                  addr927:
                                                                                                                                                                  §§push(param1.§_-pV§);
                                                                                                                                                                  §§push(param1.§_-pV§.x);
                                                                                                                                                                  if(_loc29_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     addr940:
                                                                                                                                                                     §§push(§§pop() - _loc24_ * _loc25_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  addr943:
                                                                                                                                                                  §§push(param1.§_-pV§);
                                                                                                                                                                  if(_loc29_ || b2Distance)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§_-pV§);
                                                                                                                                                                     if(_loc29_ || b2Distance)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc28_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc24_);
                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc28_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc25_.y);
                                                                                                                                                                                       if(_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr912:
                                                                                                                                                                                          §§pop().y = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                          addr911:
                                                                                                                                                                                          if(!(_loc28_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr924);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1160);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1009);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr943);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr940);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr911);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr942);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr912);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr929);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr927);
                                                                                                                                                                  addr1011:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1023);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1022);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1018);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1020);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1021);
                                                                                                                                                }
                                                                                                                                                §§goto(addr998);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1017);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1006);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1016);
                                                                                                                                    }
                                                                                                                                    addr1014:
                                                                                                                                    §§goto(addr1014);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1011);
                                                                                                                              }
                                                                                                                              param1.§_-1P§ = b2Math.§_-DO§(param1.§_-dQ§,param1.§_-pV§).§_-YT§();
                                                                                                                              §§goto(addr839);
                                                                                                                              addr846:
                                                                                                                           }
                                                                                                                           §§goto(addr795);
                                                                                                                        }
                                                                                                                        §§goto(addr789);
                                                                                                                     }
                                                                                                                     break loop3;
                                                                                                                  }
                                                                                                                  addr813:
                                                                                                                  if(param3.§_-029§)
                                                                                                                  {
                                                                                                                     addr817:
                                                                                                                     _loc23_ = _loc4_.§_-0CZ§;
                                                                                                                     addr814:
                                                                                                                     §§goto(addr818);
                                                                                                                  }
                                                                                                                  addr1160:
                                                                                                                  return;
                                                                                                                  addr823:
                                                                                                               }
                                                                                                               §§goto(addr814);
                                                                                                            }
                                                                                                            §§goto(addr743);
                                                                                                         }
                                                                                                         §§push(_loc18_ = new b2Vec2());
                                                                                                         §§push(0.5);
                                                                                                         if(_loc29_ || param3)
                                                                                                         {
                                                                                                            §§push(param1.§_-dQ§.x);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(§§pop() + param1.§_-pV§.x);
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§pop().x = §§pop();
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(_loc18_);
                                                                                                            §§push(0.5);
                                                                                                            if(!(_loc28_ && b2Distance))
                                                                                                            {
                                                                                                               §§push(param1.§_-dQ§.y);
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + param1.§_-pV§.y);
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            §§pop().y = §§pop();
                                                                                                            if(!(_loc28_ && b2Distance))
                                                                                                            {
                                                                                                               §§push(param1.§_-dQ§);
                                                                                                               if(_loc29_ || param2)
                                                                                                               {
                                                                                                                  §§push(param1.§_-pV§);
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(_loc18_.x);
                                                                                                                     if(!(_loc28_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc28_ && b2Distance))
                                                                                                                        {
                                                                                                                           _loc26_ = §§pop();
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(_loc26_);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       if(!(_loc28_ && b2Distance))
                                                                                                                                       {
                                                                                                                                          addr1146:
                                                                                                                                          param1.§_-pV§.y = _loc26_ = _loc18_.y;
                                                                                                                                          addr1149:
                                                                                                                                          param1.§_-dQ§.y = _loc26_;
                                                                                                                                          if(_loc29_ || param1)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr1160);
                                                                                                                                       }
                                                                                                                                       param1.§_-1P§ = 0;
                                                                                                                                       §§goto(addr1160);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1149);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1146);
                                                                                                         }
                                                                                                         §§goto(addr1160);
                                                                                                      }
                                                                                                      §§goto(addr813);
                                                                                                   }
                                                                                                   §§goto(addr786);
                                                                                                }
                                                                                                §§goto(addr788);
                                                                                             }
                                                                                             §§goto(addr817);
                                                                                          }
                                                                                          §§goto(addr756);
                                                                                       }
                                                                                       §§goto(addr706);
                                                                                    }
                                                                                    §§goto(addr817);
                                                                                 }
                                                                                 §§goto(addr793);
                                                                              }
                                                                              §§goto(addr794);
                                                                           }
                                                                           §§goto(addr839);
                                                                        }
                                                                        §§goto(addr794);
                                                                     default:
                                                                        b2Settings.b2Assert(false);
                                                                        if(!_loc28_)
                                                                        {
                                                                           if(_loc28_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc28_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr136);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc17_++;
                                                                              if(!(_loc28_ && param1))
                                                                              {
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr196:
                                                                           }
                                                                        }
                                                                        §§goto(addr794);
                                                                  }
                                                                  §§push(_loc8_.§_-ru§);
                                                                  if(_loc29_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                               }
                                                               continue loop1;
                                                               addr284:
                                                            }
                                                            else
                                                            {
                                                               addr311:
                                                               if(§§pop() === _loc26_)
                                                               {
                                                                  addr313:
                                                                  §§push(2);
                                                                  if(_loc28_ && param2)
                                                                  {
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr326);
                                                                  §§push(3);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr299:
                                                            §§push(1);
                                                            if(!_loc29_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      else
                                                      {
                                                         §§push(2);
                                                         if(_loc29_)
                                                         {
                                                            §§push(_loc26_);
                                                            if(!_loc28_)
                                                            {
                                                               addr291:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc29_ || b2Distance)
                                                                  {
                                                                     §§goto(addr299);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr313);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(3);
                                                                  if(_loc29_ || param2)
                                                                  {
                                                                     §§goto(addr311);
                                                                  }
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr311);
                                                         }
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr299);
                                          }
                                       }
                                       else
                                       {
                                          _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          if(!(_loc28_ && b2Distance))
                                          {
                                             _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                             §§goto(addr196);
                                          }
                                       }
                                       §§goto(addr754);
                                    }
                                    break;
                                 }
                                 addr346:
                                 §§push(3);
                                 if(_loc28_)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc29_)
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr823);
                                 }
                                 else
                                 {
                                    §§push((_loc18_ = _loc8_.§_-oo§()).§_-wN§());
                                    if(!_loc28_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc28_)
                                       {
                                          addr364:
                                          §§push(§§pop());
                                          if(_loc29_ || param3)
                                          {
                                             _loc16_ = §§pop();
                                             if(_loc29_)
                                             {
                                                addr376:
                                                if(§§pop() > _loc15_)
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      addr379:
                                                      §§push(_loc16_);
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         addr387:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc15_ = §§pop();
                                                   }
                                                   if((_loc20_ = _loc8_.§_-Au§()).§_-wN§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                   {
                                                      break loop2;
                                                   }
                                                   (_loc21_ = _loc9_[_loc8_.§_-ru§]).indexA = _loc4_.§_-02l§(b2Math.§_-bf§(_loc6_.R,_loc20_.§_-5M§()));
                                                   if(_loc29_ || param1)
                                                   {
                                                      _loc21_.§_-9x§ = b2Math.§_-yP§(_loc6_,_loc4_.§_-0-e§(_loc21_.indexA));
                                                      if(!_loc28_)
                                                      {
                                                         _loc21_.indexB = _loc5_.§_-02l§(b2Math.§_-bf§(_loc7_.R,_loc20_));
                                                         _loc21_.§_-8S§ = b2Math.§_-yP§(_loc7_,_loc5_.§_-0-e§(_loc21_.indexB));
                                                         addr474:
                                                         if(_loc29_)
                                                         {
                                                            addr432:
                                                            _loc21_.§_-04b§ = b2Math.§_-DO§(_loc21_.§_-8S§,_loc21_.§_-9x§);
                                                            if(!_loc28_)
                                                            {
                                                               if(_loc29_ || param1)
                                                               {
                                                                  _loc19_++;
                                                                  if(!_loc28_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr432);
                                                                     }
                                                                     §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     _loc27_ = §§pop();
                                                                     if(_loc29_)
                                                                     {
                                                                        _loc26_.b2_gjkIters = _loc27_;
                                                                     }
                                                                     if(_loc29_)
                                                                     {
                                                                        addr617:
                                                                        _loc22_ = false;
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           addr614:
                                                                           _loc17_ = 0;
                                                                           addr625:
                                                                        }
                                                                        addr640:
                                                                        break loop2;
                                                                     }
                                                                     addr615:
                                                                     if(_loc17_ < _loc13_)
                                                                     {
                                                                        §§push(_loc21_.indexA);
                                                                        if(_loc29_ || param3)
                                                                        {
                                                                           if(_loc29_)
                                                                           {
                                                                              addr601:
                                                                              §§push(§§pop() == _loc11_[_loc17_]);
                                                                              if(§§pop() == _loc11_[_loc17_])
                                                                              {
                                                                                 addr603:
                                                                                 §§pop();
                                                                                 if(_loc29_ || param1)
                                                                                 {
                                                                                    addr520:
                                                                                    §§push(_loc21_.indexB);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() == _loc12_[_loc17_]);
                                                                                       if(!(_loc28_ && param1))
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             if(!(_loc28_ && param2))
                                                                                             {
                                                                                                addr545:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc29_ || param3)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         if(_loc29_ || b2Distance)
                                                                                                         {
                                                                                                            _loc22_ = §§pop();
                                                                                                            addr565:
                                                                                                            if(_loc28_ && param2)
                                                                                                            {
                                                                                                               §§goto(addr615);
                                                                                                            }
                                                                                                            addr637:
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               §§push((_loc26_ = _loc8_).§_-ru§);
                                                                                                               if(_loc29_ || b2Distance)
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                               }
                                                                                                               _loc27_ = §§pop();
                                                                                                               if(_loc29_ || b2Distance)
                                                                                                               {
                                                                                                                  _loc26_.§_-ru§ = _loc27_;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§goto(addr640);
                                                                                                         }
                                                                                                         §§goto(addr603);
                                                                                                      }
                                                                                                      §§goto(addr637);
                                                                                                   }
                                                                                                   §§goto(addr640);
                                                                                                }
                                                                                                _loc17_++;
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      addr518:
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr520);
                                                                                                      }
                                                                                                      §§goto(addr615);
                                                                                                   }
                                                                                                   §§goto(addr565);
                                                                                                }
                                                                                                §§goto(addr640);
                                                                                             }
                                                                                             §§goto(addr617);
                                                                                          }
                                                                                          §§goto(addr601);
                                                                                       }
                                                                                       §§goto(addr565);
                                                                                    }
                                                                                    §§goto(addr615);
                                                                                 }
                                                                                 §§goto(addr565);
                                                                              }
                                                                              §§goto(addr545);
                                                                           }
                                                                           §§goto(addr614);
                                                                        }
                                                                        §§goto(addr615);
                                                                     }
                                                                     if(!(_loc29_ || param2))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr565);
                                                                  }
                                                                  §§goto(addr617);
                                                               }
                                                               §§goto(addr474);
                                                            }
                                                            §§goto(addr625);
                                                         }
                                                      }
                                                      §§goto(addr518);
                                                   }
                                                   §§goto(addr617);
                                                }
                                                §§goto(addr379);
                                             }
                                             §§goto(addr387);
                                          }
                                       }
                                       §§goto(addr376);
                                    }
                                    §§goto(addr364);
                                 }
                              }
                              break;
                           }
                           continue loop1;
                        }
                        §§goto(addr828);
                     }
                     §§goto(addr346);
                  }
                  §§goto(addr813);
               }
               b2_gjkMaxIters = b2Math.§_-yL§(b2_gjkMaxIters,_loc19_);
               if(_loc29_)
               {
                  _loc8_.§use§(param1.§_-dQ§,param1.§_-pV§);
                  §§goto(addr846);
               }
               §§goto(addr726);
            }
         }
      }
   }
}
