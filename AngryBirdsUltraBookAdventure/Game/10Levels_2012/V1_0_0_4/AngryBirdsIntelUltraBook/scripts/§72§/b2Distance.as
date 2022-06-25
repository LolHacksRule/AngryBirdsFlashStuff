package §72§
{
   import §2!+§.*;
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §7!v§:b2Simplex;
      
      private static var §&!q§:Vector.<int>;
      
      private static var §;k§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §7!v§ = new b2Simplex();
            while(true)
            {
               §&!q§ = new Vector.<int>(3);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §;k§ = new Vector.<int>(3);
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
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
      
      public static function §&7§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         if(_loc29_)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(_loc29_ || b2Distance)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc29_ || b2Distance)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§]!O§;
         var _loc5_:b2DistanceProxy = param3.§&d§;
         var _loc6_:b2Transform = param3.§=!G§;
         var _loc7_:b2Transform = param3.§"!O§;
         var _loc8_:b2Simplex;
         (_loc8_ = §7!v§).§7z§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§#!w§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §&!q§;
         var _loc12_:Vector.<int> = §;k§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§"!C§()).§ !W§());
         if(_loc29_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!(_loc28_ && param2))
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
                  addr813:
                  §§push(_loc8_.§9s§);
                  loop3:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     if(!_loc28_)
                     {
                        _loc13_ = §§pop();
                        if(_loc29_)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              _loc17_ = §§pop();
                              if(!(_loc29_ || b2Distance))
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc17_);
                                 if(!_loc28_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop1;
                                 addr194:
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(_loc29_)
                                 {
                                    addr671:
                                    b2_gjkMaxIters = b2Math.§0!_§(b2_gjkMaxIters,_loc19_);
                                    if(!(_loc28_ && param1))
                                    {
                                       _loc8_.§-K§(param1.§^o§,param1.§2!#§);
                                       param1.§8j§ = b2Math.§54§(param1.§^o§,param1.§2!#§).§>!7§();
                                       addr841:
                                       addr684:
                                    }
                                    param1.§]A§ = _loc19_;
                                    _loc8_.§ !?§(param2);
                                    addr818:
                                    if(param3.§^1§)
                                    {
                                       if(!(_loc28_ && param1))
                                       {
                                          addr805:
                                          _loc23_ = _loc4_.§9!A§;
                                       }
                                       addr806:
                                       if(_loc29_ || param1)
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr818);
                                    }
                                    return;
                                    addr834:
                                    addr823:
                                    addr347:
                                 }
                                 §§goto(addr841);
                              }
                              else
                              {
                                 §§push((_loc18_ = _loc8_.§"!C§()).§ !W§());
                                 if(!_loc28_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc28_ && param1))
                                    {
                                       §§push(§§pop());
                                       if(_loc29_)
                                       {
                                          _loc16_ = §§pop();
                                          addr387:
                                          addr388:
                                          if(_loc29_)
                                          {
                                             §§push(_loc15_);
                                          }
                                          _loc15_ = Number(§§pop());
                                          if((_loc20_ = _loc8_.§`!o§()).§ !W§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                          {
                                             §§goto(addr671);
                                          }
                                          else
                                          {
                                             (_loc21_ = _loc9_[_loc8_.§9s§]).indexA = _loc4_.§4!J§(b2Math.§;%§(_loc6_.R,_loc20_.§@H§()));
                                             if(!(_loc28_ && param2))
                                             {
                                                _loc21_.§[!r§ = b2Math.§'!6§(_loc6_,_loc4_.§^>§(_loc21_.indexA));
                                             }
                                             _loc21_.indexB = _loc5_.§4!J§(b2Math.§;%§(_loc7_.R,_loc20_));
                                             addr474:
                                             if(!(_loc28_ && param3))
                                             {
                                                _loc21_.§3!$§ = b2Math.§'!6§(_loc7_,_loc5_.§^>§(_loc21_.indexB));
                                                if(!_loc28_)
                                                {
                                                   addr439:
                                                   _loc21_.§^N§ = b2Math.§54§(_loc21_.§3!$§,_loc21_.§[!r§);
                                                   if(!_loc28_)
                                                   {
                                                      _loc19_++;
                                                      if(_loc29_)
                                                      {
                                                         if(!(_loc28_ && param2))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr439);
                                                            }
                                                            §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                            if(_loc29_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            _loc27_ = §§pop();
                                                            if(_loc29_ || b2Distance)
                                                            {
                                                               _loc26_.b2_gjkIters = _loc27_;
                                                            }
                                                            if(!(_loc28_ && b2Distance))
                                                            {
                                                               addr627:
                                                               _loc22_ = false;
                                                               if(!_loc28_)
                                                               {
                                                                  addr624:
                                                                  _loc17_ = 0;
                                                                  addr625:
                                                                  if(_loc17_ < _loc13_)
                                                                  {
                                                                     §§push(_loc21_.indexA);
                                                                     if(_loc29_ || param2)
                                                                     {
                                                                        if(!(_loc28_ && b2Distance))
                                                                        {
                                                                           addr616:
                                                                           §§push(§§pop() == _loc11_[_loc17_]);
                                                                           if(!_loc28_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr620:
                                                                                 §§pop();
                                                                                 addr621:
                                                                                 §§push(_loc21_.indexB);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() == _loc12_[_loc17_]);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       addr551:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             addr555:
                                                                                             §§push(true);
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr558:
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   if(!(_loc28_ && param2))
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      addr578:
                                                                                                      if(_loc29_ || param3)
                                                                                                      {
                                                                                                         if(_loc28_ && param1)
                                                                                                         {
                                                                                                            §§goto(addr625);
                                                                                                         }
                                                                                                         addr642:
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push((_loc26_ = _loc8_).§9s§);
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                            }
                                                                                                            _loc27_ = §§pop();
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               _loc26_.§9s§ = _loc27_;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         if(!(_loc29_ || param1))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr650:
                                                                                                         §§goto(addr671);
                                                                                                         addr592:
                                                                                                      }
                                                                                                      §§goto(addr621);
                                                                                                   }
                                                                                                   §§goto(addr616);
                                                                                                }
                                                                                                §§goto(addr620);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr642);
                                                                                       }
                                                                                       _loc17_++;
                                                                                       if(_loc28_ && param2)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(_loc29_ || param3)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr620);
                                                                                          }
                                                                                          §§goto(addr625);
                                                                                       }
                                                                                       §§goto(addr578);
                                                                                    }
                                                                                    §§goto(addr558);
                                                                                 }
                                                                                 §§goto(addr625);
                                                                              }
                                                                              §§goto(addr551);
                                                                           }
                                                                           §§goto(addr627);
                                                                        }
                                                                     }
                                                                     §§goto(addr624);
                                                                  }
                                                                  if(!(_loc29_ || param2))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr630:
                                                               }
                                                               §§goto(addr642);
                                                            }
                                                            §§goto(addr555);
                                                         }
                                                         §§goto(addr474);
                                                      }
                                                      §§goto(addr592);
                                                   }
                                                   §§goto(addr650);
                                                }
                                                §§goto(addr630);
                                             }
                                             addr491:
                                             §§goto(addr491);
                                          }
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc28_ && param1))
                                          {
                                             addr379:
                                             §§push(_loc16_);
                                             if(_loc29_ || param1)
                                             {
                                                §§goto(addr387);
                                             }
                                             §§goto(addr388);
                                          }
                                          §§goto(addr387);
                                       }
                                       §§goto(addr379);
                                    }
                                 }
                                 §§goto(addr387);
                              }
                           }
                           addr725:
                           §§push(param1);
                           §§push(param1.§8j§);
                           if(_loc29_)
                           {
                              §§push(_loc23_);
                              if(_loc29_ || b2Distance)
                              {
                                 §§push(§§pop() + _loc24_);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§8j§ = §§pop();
                           if(!_loc28_)
                           {
                              if(_loc29_)
                              {
                                 if(false)
                                 {
                                    addr748:
                                    §§push(param1.§8j§);
                                    if(_loc29_)
                                    {
                                       if(!_loc28_)
                                       {
                                          §§push(_loc23_);
                                          if(_loc29_ || b2Distance)
                                          {
                                             §§push(§§pop() + _loc24_);
                                          }
                                          §§push(§§pop() > §§pop());
                                          if(_loc29_)
                                          {
                                             if(§§pop())
                                             {
                                                addr770:
                                                §§pop();
                                                if(!_loc28_)
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      §§push(param1.§8j§);
                                                      if(_loc29_ || param3)
                                                      {
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            §§push(§§pop() > Number.MIN_VALUE);
                                                            if(_loc29_ || param3)
                                                            {
                                                               if(_loc29_)
                                                               {
                                                                  addr714:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc28_)
                                                                     {
                                                                        if(_loc29_ || param1)
                                                                        {
                                                                           §§goto(addr725);
                                                                        }
                                                                        §§goto(addr834);
                                                                     }
                                                                     §§goto(addr725);
                                                                  }
                                                                  §§push(_loc18_ = new b2Vec2());
                                                                  §§push(0.5);
                                                                  if(_loc29_)
                                                                  {
                                                                     §§push(param1.§^o§.x);
                                                                     if(_loc29_ || param2)
                                                                     {
                                                                        §§push(§§pop() + param1.§2!#§.x);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  if(_loc29_ || param2)
                                                                  {
                                                                     §§push(_loc18_);
                                                                     §§push(0.5);
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(param1.§^o§.y);
                                                                        if(_loc29_ || param2)
                                                                        {
                                                                           §§push(§§pop() + param1.§2!#§.y);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(param1.§^o§);
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           §§push(param1.§2!#§);
                                                                           if(_loc29_ || param3)
                                                                           {
                                                                              §§push(_loc18_.x);
                                                                              if(_loc29_ || param1)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    _loc26_ = §§pop();
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       if(!(_loc28_ && b2Distance))
                                                                                       {
                                                                                          §§push(_loc26_);
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr1152:
                                                                                                if(_loc29_ || param1)
                                                                                                {
                                                                                                   addr1141:
                                                                                                   param1.§2!#§.y = _loc26_ = _loc18_.y;
                                                                                                   addr1143:
                                                                                                   §§push(param1.§^o§);
                                                                                                   §§push(_loc26_);
                                                                                                }
                                                                                                param1.§8j§ = 0;
                                                                                                §§goto(addr671);
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             if(_loc29_ || param3)
                                                                                             {
                                                                                                §§goto(addr1152);
                                                                                             }
                                                                                             §§goto(addr671);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1143);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1141);
                                                                     }
                                                                  }
                                                                  §§goto(addr1152);
                                                               }
                                                               §§goto(addr818);
                                                            }
                                                            §§goto(addr770);
                                                         }
                                                         addr779:
                                                         if(_loc29_ || b2Distance)
                                                         {
                                                            addr787:
                                                            _loc24_ = §§pop();
                                                            addr788:
                                                            if(!_loc28_)
                                                            {
                                                               §§goto(addr748);
                                                            }
                                                            §§goto(addr841);
                                                         }
                                                         §§goto(addr805);
                                                      }
                                                      §§goto(addr748);
                                                   }
                                                   §§goto(addr823);
                                                }
                                                §§goto(addr788);
                                             }
                                             §§goto(addr714);
                                          }
                                          §§goto(addr770);
                                       }
                                       §§goto(addr805);
                                    }
                                    §§goto(addr787);
                                 }
                                 (_loc25_ = b2Math.§54§(param1.§2!#§,param1.§^o§)).Normalize();
                                 if(!_loc28_)
                                 {
                                    addr995:
                                    §§push(param1.§^o§);
                                    §§push(param1.§^o§.x);
                                    §§push(_loc23_);
                                    if(!(_loc28_ && b2Distance))
                                    {
                                       addr1005:
                                       §§push(§§pop() * _loc25_.x);
                                    }
                                    §§pop().x = §§pop() + §§pop();
                                 }
                                 addr1008:
                                 §§push(param1.§^o§);
                                 if(_loc29_)
                                 {
                                    §§push(param1.§^o§);
                                    if(!(_loc28_ && param1))
                                    {
                                       §§push(§§pop().y);
                                       if(_loc29_)
                                       {
                                          if(!_loc28_)
                                          {
                                             §§push(_loc23_);
                                             if(!_loc28_)
                                             {
                                                if(!(_loc28_ && b2Distance))
                                                {
                                                   §§push(_loc25_.y);
                                                   if(_loc29_ || param1)
                                                   {
                                                      addr978:
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      if(_loc29_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         addr982:
                                                         if(!(_loc28_ && param3))
                                                         {
                                                            addr937:
                                                            param1.§2!#§.x -= _loc24_ * _loc25_.x;
                                                            addr926:
                                                            addr938:
                                                            addr935:
                                                            addr933:
                                                            addr936:
                                                            addr932:
                                                            addr931:
                                                            §§push(param1.§2!#§);
                                                            if(!_loc28_)
                                                            {
                                                               §§push(param1.§2!#§);
                                                               if(!(_loc28_ && b2Distance))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc29_ || param1)
                                                                  {
                                                                     if(!(_loc28_ && param3))
                                                                     {
                                                                        §§push(_loc24_);
                                                                        if(_loc29_)
                                                                        {
                                                                           if(_loc29_ || param1)
                                                                           {
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(_loc25_.y);
                                                                                 if(!(_loc28_ && param1))
                                                                                 {
                                                                                    addr906:
                                                                                    §§push(§§pop() - §§pop() * §§pop());
                                                                                    if(_loc29_ || param1)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          if(_loc29_ || param1)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr926);
                                                                                             }
                                                                                             §§goto(addr671);
                                                                                          }
                                                                                          §§goto(addr982);
                                                                                       }
                                                                                       §§goto(addr938);
                                                                                    }
                                                                                    §§goto(addr937);
                                                                                 }
                                                                                 §§goto(addr935);
                                                                              }
                                                                              §§goto(addr933);
                                                                           }
                                                                           §§goto(addr936);
                                                                        }
                                                                        §§goto(addr906);
                                                                     }
                                                                     §§goto(addr932);
                                                                  }
                                                                  §§goto(addr906);
                                                               }
                                                               §§goto(addr931);
                                                            }
                                                            addr929:
                                                            §§goto(addr929);
                                                         }
                                                         §§goto(addr1008);
                                                      }
                                                      §§goto(addr995);
                                                   }
                                                   §§goto(addr1005);
                                                }
                                                §§goto(addr995);
                                             }
                                             §§goto(addr978);
                                          }
                                          §§goto(addr995);
                                       }
                                       §§goto(addr978);
                                    }
                                 }
                                 §§goto(addr995);
                              }
                              §§goto(addr806);
                           }
                           §§goto(addr770);
                        }
                        break;
                     }
                     continue loop1;
                     if(_loc28_ && param2)
                     {
                        continue;
                     }
                     §§push(_loc13_);
                     if(!_loc28_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc29_)
                           {
                              §§push(_loc8_.§9s§);
                              if(_loc29_ || param3)
                              {
                                 _loc26_ = §§pop();
                                 if(_loc29_)
                                 {
                                    §§push(1);
                                    if(!(_loc28_ && param3))
                                    {
                                       §§push(_loc26_);
                                       if(_loc29_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc29_ || param1)
                                             {
                                                addr271:
                                                §§push(0);
                                                if(_loc29_)
                                                {
                                                   addr316:
                                                   if(!(_loc28_ && param3))
                                                   {
                                                      addr324:
                                                      switch(§§pop())
                                                      {
                                                         default:
                                                            b2Settings.b2Assert(false);
                                                            if(!_loc28_)
                                                            {
                                                               if(!(_loc29_ || param2))
                                                               {
                                                                  _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                                  if(_loc29_)
                                                                  {
                                                                     _loc17_++;
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr684);
                                                                  }
                                                                  §§goto(addr671);
                                                                  addr216:
                                                               }
                                                               if(false)
                                                               {
                                                                  addr149:
                                                               }
                                                               addr332:
                                                               §§push(_loc8_.§9s§);
                                                               if(!_loc29_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr336:
                                                               §§push(3);
                                                               if(_loc28_ && param2)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr841);
                                                         case 1:
                                                            _loc8_.Solve2();
                                                            if(!_loc28_)
                                                            {
                                                               §§goto(addr149);
                                                            }
                                                            §§goto(addr725);
                                                         case 0:
                                                            §§goto(addr332);
                                                         case 2:
                                                            _loc8_.Solve3();
                                                            if(!_loc28_)
                                                            {
                                                               §§goto(addr332);
                                                            }
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr336);
                                                }
                                                addr301:
                                                addr302:
                                                if(§§pop() === _loc26_)
                                                {
                                                   addr303:
                                                   §§push(2);
                                                   if(_loc29_ || b2Distance)
                                                   {
                                                      addr311:
                                                   }
                                                }
                                                §§goto(addr316);
                                                §§push(3);
                                             }
                                             §§goto(addr303);
                                          }
                                          §§push(2);
                                          if(_loc29_)
                                          {
                                             §§push(_loc26_);
                                             if(!(_loc28_ && param1))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      §§push(1);
                                                      if(!_loc28_)
                                                      {
                                                         addr292:
                                                         §§goto(addr316);
                                                      }
                                                      §§goto(addr311);
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§push(3);
                                                if(_loc29_ || param1)
                                                {
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr302);
                                          }
                                       }
                                       §§goto(addr301);
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr271);
                              }
                              §§goto(addr324);
                           }
                           §§goto(addr841);
                        }
                        _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                        §§goto(addr216);
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr779);
                  §§push(_loc5_.§9!A§);
               }
            }
            if(!_loc28_)
            {
               §§goto(addr671);
            }
            §§goto(addr813);
         }
      }
   }
}
