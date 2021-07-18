package §!§
{
   import §'!_§.*;
   import §=!!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §6!C§:b2Simplex;
      
      private static var §?!A§:Vector.<int>;
      
      private static var §'"'§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!C§ = new b2Simplex();
            while(true)
            {
               §?!A§ = new Vector.<int>(3);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            §'"'§ = new Vector.<int>(3);
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function § "4§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         if(_loc29_ || param2)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(_loc29_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!_loc28_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§+!l§;
         var _loc5_:b2DistanceProxy = param3.§!!5§;
         var _loc6_:b2Transform = param3.§5!H§;
         var _loc7_:b2Transform = param3.§9!&§;
         var _loc8_:b2Simplex;
         (_loc8_ = §6!C§).§,!H§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§^v§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §?!A§;
         var _loc12_:Vector.<int> = §'"'§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§@S§()).§&l§());
         if(_loc29_ || b2Distance)
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
                     if(!(_loc28_ && param3))
                     {
                        addr711:
                        b2_gjkMaxIters = b2Math.§1r§(b2_gjkMaxIters,_loc19_);
                        if(!(_loc28_ && param3))
                        {
                           _loc8_.§6!?§(param1.§1!@§,param1.§;"6§);
                           param1.§2!7§ = b2Math.§1"5§(param1.§1!@§,param1.§;"6§).Length();
                           param1.§9o§ = _loc19_;
                           addr866:
                           if(!_loc28_)
                           {
                              _loc8_.§^e§(param2);
                              addr841:
                              if(param3.§6!T§)
                              {
                                 addr833:
                                 _loc23_ = _loc4_.§>!M§;
                                 addr830:
                                 addr832:
                                 if(_loc29_)
                                 {
                                    addr814:
                                    §§push(_loc5_.§>!M§);
                                    if(!(_loc28_ && param3))
                                    {
                                       if(!_loc28_)
                                       {
                                          addr824:
                                          _loc24_ = §§pop();
                                          addr775:
                                          §§push(param1.§2!7§);
                                          §§push(_loc23_);
                                          if(_loc29_)
                                          {
                                             §§push(§§pop() + _loc24_);
                                          }
                                          addr825:
                                          §§push(§§pop() > §§pop());
                                          if(!(_loc28_ && param2))
                                          {
                                             if(!(_loc28_ && param2))
                                             {
                                                if(§§pop())
                                                {
                                                   addr800:
                                                   §§pop();
                                                   addr801:
                                                   if(_loc29_)
                                                   {
                                                      if(!(_loc28_ && b2Distance))
                                                      {
                                                         addr810:
                                                         §§push(param1.§2!7§);
                                                         if(!_loc28_)
                                                         {
                                                            if(!(_loc28_ && b2Distance))
                                                            {
                                                               if(_loc29_)
                                                               {
                                                                  §§push(§§pop() > Number.MIN_VALUE);
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr744:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc29_)
                                                                        {
                                                                           if(_loc29_)
                                                                           {
                                                                              if(!_loc28_)
                                                                              {
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    addr754:
                                                                                    §§push(param1);
                                                                                    §§push(param1.§2!7§);
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(_loc23_);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc24_);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                    §§pop().§2!7§ = §§pop();
                                                                                    addr766:
                                                                                    if(_loc29_ || param1)
                                                                                    {
                                                                                       addr773:
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr775);
                                                                                       }
                                                                                       (_loc25_ = b2Math.§1"5§(param1.§;"6§,param1.§1!@§)).Normalize();
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          addr1037:
                                                                                          §§push(param1.§1!@§);
                                                                                          §§push(param1.§1!@§.x);
                                                                                          if(_loc29_ || param2)
                                                                                          {
                                                                                             addr1033:
                                                                                             §§push(§§pop() + _loc23_ * _loc25_.x);
                                                                                          }
                                                                                          §§pop().x = §§pop();
                                                                                       }
                                                                                       addr1038:
                                                                                       §§push(param1.§1!@§);
                                                                                       if(!(_loc28_ && b2Distance))
                                                                                       {
                                                                                          §§push(param1.§1!@§);
                                                                                          if(!(_loc28_ && b2Distance))
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc29_ || param3)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   §§push(_loc25_.y);
                                                                                                   if(!(_loc28_ && b2Distance))
                                                                                                   {
                                                                                                      addr999:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc29_ || b2Distance)
                                                                                                      {
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            addr1009:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               addr1012:
                                                                                                               if(!(_loc28_ && param2))
                                                                                                               {
                                                                                                                  addr932:
                                                                                                                  addr938:
                                                                                                                  addr949:
                                                                                                                  addr950:
                                                                                                                  addr937:
                                                                                                                  addr935:
                                                                                                                  §§push(param1.§;"6§);
                                                                                                                  §§push(param1.§;"6§.x);
                                                                                                                  §§push(_loc24_);
                                                                                                                  if(_loc29_ || b2Distance)
                                                                                                                  {
                                                                                                                     addr948:
                                                                                                                     §§push(§§pop() * _loc25_.x);
                                                                                                                  }
                                                                                                                  §§pop().x = §§pop() - §§pop();
                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                  {
                                                                                                                     §§push(param1.§;"6§);
                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                     {
                                                                                                                        §§push(param1.§;"6§);
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!(_loc28_ && b2Distance))
                                                                                                                           {
                                                                                                                              if(_loc29_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc24_);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc25_.y);
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          addr924:
                                                                                                                                          §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                          if(_loc29_)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr932);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1175);
                                                                                                                                             }
                                                                                                                                             §§goto(addr932);
                                                                                                                                          }
                                                                                                                                          §§goto(addr938);
                                                                                                                                       }
                                                                                                                                       §§goto(addr948);
                                                                                                                                    }
                                                                                                                                    §§goto(addr949);
                                                                                                                                 }
                                                                                                                                 §§goto(addr924);
                                                                                                                              }
                                                                                                                              §§goto(addr950);
                                                                                                                           }
                                                                                                                           §§goto(addr924);
                                                                                                                        }
                                                                                                                        §§goto(addr937);
                                                                                                                     }
                                                                                                                     §§goto(addr935);
                                                                                                                  }
                                                                                                                  §§goto(addr1012);
                                                                                                               }
                                                                                                               §§goto(addr1038);
                                                                                                            }
                                                                                                            §§goto(addr1037);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1033);
                                                                                                }
                                                                                                §§goto(addr999);
                                                                                             }
                                                                                             §§goto(addr1009);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1037);
                                                                                    }
                                                                                    §§goto(addr866);
                                                                                 }
                                                                                 §§goto(addr830);
                                                                              }
                                                                              §§goto(addr825);
                                                                           }
                                                                           §§goto(addr801);
                                                                        }
                                                                        §§goto(addr766);
                                                                     }
                                                                     §§push(_loc18_ = new b2Vec2());
                                                                     §§push(0.5);
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(param1.§1!@§.x);
                                                                        if(!(_loc28_ && b2Distance))
                                                                        {
                                                                           §§push(§§pop() + param1.§;"6§.x);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§pop().x = §§pop();
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(_loc18_);
                                                                        §§push(0.5);
                                                                        if(_loc29_ || b2Distance)
                                                                        {
                                                                           §§push(param1.§1!@§.y);
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(§§pop() + param1.§;"6§.y);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        if(_loc29_)
                                                                        {
                                                                           addr1088:
                                                                           §§push(param1.§1!@§);
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(param1.§;"6§);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(_loc18_.x);
                                                                                 if(!(_loc28_ && param3))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc29_ || param2)
                                                                                    {
                                                                                       _loc26_ = §§pop();
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(_loc26_);
                                                                                             if(_loc29_ || param1)
                                                                                             {
                                                                                                if(!(_loc28_ && param2))
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   if(_loc29_ || param2)
                                                                                                   {
                                                                                                      addr1151:
                                                                                                      param1.§;"6§.y = _loc26_ = _loc18_.y;
                                                                                                      addr1153:
                                                                                                      §§push(param1.§1!@§);
                                                                                                      §§push(_loc26_);
                                                                                                   }
                                                                                                   §§goto(addr1175);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                if(!(_loc28_ && param2))
                                                                                                {
                                                                                                   addr1172:
                                                                                                   param1.§2!7§ = 0;
                                                                                                }
                                                                                                §§goto(addr1175);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1153);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1151);
                                                                        }
                                                                        §§goto(addr1172);
                                                                     }
                                                                     §§goto(addr1088);
                                                                  }
                                                                  §§goto(addr800);
                                                               }
                                                               §§goto(addr814);
                                                            }
                                                         }
                                                         §§goto(addr824);
                                                         addr810:
                                                      }
                                                      §§goto(addr841);
                                                   }
                                                   §§goto(addr830);
                                                }
                                                §§goto(addr744);
                                             }
                                             §§goto(addr841);
                                          }
                                          §§goto(addr800);
                                       }
                                       §§goto(addr832);
                                    }
                                    §§goto(addr833);
                                 }
                                 §§goto(addr866);
                              }
                              addr1175:
                              return;
                           }
                           addr859:
                           §§goto(addr859);
                        }
                        §§goto(addr810);
                     }
                     §§goto(addr833);
                  }
                  else
                  {
                     §§push(_loc8_.§6]§);
                     if(_loc29_)
                     {
                        §§push(int(§§pop()));
                        if(!(_loc29_ || param1))
                        {
                           continue loop1;
                        }
                        _loc13_ = §§pop();
                        if(!_loc28_)
                        {
                           §§push(0);
                           if(_loc29_)
                           {
                              _loc17_ = §§pop();
                              if(!(_loc28_ && param2))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(_loc29_)
                                    {
                                       §§push(_loc13_);
                                       if(_loc29_ || param1)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc28_ && param1))
                                             {
                                                §§push(_loc8_.§6]§);
                                                if(!_loc28_)
                                                {
                                                   addr254:
                                                   while(true)
                                                   {
                                                      _loc26_ = §§pop();
                                                      if(_loc29_ || param3)
                                                      {
                                                         §§push(1);
                                                         if(_loc29_)
                                                         {
                                                            §§push(_loc26_);
                                                            if(_loc29_ || b2Distance)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc29_ || param2))
                                                                     {
                                                                        addr288:
                                                                        §§push(_loc26_);
                                                                        if(!(_loc28_ && param2))
                                                                        {
                                                                           addr296:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc28_ && param1))
                                                                              {
                                                                                 addr304:
                                                                                 §§push(1);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    addr326:
                                                                                    if(_loc29_ || param3)
                                                                                    {
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                break loop5;
                                                                                             case 1:
                                                                                                _loc8_.Solve2();
                                                                                                addr192:
                                                                                                break;
                                                                                             case 2:
                                                                                                _loc8_.Solve3();
                                                                                                if(_loc29_ || b2Distance)
                                                                                                {
                                                                                                   if(!(_loc28_ && param2))
                                                                                                   {
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§goto(addr192);
                                                                                                }
                                                                                                §§goto(addr824);
                                                                                             default:
                                                                                                b2Settings.b2Assert(false);
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   if(!(_loc28_ && param1))
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      break loop5;
                                                                                                   }
                                                                                                   addr217:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         _loc17_++;
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§goto(addr824);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr773);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc8_.§6]§);
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          addr351:
                                                                                          §§push(3);
                                                                                          if(!(_loc28_ && b2Distance))
                                                                                          {
                                                                                             break loop3;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       addr334:
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr318:
                                                                                 §§push(2);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(3);
                                                                              if(_loc29_ || param3)
                                                                              {
                                                                                 addr317:
                                                                                 if(§§pop() === _loc26_)
                                                                                 {
                                                                                    §§goto(addr318);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr326);
                                                                                    §§push(3);
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               else
                                                               {
                                                                  §§push(2);
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§goto(addr288);
                                                                  }
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   addr254:
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr866);
                                          }
                                          else
                                          {
                                             _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          }
                                          §§goto(addr217);
                                       }
                                       break;
                                    }
                                    §§goto(addr254);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc28_)
                                    {
                                       §§goto(addr711);
                                    }
                                    §§goto(addr810);
                                 }
                                 else
                                 {
                                    §§push((_loc18_ = _loc8_.§@S§()).§&l§());
                                    if(!(_loc28_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc28_ && param3))
                                       {
                                          addr384:
                                          §§push(§§pop());
                                          if(_loc29_ || b2Distance)
                                          {
                                             _loc16_ = §§pop();
                                             addr408:
                                             if(!_loc28_)
                                             {
                                                §§push(_loc15_);
                                             }
                                             _loc15_ = §§pop();
                                             if((_loc20_ = _loc8_.§&"5§()).§&l§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                             {
                                                §§goto(addr711);
                                             }
                                             else
                                             {
                                                (_loc21_ = _loc9_[_loc8_.§6]§]).indexA = _loc4_.§^s§(b2Math.§`!C§(_loc6_.R,_loc20_.§2T§()));
                                                if(!_loc28_)
                                                {
                                                   _loc21_.§^t§ = b2Math.§#@§(_loc6_,_loc4_.§]"§(_loc21_.indexA));
                                                   _loc21_.indexB = _loc5_.§^s§(b2Math.§`!C§(_loc7_.R,_loc20_));
                                                   addr516:
                                                   if(_loc29_ || param2)
                                                   {
                                                      if(_loc28_ && param3)
                                                      {
                                                         §§goto(addr516);
                                                      }
                                                      _loc21_.§%Z§ = b2Math.§#@§(_loc7_,_loc5_.§]"§(_loc21_.indexB));
                                                      if(_loc29_ || b2Distance)
                                                      {
                                                         addr452:
                                                         _loc21_.§!R§ = b2Math.§1"5§(_loc21_.§%Z§,_loc21_.§^t§);
                                                         if(!_loc28_)
                                                         {
                                                            _loc19_++;
                                                            if(!(_loc28_ && param1))
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr452);
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
                                                               if(!(_loc28_ && param3))
                                                               {
                                                                  §§push(false);
                                                                  if(_loc29_)
                                                                  {
                                                                     _loc22_ = §§pop();
                                                                     addr660:
                                                                     §§push(0);
                                                                     if(_loc29_)
                                                                     {
                                                                        _loc17_ = §§pop();
                                                                        addr680:
                                                                        if(_loc29_)
                                                                        {
                                                                           if(_loc28_ && param3)
                                                                           {
                                                                              §§goto(addr660);
                                                                           }
                                                                           addr661:
                                                                           §§push(_loc17_);
                                                                           addr655:
                                                                        }
                                                                        §§goto(addr711);
                                                                     }
                                                                     addr662:
                                                                     if(§§pop() < _loc13_)
                                                                     {
                                                                        §§push(_loc21_.indexA);
                                                                        if(!(_loc28_ && param2))
                                                                        {
                                                                           addr635:
                                                                           §§push(§§pop() == _loc11_[_loc17_]);
                                                                           if(§§pop() == _loc11_[_loc17_])
                                                                           {
                                                                              addr637:
                                                                              §§pop();
                                                                              if(_loc29_)
                                                                              {
                                                                                 addr560:
                                                                                 §§push(_loc21_.indexB);
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    §§push(§§pop() == _loc12_[_loc17_]);
                                                                                    if(_loc29_ || param2)
                                                                                    {
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          addr593:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr595:
                                                                                             §§push(true);
                                                                                             if(_loc29_ || param1)
                                                                                             {
                                                                                                addr603:
                                                                                                if(!(_loc29_ || param1))
                                                                                                {
                                                                                                   §§goto(addr635);
                                                                                                }
                                                                                                _loc22_ = §§pop();
                                                                                                if(_loc29_ || param3)
                                                                                                {
                                                                                                }
                                                                                                addr672:
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   §§push((_loc26_ = _loc8_).§6]§);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   _loc27_ = §§pop();
                                                                                                   if(!(_loc28_ && param3))
                                                                                                   {
                                                                                                      _loc26_.§6]§ = _loc27_;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                if(_loc28_ && param2)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr680);
                                                                                             }
                                                                                             §§goto(addr672);
                                                                                          }
                                                                                          _loc17_++;
                                                                                          if(!(_loc29_ || b2Distance))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(!(_loc28_ && b2Distance))
                                                                                          {
                                                                                             addr558:
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr560);
                                                                                             }
                                                                                             §§goto(addr661);
                                                                                          }
                                                                                          §§goto(addr595);
                                                                                       }
                                                                                       §§goto(addr637);
                                                                                    }
                                                                                    §§goto(addr603);
                                                                                 }
                                                                                 §§goto(addr662);
                                                                                 addr640:
                                                                              }
                                                                              §§goto(addr680);
                                                                           }
                                                                           §§goto(addr593);
                                                                        }
                                                                        §§goto(addr662);
                                                                     }
                                                                     if(!(_loc28_ && param1))
                                                                     {
                                                                        §§goto(addr603);
                                                                     }
                                                                     §§goto(addr680);
                                                                  }
                                                                  §§goto(addr603);
                                                               }
                                                               §§goto(addr680);
                                                            }
                                                            §§goto(addr595);
                                                         }
                                                         §§goto(addr558);
                                                      }
                                                      §§goto(addr640);
                                                   }
                                                   §§goto(addr558);
                                                }
                                                §§goto(addr655);
                                             }
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             if(!(_loc28_ && b2Distance))
                                             {
                                                addr404:
                                                §§push(_loc16_);
                                                if(_loc29_)
                                                {
                                                   §§goto(addr408);
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr408);
                                          }
                                          §§goto(addr404);
                                       }
                                       §§goto(addr408);
                                    }
                                    §§goto(addr384);
                                 }
                              }
                              §§goto(addr754);
                           }
                           §§goto(addr351);
                        }
                        §§goto(addr833);
                     }
                     §§goto(addr254);
                  }
               }
            }
         }
      }
   }
}
