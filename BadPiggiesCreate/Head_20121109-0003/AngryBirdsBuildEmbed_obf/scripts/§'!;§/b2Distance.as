package §'!;§
{
   import §#b§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §"a§:b2Simplex;
      
      private static var §!!S§:Vector.<int> = new Vector.<int>(3);
      
      private static var §@!B§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"a§ = new b2Simplex();
            if(!_loc1_)
            {
               §§goto(addr35);
            }
            §§goto(addr49);
         }
         addr35:
         if(_loc2_ || _loc1_)
         {
            addr49:
            §@!B§ = new Vector.<int>(3);
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §@9§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
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
            if(!_loc28_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§4M§;
         var _loc5_:b2DistanceProxy = param3.§1!]§;
         var _loc6_:b2Transform = param3.§#! §;
         var _loc7_:b2Transform = param3.§&X§;
         var _loc8_:b2Simplex;
         (_loc8_ = §"a§).§^!J§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§>!+§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §!!S§;
         var _loc12_:Vector.<int> = §@!B§;
         var _loc13_:int = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§0!"§()).§9^§());
         if(!(_loc28_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!(_loc28_ && param1))
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
                     if(!(_loc28_ && param1))
                     {
                        addr580:
                        b2_gjkMaxIters = b2Math.§,!a§(b2_gjkMaxIters,_loc19_);
                        _loc8_.§ !F§(param1.§7!;§,param1.§<!P§);
                        param1.§[!u§ = b2Math.§<b§(param1.§7!;§,param1.§<!P§).§#!^§();
                        if(!_loc28_)
                        {
                           param1.§6<§ = _loc19_;
                           addr606:
                           _loc8_.§6!c§(param2);
                           §§push(param3.§?^§);
                           if(_loc29_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!_loc28_)
                                 {
                                    addr621:
                                    §§push(_loc4_.§%+§);
                                    if(!(_loc28_ && param2))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc28_)
                                       {
                                          _loc23_ = §§pop();
                                          if(_loc29_ || param2)
                                          {
                                             §§push(_loc5_.§%+§);
                                             if(_loc29_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc28_ && b2Distance))
                                                {
                                                   _loc24_ = §§pop();
                                                }
                                                addr663:
                                                §§push(_loc23_);
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop() + _loc24_);
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(!_loc28_)
                                                {
                                                   addr671:
                                                   if(§§pop())
                                                   {
                                                      if(_loc29_)
                                                      {
                                                         addr675:
                                                         §§pop();
                                                         addr691:
                                                         if(_loc29_ || param2)
                                                         {
                                                            addr685:
                                                            §§push(param1.§[!u§ > Number.MIN_VALUE);
                                                         }
                                                         §§push(param1);
                                                         §§push(param1.§[!u§);
                                                         if(!_loc28_)
                                                         {
                                                            §§push(_loc23_);
                                                            if(!(_loc28_ && b2Distance))
                                                            {
                                                               §§push(§§pop() + _loc24_);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§pop().§[!u§ = §§pop();
                                                         (_loc25_ = b2Math.§<b§(param1.§<!P§,param1.§7!;§)).Normalize();
                                                         if(_loc29_)
                                                         {
                                                            §§push(param1.§7!;§);
                                                            if(!(_loc28_ && param3))
                                                            {
                                                               §§push(param1.§7!;§);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc29_ || param3)
                                                                  {
                                                                     §§push(_loc23_);
                                                                     if(_loc29_ || param3)
                                                                     {
                                                                        §§push(_loc25_.x);
                                                                        if(_loc29_ || param1)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc28_ && param1))
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    addr781:
                                                                                    §§push(param1.§7!;§);
                                                                                    §§push(param1.§7!;§.y);
                                                                                    if(_loc29_ || param2)
                                                                                    {
                                                                                       addr789:
                                                                                       §§push(_loc23_);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr796:
                                                                                          §§pop().y = §§pop() + §§pop() * _loc25_.y;
                                                                                          addr795:
                                                                                          if(_loc29_ || param3)
                                                                                          {
                                                                                             addr804:
                                                                                             §§push(param1.§<!P§);
                                                                                             if(!(_loc28_ && param2))
                                                                                             {
                                                                                                §§push(param1.§<!P§);
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!(_loc28_ && b2Distance))
                                                                                                   {
                                                                                                      §§push(_loc24_);
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         §§push(_loc25_.x);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc29_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  addr843:
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                  {
                                                                                                                     addr855:
                                                                                                                     addr853:
                                                                                                                     addr851:
                                                                                                                     §§push(param1.§<!P§);
                                                                                                                     §§push(param1.§<!P§.y);
                                                                                                                     if(_loc29_ || b2Distance)
                                                                                                                     {
                                                                                                                        addr863:
                                                                                                                        §§push(_loc24_);
                                                                                                                        if(!(_loc28_ && param2))
                                                                                                                        {
                                                                                                                           addr874:
                                                                                                                           §§push(§§pop() - §§pop() * _loc25_.y);
                                                                                                                        }
                                                                                                                        §§goto(addr874);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     return;
                                                                                                                     addr876:
                                                                                                                  }
                                                                                                                  §§goto(addr876);
                                                                                                               }
                                                                                                               §§goto(addr863);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr874);
                                                                                                   }
                                                                                                   §§goto(addr843);
                                                                                                }
                                                                                                §§goto(addr855);
                                                                                             }
                                                                                             §§goto(addr853);
                                                                                          }
                                                                                          §§goto(addr855);
                                                                                       }
                                                                                       §§goto(addr795);
                                                                                    }
                                                                                    §§goto(addr796);
                                                                                 }
                                                                                 §§goto(addr851);
                                                                              }
                                                                              §§goto(addr789);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr796);
                                                               }
                                                            }
                                                            §§goto(addr781);
                                                         }
                                                         §§goto(addr804);
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc28_)
                                                      {
                                                      }
                                                      §§goto(addr691);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc18_ = new b2Vec2());
                                                      §§push(0.5);
                                                      if(_loc29_ || param2)
                                                      {
                                                         §§push(param1.§7!;§.x);
                                                         if(_loc29_)
                                                         {
                                                            §§push(§§pop() + param1.§<!P§.x);
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
                                                            §§push(param1.§7!;§.y);
                                                            if(!(_loc28_ && param2))
                                                            {
                                                               §§push(§§pop() + param1.§<!P§.y);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                         if(_loc29_)
                                                         {
                                                            addr930:
                                                            §§push(param1.§7!;§);
                                                            if(!(_loc28_ && b2Distance))
                                                            {
                                                               §§push(param1.§<!P§);
                                                               if(!(_loc28_ && param3))
                                                               {
                                                                  §§push(_loc18_.x);
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc29_)
                                                                     {
                                                                        _loc26_ = §§pop();
                                                                        if(_loc29_ || param1)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              §§push(_loc26_);
                                                                              if(_loc29_)
                                                                              {
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr1014:
                                                                                    if(_loc29_ || param2)
                                                                                    {
                                                                                       addr1003:
                                                                                       param1.§<!P§.y = _loc26_ = _loc18_.y;
                                                                                       addr1005:
                                                                                       §§push(param1.§7!;§);
                                                                                       §§push(_loc26_);
                                                                                    }
                                                                                    param1.§[!u§ = 0;
                                                                                    §§goto(addr855);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    §§goto(addr1014);
                                                                                 }
                                                                                 §§goto(addr855);
                                                                              }
                                                                           }
                                                                           §§goto(addr1005);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1003);
                                                         }
                                                         §§goto(addr1014);
                                                      }
                                                      §§goto(addr930);
                                                   }
                                                }
                                                §§goto(addr675);
                                             }
                                             §§goto(addr663);
                                          }
                                          §§push(param1.§[!u§);
                                          if(_loc29_)
                                          {
                                             §§goto(addr663);
                                          }
                                       }
                                       §§goto(addr685);
                                    }
                                    §§goto(addr663);
                                 }
                                 §§goto(addr675);
                              }
                              §§goto(addr855);
                           }
                           §§goto(addr671);
                        }
                        §§goto(addr621);
                     }
                     §§goto(addr675);
                  }
                  else
                  {
                     §§push(_loc8_.§'!,§);
                     if(!(_loc28_ && param1))
                     {
                        _loc13_ = §§pop();
                        if(!(_loc28_ && param2))
                        {
                           _loc17_ = 0;
                           if(!(_loc28_ && param2))
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc17_);
                                 addr170:
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc13_);
                                    if(_loc28_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc8_.§'!,§);
                                       if(!_loc29_)
                                       {
                                          break loop2;
                                       }
                                       _loc26_ = §§pop();
                                       if(!(_loc28_ && param2))
                                       {
                                          §§push(1);
                                          §§push(_loc26_);
                                          if(_loc29_ || param3)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc28_)
                                                {
                                                   addr223:
                                                   §§push(0);
                                                }
                                                else
                                                {
                                                   addr242:
                                                   §§push(2);
                                                   if(!_loc29_)
                                                   {
                                                   }
                                                }
                                                addr250:
                                                if(!_loc29_)
                                                {
                                                   break loop2;
                                                }
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      addr261:
                                                      §§push(_loc8_.§'!,§);
                                                      §§push(3);
                                                      if(!_loc29_)
                                                      {
                                                         break loop4;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc28_ && b2Distance)
                                                         {
                                                         }
                                                         §§goto(addr580);
                                                      }
                                                      else
                                                      {
                                                         §§push((_loc18_ = _loc8_.§0!"§()).§9^§());
                                                         if(_loc29_ || b2Distance)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc29_ || param3)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc28_ && param2))
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  addr324:
                                                                  addr325:
                                                                  if(_loc29_ || param1)
                                                                  {
                                                                     addr312:
                                                                     §§push(_loc15_);
                                                                  }
                                                                  _loc15_ = Number(§§pop());
                                                                  if((_loc20_ = _loc8_.§3o§()).§9^§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                                  {
                                                                     §§goto(addr580);
                                                                  }
                                                                  else
                                                                  {
                                                                     (_loc21_ = _loc9_[_loc8_.§'!,§]).indexA = _loc4_.§7Z§(b2Math.§#Z§(_loc6_.R,_loc20_.§[1§()));
                                                                     if(_loc29_)
                                                                     {
                                                                        _loc21_.§!! § = b2Math.§#!N§(_loc6_,_loc4_.§2!E§(_loc21_.indexA));
                                                                        _loc21_.indexB = _loc5_.§7Z§(b2Math.§#Z§(_loc7_.R,_loc20_));
                                                                        if(_loc29_ || b2Distance)
                                                                        {
                                                                           _loc21_.§0!j§ = b2Math.§#!N§(_loc7_,_loc5_.§2!E§(_loc21_.indexB));
                                                                           _loc21_.§6! § = b2Math.§<b§(_loc21_.§0!j§,_loc21_.§!! §);
                                                                           _loc19_++;
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                              if(_loc29_ || param2)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              _loc27_ = §§pop();
                                                                              if(!_loc28_)
                                                                              {
                                                                                 _loc26_.b2_gjkIters = _loc27_;
                                                                              }
                                                                              §§push(false);
                                                                              if(!(_loc28_ && param2))
                                                                              {
                                                                                 _loc22_ = §§pop();
                                                                                 if(!(_loc28_ && param3))
                                                                                 {
                                                                                    addr438:
                                                                                    §§push(0);
                                                                                    if(!(_loc28_ && param1))
                                                                                    {
                                                                                       _loc17_ = §§pop();
                                                                                       addr525:
                                                                                       if(_loc17_ < _loc13_)
                                                                                       {
                                                                                          §§push(_loc21_.indexA);
                                                                                          if(_loc29_ || param1)
                                                                                          {
                                                                                             addr458:
                                                                                             §§push(§§pop() == _loc11_[_loc17_]);
                                                                                             if(_loc29_ || b2Distance)
                                                                                             {
                                                                                                addr469:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc29_ || b2Distance)
                                                                                                   {
                                                                                                      addr478:
                                                                                                      §§pop();
                                                                                                      if(!(_loc28_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc21_.indexB);
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            addr490:
                                                                                                            §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                            if(!(_loc28_ && param2))
                                                                                                            {
                                                                                                               addr511:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  _loc17_++;
                                                                                                                  §§goto(addr525);
                                                                                                               }
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                  {
                                                                                                                     addr522:
                                                                                                                     _loc22_ = §§pop();
                                                                                                                     §§push(_loc22_);
                                                                                                                     addr523:
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push((_loc26_ = _loc8_).§'!,§);
                                                                                                                     if(_loc29_ || b2Distance)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                     }
                                                                                                                     _loc27_ = §§pop();
                                                                                                                     if(_loc29_ || param1)
                                                                                                                     {
                                                                                                                        _loc26_.§'!,§ = _loc27_;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  if(!(_loc29_ || param1))
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr580);
                                                                                                            }
                                                                                                            §§goto(addr522);
                                                                                                         }
                                                                                                         §§goto(addr525);
                                                                                                      }
                                                                                                      §§goto(addr523);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr511);
                                                                                             }
                                                                                             §§goto(addr478);
                                                                                          }
                                                                                          §§goto(addr490);
                                                                                       }
                                                                                       if(_loc29_ || b2Distance)
                                                                                       {
                                                                                          §§goto(addr522);
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 §§goto(addr525);
                                                                              }
                                                                              §§goto(addr469);
                                                                           }
                                                                           §§goto(addr438);
                                                                        }
                                                                        §§goto(addr522);
                                                                     }
                                                                     §§goto(addr438);
                                                                  }
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(_loc29_)
                                                                  {
                                                                     addr316:
                                                                     §§push(_loc16_);
                                                                     if(!(_loc28_ && b2Distance))
                                                                     {
                                                                        §§goto(addr324);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      break;
                                                   case 1:
                                                      _loc8_.Solve2();
                                                      if(_loc29_)
                                                      {
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr606);
                                                   case 2:
                                                      _loc8_.Solve3();
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         addr193:
                                                         §§goto(addr261);
                                                      }
                                                      break;
                                                   default:
                                                      b2Settings.b2Assert(false);
                                                      addr198:
                                                      §§goto(addr261);
                                                }
                                                §§goto(addr685);
                                             }
                                             else
                                             {
                                                §§push(2);
                                                §§push(_loc26_);
                                                if(_loc29_)
                                                {
                                                   addr229:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         §§push(1);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                      §§push(_loc26_);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr242);
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                }
                                                §§goto(addr250);
                                             }
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr223);
                                    }
                                    else
                                    {
                                       _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                       _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                       if(_loc29_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr621);
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr170);
                  }
               }
            }
         }
      }
   }
}
