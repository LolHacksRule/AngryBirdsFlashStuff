package §5!o§
{
   import §"!9§.*;
   import §2"=§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §=?§:b2Simplex;
      
      private static var §9"%§:Vector.<int>;
      
      private static var §]^§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=?§ = new b2Simplex();
            do
            {
               §9"%§ = new Vector.<int>(3);
               do
               {
                  §]^§ = new Vector.<int>(3);
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §]H§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§^!W§;
         var _loc5_:b2DistanceProxy = param3.§+!4§;
         var _loc6_:b2Transform = param3.§'!k§;
         var _loc7_:b2Transform = param3.§%"4§;
         var _loc8_:b2Simplex;
         (_loc8_ = §=?§).§#&§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§"!@§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §9"%§;
         var _loc12_:Vector.<int> = §]^§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§%^§()).§%"§());
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(_loc29_)
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
                  §§push(_loc8_.§<v§);
                  if(!_loc28_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop3:
                  while(true)
                  {
                     _loc13_ = §§pop();
                     if(!_loc28_)
                     {
                        §§push(0);
                        if(!(_loc28_ && param2))
                        {
                           if(_loc28_)
                           {
                              continue;
                           }
                           _loc17_ = §§pop();
                           if(_loc29_ || param2)
                           {
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
                                          if(_loc29_)
                                          {
                                             §§push(_loc8_.§<v§);
                                             if(!_loc29_)
                                             {
                                                break loop2;
                                             }
                                             _loc26_ = §§pop();
                                             if(_loc29_ || param2)
                                             {
                                                §§push(1);
                                                if(!(_loc28_ && param1))
                                                {
                                                   §§push(_loc26_);
                                                   if(_loc29_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            §§push(0);
                                                            if(_loc28_)
                                                            {
                                                               addr301:
                                                               if(§§pop() === _loc26_)
                                                               {
                                                                  addr303:
                                                                  §§push(2);
                                                                  if(!(_loc28_ && param3))
                                                                  {
                                                                     addr311:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(3);
                                                               }
                                                            }
                                                            addr316:
                                                            if(_loc29_ || param3)
                                                            {
                                                               addr324:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     break;
                                                                  case 1:
                                                                     _loc8_.Solve2();
                                                                     if(!(_loc28_ && param2))
                                                                     {
                                                                        addr122:
                                                                        break;
                                                                     }
                                                                     addr686:
                                                                     b2_gjkMaxIters = b2Math.§6§(b2_gjkMaxIters,_loc19_);
                                                                     if(_loc29_)
                                                                     {
                                                                        _loc8_.§-!C§(param1.§8!3§,param1.§""7§);
                                                                        param1.§`!8§ = b2Math.§'!%§(param1.§8!3§,param1.§""7§).§`g§();
                                                                        param1.§0!p§ = _loc19_;
                                                                        _loc8_.§8!d§(param2);
                                                                        addr818:
                                                                        break loop3;
                                                                        addr829:
                                                                        addr836:
                                                                        addr818:
                                                                     }
                                                                     §§goto(addr745);
                                                                  case 2:
                                                                     _loc8_.Solve3();
                                                                     if(_loc29_ || param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr726);
                                                                  default:
                                                                     b2Settings.b2Assert(false);
                                                                     if(_loc29_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr122);
                                                                     }
                                                                     §§goto(addr808);
                                                               }
                                                               addr332:
                                                               §§push(_loc8_.§<v§);
                                                               if(_loc29_ || param1)
                                                               {
                                                                  break;
                                                               }
                                                               break loop2;
                                                            }
                                                            break loop2;
                                                         }
                                                         addr284:
                                                         §§push(1);
                                                         if(_loc28_ && b2Distance)
                                                         {
                                                            §§goto(addr301);
                                                         }
                                                         else
                                                         {
                                                            addr292:
                                                         }
                                                         §§goto(addr316);
                                                         §§goto(addr301);
                                                      }
                                                      else
                                                      {
                                                         §§push(2);
                                                         if(_loc29_)
                                                         {
                                                            §§push(_loc26_);
                                                            if(_loc29_ || param3)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc28_ && b2Distance))
                                                                  {
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                               else
                                                               {
                                                                  §§push(3);
                                                                  if(!(_loc28_ && param2))
                                                                  {
                                                                     §§goto(addr301);
                                                                  }
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr303);
                                          }
                                          break loop3;
                                       }
                                       _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                       while(true)
                                       {
                                          _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                          if(_loc29_)
                                          {
                                             continue;
                                          }
                                       }
                                       addr745:
                                       if(false)
                                       {
                                          addr747:
                                          §§push(param1.§`!8§);
                                          if(_loc29_ || param2)
                                          {
                                             §§push(_loc23_);
                                             if(!(_loc28_ && param1))
                                             {
                                                §§push(§§pop() + _loc24_);
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(!_loc28_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr772:
                                                   §§pop();
                                                   addr773:
                                                   if(!_loc28_)
                                                   {
                                                      if(_loc29_ || param2)
                                                      {
                                                         §§push(param1.§`!8§);
                                                         if(!_loc28_)
                                                         {
                                                            if(!_loc28_)
                                                            {
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() > Number.MIN_VALUE);
                                                                  if(!(_loc28_ && param1))
                                                                  {
                                                                     if(_loc29_)
                                                                     {
                                                                        addr716:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc29_)
                                                                           {
                                                                              if(_loc29_)
                                                                              {
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       addr726:
                                                                                       §§push(param1);
                                                                                       §§push(param1.§`!8§);
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc24_);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                       §§pop().§`!8§ = §§pop();
                                                                                       addr743:
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§goto(addr745);
                                                                                       }
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr805:
                                                                                          _loc23_ = _loc4_.§;$§;
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             addr786:
                                                                                             §§push(_loc5_.§;$§);
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                addr794:
                                                                                                _loc24_ = §§pop();
                                                                                                §§goto(addr747);
                                                                                             }
                                                                                             §§goto(addr805);
                                                                                             addr808:
                                                                                          }
                                                                                          §§goto(addr829);
                                                                                          addr804:
                                                                                       }
                                                                                       break loop3;
                                                                                    }
                                                                                    §§goto(addr836);
                                                                                 }
                                                                                 §§goto(addr805);
                                                                              }
                                                                              §§goto(addr773);
                                                                           }
                                                                           §§goto(addr743);
                                                                        }
                                                                        §§push(_loc18_ = new b2Vec2());
                                                                        §§push(0.5);
                                                                        if(_loc29_ || param3)
                                                                        {
                                                                           §§push(param1.§8!3§.x);
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(§§pop() + param1.§""7§.x);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                        if(_loc29_ || param3)
                                                                        {
                                                                           §§push(_loc18_);
                                                                           §§push(0.5);
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(param1.§8!3§.y);
                                                                              if(_loc29_ || param1)
                                                                              {
                                                                                 §§push(§§pop() + param1.§""7§.y);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           if(_loc29_)
                                                                           {
                                                                              addr1058:
                                                                              §§push(param1.§8!3§);
                                                                              if(_loc29_ || param3)
                                                                              {
                                                                                 §§push(param1.§""7§);
                                                                                 if(_loc29_ || b2Distance)
                                                                                 {
                                                                                    §§push(_loc18_.x);
                                                                                    if(_loc29_ || param1)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          _loc26_ = §§pop();
                                                                                          if(_loc29_ || param2)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(!(_loc28_ && param3))
                                                                                             {
                                                                                                §§push(_loc26_);
                                                                                                if(!(_loc28_ && param2))
                                                                                                {
                                                                                                   if(!(_loc28_ && param3))
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      §§goto(addr1152);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(_loc28_ && param1)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr1152);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1133);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1131);
                                                                           }
                                                                           §§goto(addr1152);
                                                                        }
                                                                        §§goto(addr1058);
                                                                     }
                                                                     addr799:
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr743);
                                                                     }
                                                                     §§goto(addr1152);
                                                                  }
                                                                  §§goto(addr772);
                                                               }
                                                               §§goto(addr786);
                                                            }
                                                            §§goto(addr794);
                                                         }
                                                         §§goto(addr747);
                                                         addr782:
                                                      }
                                                      §§goto(addr818);
                                                   }
                                                   §§goto(addr794);
                                                }
                                                §§goto(addr716);
                                             }
                                             §§goto(addr772);
                                          }
                                          §§goto(addr804);
                                       }
                                       (_loc25_ = b2Math.§'!%§(param1.§""7§,param1.§8!3§)).Normalize();
                                       if(_loc29_ || param1)
                                       {
                                          addr1002:
                                          param1.§8!3§.x += _loc23_ * _loc25_.x;
                                          addr1003:
                                          addr998:
                                          addr1001:
                                          addr1000:
                                          addr997:
                                          addr996:
                                          §§push(param1.§8!3§);
                                          if(!(_loc28_ && b2Distance))
                                          {
                                             §§push(param1.§8!3§);
                                             if(_loc29_)
                                             {
                                                §§push(§§pop().y);
                                                if(_loc29_)
                                                {
                                                   if(_loc29_)
                                                   {
                                                      §§push(_loc23_);
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         §§push(_loc25_.y);
                                                         if(_loc29_ || b2Distance)
                                                         {
                                                            addr968:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc29_ || param1)
                                                            {
                                                               if(_loc29_ || param3)
                                                               {
                                                                  addr983:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc29_ || b2Distance)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     addr929:
                                                                     param1.§""7§.x -= _loc24_ * _loc25_.x;
                                                                     addr918:
                                                                     addr991:
                                                                     addr930:
                                                                     addr924:
                                                                     addr928:
                                                                     addr927:
                                                                     addr925:
                                                                     addr923:
                                                                     §§push(param1.§""7§);
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(param1.§""7§);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc28_ && b2Distance))
                                                                           {
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(_loc24_);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(_loc25_.y);
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          addr884:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc28_ && param3))
                                                                                          {
                                                                                             addr892:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                if(!(_loc28_ && param2))
                                                                                                {
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      if(_loc29_ || b2Distance)
                                                                                                      {
                                                                                                         §§goto(addr916);
                                                                                                      }
                                                                                                      §§goto(addr1003);
                                                                                                   }
                                                                                                   §§goto(addr991);
                                                                                                }
                                                                                                §§goto(addr930);
                                                                                             }
                                                                                             §§goto(addr924);
                                                                                          }
                                                                                          §§goto(addr928);
                                                                                       }
                                                                                       §§goto(addr927);
                                                                                    }
                                                                                    §§goto(addr925);
                                                                                 }
                                                                                 §§goto(addr884);
                                                                              }
                                                                              §§goto(addr929);
                                                                           }
                                                                           §§goto(addr892);
                                                                        }
                                                                        §§goto(addr923);
                                                                     }
                                                                     addr921:
                                                                     §§goto(addr921);
                                                                  }
                                                                  §§goto(addr1002);
                                                               }
                                                               §§goto(addr998);
                                                            }
                                                            §§goto(addr1001);
                                                         }
                                                         §§goto(addr1000);
                                                      }
                                                      §§goto(addr968);
                                                   }
                                                   §§goto(addr997);
                                                }
                                                §§goto(addr983);
                                             }
                                             §§goto(addr996);
                                          }
                                          addr994:
                                          §§goto(addr994);
                                       }
                                       addr916:
                                       if(false)
                                       {
                                          §§goto(addr918);
                                       }
                                       addr1152:
                                       if(!_loc28_)
                                       {
                                          addr1131:
                                          param1.§""7§.y = _loc26_ = _loc18_.y;
                                          addr1133:
                                          §§push(param1.§8!3§);
                                          §§push(_loc26_);
                                       }
                                       param1.§`!8§ = 0;
                                       return;
                                       §§goto(addr332);
                                    }
                                    addr344:
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc29_)
                                       {
                                          §§goto(addr686);
                                       }
                                       §§goto(addr782);
                                    }
                                    else
                                    {
                                       §§push((_loc18_ = _loc8_.§%^§()).§%"§());
                                       if(!_loc28_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc28_ && param2))
                                          {
                                             §§push(§§pop());
                                             if(!_loc28_)
                                             {
                                                _loc16_ = §§pop();
                                                addr392:
                                                addr393:
                                                if(!(_loc28_ && param3))
                                                {
                                                   §§push(_loc15_);
                                                }
                                                _loc15_ = Number(§§pop());
                                                if((_loc20_ = _loc8_.§<;§()).§%"§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                {
                                                   §§goto(addr686);
                                                }
                                                else
                                                {
                                                   (_loc21_ = _loc9_[_loc8_.§<v§]).indexA = _loc4_.§0!3§(b2Math.§%!C§(_loc6_.R,_loc20_.§1"$§()));
                                                   if(_loc29_ || b2Distance)
                                                   {
                                                      _loc21_.§&!l§ = b2Math.§>!C§(_loc6_,_loc4_.§,!Q§(_loc21_.indexA));
                                                      if(!_loc28_)
                                                      {
                                                         _loc21_.indexB = _loc5_.§0!3§(b2Math.§%!C§(_loc7_.R,_loc20_));
                                                         if(!(_loc28_ && b2Distance))
                                                         {
                                                            _loc21_.§`!^§ = b2Math.§>!C§(_loc7_,_loc5_.§,!Q§(_loc21_.indexB));
                                                            if(_loc29_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc21_.w = b2Math.§'!%§(_loc21_.§`!^§,_loc21_.§&!l§);
                                                                  if(_loc28_ && param2)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc19_++;
                                                                  if(_loc29_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                        if(_loc29_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        _loc27_ = §§pop();
                                                                     }
                                                                     continue;
                                                                     if(!_loc28_)
                                                                     {
                                                                        _loc26_.b2_gjkIters = _loc27_;
                                                                     }
                                                                     if(_loc29_ || param1)
                                                                     {
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr651:
                                                               if(!_loc22_)
                                                               {
                                                                  §§push((_loc26_ = _loc8_).§<v§);
                                                                  if(!(_loc28_ && b2Distance))
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  _loc27_ = §§pop();
                                                                  if(_loc29_)
                                                                  {
                                                                     _loc26_.§<v§ = _loc27_;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               if(!_loc29_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr686);
                                                            }
                                                            §§push(false);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               _loc22_ = §§pop();
                                                               if(_loc28_)
                                                               {
                                                                  break;
                                                               }
                                                               addr594:
                                                               while(true)
                                                               {
                                                                  if(_loc28_ && param2)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  _loc22_ = §§pop();
                                                                  if(!(_loc29_ || param2))
                                                                  {
                                                                     break loop7;
                                                                  }
                                                                  §§goto(addr651);
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               _loc17_ = §§pop();
                                                               if(_loc29_)
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc17_);
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= _loc13_)
                                                                        {
                                                                           if(!(_loc29_ || param1))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc21_.indexA);
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == _loc11_[_loc17_]);
                                                                              addr619:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc29_ || param3)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(true);
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   §§goto(addr594);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr651);
                                                                                             addr591:
                                                                                          }
                                                                                          §§goto(addr651);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc17_++;
                                                                                          if(_loc28_ && param2)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc21_.indexB);
                                                                                             if(_loc29_ || param3)
                                                                                             {
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr594);
                                                                                    }
                                                                                    continue loop10;
                                                                                    addr582:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc28_ && param3)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr533);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr651);
                                                   }
                                                   §§goto(addr591);
                                                }
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc29_ || b2Distance)
                                                {
                                                   addr384:
                                                   §§push(_loc16_);
                                                   if(_loc29_ || b2Distance)
                                                   {
                                                      §§goto(addr392);
                                                   }
                                                   §§goto(addr393);
                                                }
                                                §§goto(addr392);
                                             }
                                             §§goto(addr384);
                                          }
                                       }
                                       §§goto(addr392);
                                    }
                                 }
                                 break;
                              }
                              §§push(3);
                              if(_loc28_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr344);
                           }
                           §§goto(addr818);
                        }
                        §§goto(addr324);
                     }
                     break;
                  }
                  §§goto(addr799);
                  §§push(param3.§2h§);
               }
            }
            if(_loc28_ && param2)
            {
            }
            §§goto(addr686);
         }
      }
   }
}
