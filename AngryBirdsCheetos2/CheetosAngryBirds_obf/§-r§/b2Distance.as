package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §]!0§:b2Simplex;
      
      private static var §"!P§:Vector.<int>;
      
      private static var §[Y§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]!0§ = new b2Simplex();
            do
            {
               §"!P§ = new Vector.<int>(3);
               do
               {
                  §[Y§ = new Vector.<int>(3);
               }
               while(!(_loc2_ || b2Distance));
               
            }
            while(_loc1_ && b2Distance);
            
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §4!-§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:int = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc28_ || param3)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!(_loc29_ && param3))
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc28_ || b2Distance)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§-C§;
         var _loc5_:b2DistanceProxy = param3.§%!J§;
         var _loc6_:b2Transform = param3.§'1§;
         var _loc7_:b2Transform = param3.§0!$§;
         var _loc8_:b2Simplex;
         (_loc8_ = §]!0§).§>!g§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§#1§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §"!P§;
         var _loc12_:Vector.<int> = §[Y§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§!e§()).§0]§());
         if(_loc28_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!_loc29_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         var _loc19_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc19_);
            while(true)
            {
               §§push(_loc10_);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc28_ || param3)
                     {
                        break;
                     }
                     param1.§8!6§ = b2Math.§=_§(param1.§]!<§,param1.§9R§).§2P§();
                     param1.§@@§ = _loc19_;
                     _loc8_.§!!T§(param2);
                     addr842:
                     addr860:
                     if(_loc28_ || param3)
                     {
                        addr811:
                        if(param3.§"_§)
                        {
                           addr812:
                           if(_loc28_)
                           {
                              addr817:
                              _loc23_ = _loc4_.§#&§;
                              addr816:
                              if(_loc28_ || param3)
                              {
                                 addr797:
                                 §§push(_loc5_.§#&§);
                                 if(!(_loc29_ && b2Distance))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 if(_loc28_)
                                 {
                                    _loc24_ = §§pop();
                                    addr800:
                                    if(!(_loc29_ && param2))
                                    {
                                       addr757:
                                       §§push(param1.§8!6§);
                                       if(!_loc29_)
                                       {
                                          §§push(_loc23_);
                                          if(!_loc29_)
                                          {
                                             §§push(§§pop() + _loc24_);
                                          }
                                          §§push(§§pop() > §§pop());
                                          if(_loc28_ || param1)
                                          {
                                             if(§§pop())
                                             {
                                                addr777:
                                                §§pop();
                                                addr778:
                                                if(!(_loc29_ && param2))
                                                {
                                                   §§push(param1.§8!6§);
                                                   if(!_loc29_)
                                                   {
                                                      if(_loc28_)
                                                      {
                                                         §§push(§§pop() > Number.MIN_VALUE);
                                                         if(_loc28_)
                                                         {
                                                            if(!_loc29_)
                                                            {
                                                               addr713:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc29_)
                                                                  {
                                                                     if(!(_loc29_ && param2))
                                                                     {
                                                                        addr724:
                                                                        §§push(param1);
                                                                        §§push(param1.§8!6§);
                                                                        if(!(_loc29_ && b2Distance))
                                                                        {
                                                                           §§push(_loc23_);
                                                                           if(!(_loc29_ && b2Distance))
                                                                           {
                                                                              §§push(§§pop() + _loc24_);
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§pop().§8!6§ = §§pop();
                                                                        addr746:
                                                                        if(_loc28_)
                                                                        {
                                                                           if(_loc28_ || param3)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr757);
                                                                              }
                                                                              (_loc25_ = b2Math.§=_§(param1.§9R§,param1.§]!<§)).Normalize();
                                                                              if(_loc28_ || b2Distance)
                                                                              {
                                                                                 addr1026:
                                                                                 §§push(param1.§]!<§);
                                                                                 §§push(param1.§]!<§.x);
                                                                                 if(!(_loc29_ && param1))
                                                                                 {
                                                                                    addr1025:
                                                                                    §§push(_loc23_);
                                                                                    if(_loc28_ || b2Distance)
                                                                                    {
                                                                                       addr1024:
                                                                                       §§push(§§pop() * _loc25_.x);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().x = §§pop();
                                                                              }
                                                                              addr1027:
                                                                              §§push(param1.§]!<§);
                                                                              if(_loc28_ || param1)
                                                                              {
                                                                                 §§push(param1.§]!<§);
                                                                                 if(_loc28_ || b2Distance)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       if(!(_loc29_ && param1))
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!(_loc29_ && param2))
                                                                                          {
                                                                                             §§push(_loc25_.y);
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr997:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   addr1000:
                                                                                                   §§pop().y = §§pop() + §§pop();
                                                                                                   addr926:
                                                                                                   addr944:
                                                                                                   addr931:
                                                                                                   addr929:
                                                                                                   §§push(param1.§9R§);
                                                                                                   §§push(param1.§9R§.x);
                                                                                                   if(_loc28_ || b2Distance)
                                                                                                   {
                                                                                                      addr940:
                                                                                                      §§push(§§pop() - _loc24_ * _loc25_.x);
                                                                                                   }
                                                                                                   §§pop().x = §§pop();
                                                                                                   if(!(_loc29_ && b2Distance))
                                                                                                   {
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(param1.§9R§);
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            §§push(param1.§9R§);
                                                                                                            if(_loc28_ || b2Distance)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc29_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc29_)
                                                                                                                  {
                                                                                                                     §§push(_loc24_);
                                                                                                                     if(_loc28_ || b2Distance)
                                                                                                                     {
                                                                                                                        §§push(_loc25_.y);
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           addr916:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 addr921:
                                                                                                                                 §§pop().y = §§pop() - §§pop();
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr926);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1154);
                                                                                                                                 }
                                                                                                                                 §§goto(addr926);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr940);
                                                                                                                     }
                                                                                                                     §§goto(addr916);
                                                                                                                  }
                                                                                                                  §§goto(addr944);
                                                                                                               }
                                                                                                               §§goto(addr921);
                                                                                                            }
                                                                                                            §§goto(addr931);
                                                                                                         }
                                                                                                         §§goto(addr929);
                                                                                                      }
                                                                                                      §§goto(addr1027);
                                                                                                   }
                                                                                                   addr1001:
                                                                                                   §§goto(addr1001);
                                                                                                }
                                                                                                §§goto(addr1025);
                                                                                             }
                                                                                             §§goto(addr1024);
                                                                                          }
                                                                                          §§goto(addr997);
                                                                                       }
                                                                                       §§goto(addr1026);
                                                                                    }
                                                                                    §§goto(addr1000);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1026);
                                                                           }
                                                                           §§goto(addr842);
                                                                        }
                                                                        §§goto(addr778);
                                                                     }
                                                                     §§goto(addr812);
                                                                  }
                                                                  §§goto(addr746);
                                                               }
                                                               §§push(_loc18_ = new b2Vec2());
                                                               §§push(0.5);
                                                               if(_loc28_ || param2)
                                                               {
                                                                  §§push(param1.§]!<§.x);
                                                                  if(!(_loc29_ && param1))
                                                                  {
                                                                     §§push(§§pop() + param1.§9R§.x);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§pop().x = §§pop();
                                                               if(!(_loc29_ && param2))
                                                               {
                                                                  §§push(_loc18_);
                                                                  §§push(0.5);
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(param1.§]!<§.y);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop() + param1.§9R§.y);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(param1.§]!<§);
                                                                     if(_loc28_ || param3)
                                                                     {
                                                                        §§push(param1.§9R§);
                                                                        if(!(_loc29_ && param2))
                                                                        {
                                                                           §§push(_loc18_.x);
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc28_)
                                                                              {
                                                                                 _loc26_ = §§pop();
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§push(_loc26_);
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr1130:
                                                                                                param1.§9R§.y = _loc26_ = _loc18_.y;
                                                                                                addr1133:
                                                                                                param1.§]!<§.y = _loc26_;
                                                                                                if(_loc29_ && b2Distance)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr1154);
                                                                                             }
                                                                                             param1.§8!6§ = 0;
                                                                                             §§goto(addr1154);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1133);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1130);
                                                                  }
                                                               }
                                                               §§goto(addr1130);
                                                            }
                                                            §§goto(addr811);
                                                         }
                                                         §§goto(addr777);
                                                      }
                                                      §§goto(addr797);
                                                   }
                                                   §§goto(addr757);
                                                }
                                                §§goto(addr800);
                                             }
                                             §§goto(addr713);
                                          }
                                          §§goto(addr777);
                                       }
                                       §§goto(addr817);
                                       addr807:
                                    }
                                    §§goto(addr817);
                                 }
                                 §§goto(addr816);
                                 addr825:
                              }
                              §§goto(addr842);
                              addr814:
                           }
                           §§goto(addr860);
                        }
                        addr1154:
                        return;
                        addr837:
                     }
                     addr853:
                     §§goto(addr853);
                  }
                  else
                  {
                     §§push(_loc8_.§ ]§);
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc13_ = §§pop();
                           addr257:
                           while(true)
                           {
                              §§push(0);
                              if(!_loc28_)
                              {
                                 break;
                              }
                              if(!(_loc29_ && param2))
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           addr360:
                           §§push(3);
                           if(!(_loc28_ || param3))
                           {
                              continue loop2;
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc29_ && param3))
                              {
                                 addr376:
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push((_loc18_ = _loc8_.§!e§()).§0]§());
                              if(!(_loc29_ && param3))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc28_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc29_ && param2))
                                    {
                                       _loc16_ = §§pop();
                                       if(!_loc29_)
                                       {
                                          addr405:
                                          if(§§pop() > _loc15_)
                                          {
                                             if(!(_loc29_ && param2))
                                             {
                                                addr413:
                                                §§push(_loc16_);
                                                if(_loc28_)
                                                {
                                                   addr417:
                                                   _loc15_ = Number(§§pop());
                                                }
                                                §§goto(addr417);
                                             }
                                             if((_loc20_ = _loc8_.§6!&§()).§0]§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                             {
                                                break loop2;
                                             }
                                             (_loc21_ = _loc9_[_loc8_.§ ]§]).indexA = _loc4_.§<@§(b2Math.§=!X§(_loc6_.R,_loc20_.§"n§()));
                                             if(_loc28_)
                                             {
                                                _loc21_.§,!?§ = b2Math.§=!!§(_loc6_,_loc4_.§2!C§(_loc21_.indexA));
                                                _loc21_.indexB = _loc5_.§<@§(b2Math.§=!X§(_loc7_.R,_loc20_));
                                                _loc21_.§`-§ = b2Math.§=!!§(_loc7_,_loc5_.§2!C§(_loc21_.indexB));
                                                addr463:
                                                _loc21_.§-T§ = b2Math.§=_§(_loc21_.§`-§,_loc21_.§,!?§);
                                                addr515:
                                                addr505:
                                                if(_loc28_ || b2Distance)
                                                {
                                                   if(!_loc29_)
                                                   {
                                                      if(_loc28_)
                                                      {
                                                         _loc19_++;
                                                         if(!_loc29_)
                                                         {
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr463);
                                                               }
                                                               §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                               if(_loc28_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               _loc27_ = §§pop();
                                                               if(_loc28_)
                                                               {
                                                                  _loc26_.b2_gjkIters = _loc27_;
                                                               }
                                                               if(!(_loc29_ && param1))
                                                               {
                                                                  addr633:
                                                                  _loc22_ = false;
                                                                  _loc17_ = 0;
                                                                  addr634:
                                                                  if(!(_loc29_ && b2Distance))
                                                                  {
                                                                     if(_loc28_)
                                                                     {
                                                                        addr635:
                                                                        if(_loc17_ < _loc13_)
                                                                        {
                                                                           §§push(_loc21_.indexA);
                                                                           if(_loc28_)
                                                                           {
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr611:
                                                                                 §§push(§§pop() == _loc11_[_loc17_]);
                                                                                 if(§§pop() == _loc11_[_loc17_])
                                                                                 {
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr547:
                                                                                       §§push(_loc21_.indexB);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() == _loc12_[_loc17_]);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             addr558:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc28_ || param3)
                                                                                                {
                                                                                                   addr567:
                                                                                                   §§push(true);
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      if(!(_loc29_ && param3))
                                                                                                      {
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§goto(addr633);
                                                                                                         }
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(_loc28_ || param1)
                                                                                                         {
                                                                                                            addr641:
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               §§push((_loc26_ = _loc8_).§ ]§);
                                                                                                               if(!(_loc29_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                               }
                                                                                                               _loc27_ = §§pop();
                                                                                                               if(!(_loc29_ && param1))
                                                                                                               {
                                                                                                                  _loc26_.§ ]§ = _loc27_;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(!(_loc28_ || b2Distance))
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                         addr649:
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      §§goto(addr611);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr641);
                                                                                             }
                                                                                             _loc17_++;
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                addr545:
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr547);
                                                                                                }
                                                                                                §§goto(addr635);
                                                                                             }
                                                                                             §§goto(addr649);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr635);
                                                                                    }
                                                                                    §§goto(addr641);
                                                                                 }
                                                                                 §§goto(addr558);
                                                                              }
                                                                              §§goto(addr633);
                                                                           }
                                                                           §§goto(addr635);
                                                                        }
                                                                        if(!_loc28_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     §§goto(addr634);
                                                                  }
                                                                  §§goto(addr641);
                                                               }
                                                               §§goto(addr567);
                                                            }
                                                            §§goto(addr463);
                                                         }
                                                         §§goto(addr633);
                                                      }
                                                      §§goto(addr515);
                                                   }
                                                   §§goto(addr505);
                                                }
                                                addr494:
                                                §§goto(addr494);
                                             }
                                             §§goto(addr545);
                                          }
                                          §§goto(addr413);
                                       }
                                       §§goto(addr417);
                                    }
                                 }
                                 §§goto(addr405);
                              }
                              §§goto(addr417);
                           }
                        }
                     }
                  }
                  §§goto(addr817);
               }
               b2_gjkMaxIters = b2Math.§@e§(b2_gjkMaxIters,_loc19_);
               if(_loc28_ || param3)
               {
                  _loc8_.§ n§(param1.§]!<§,param1.§9R§);
               }
               §§goto(addr842);
            }
         }
      }
   }
}
