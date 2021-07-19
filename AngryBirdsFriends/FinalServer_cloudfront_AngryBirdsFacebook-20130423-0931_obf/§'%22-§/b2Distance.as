package §'"-§
{
   import §!"3§.*;
   import §,"[§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §+!Z§:b2Simplex;
      
      private static var §1!Y§:Vector.<int>;
      
      private static var §0!T§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!Z§ = new b2Simplex();
            while(true)
            {
               §1!Y§ = new Vector.<int>(3);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §0!T§ = new Vector.<int>(3);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
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
      
      public static function §4"H§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Vec2 = null;
         if(!(_loc29_ && param3))
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!_loc29_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc28_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§>!j§;
         var _loc5_:b2DistanceProxy = param3.§@!a§;
         var _loc6_:b2Transform = param3.§-H§;
         var _loc7_:b2Transform = param3.§3!3§;
         var _loc8_:b2Simplex;
         (_loc8_ = §+!Z§).§?"0§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§["8§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §1!Y§;
         var _loc12_:Vector.<int> = §0!T§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§;"M§()).§03§());
         if(!(_loc29_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!(_loc29_ && param1))
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
                     if(!(_loc29_ && param1))
                     {
                        addr635:
                        b2_gjkMaxIters = b2Math.§["2§(b2_gjkMaxIters,_loc19_);
                        if(_loc28_ || param3)
                        {
                           _loc8_.§22§(param1.§%" §,param1.§>^§);
                           param1.§<"1§ = b2Math.§9N§(param1.§%" §,param1.§>^§).§`"I§();
                           param1.§0!%§ = _loc19_;
                           addr808:
                           addr815:
                        }
                        _loc8_.§`d§(param2);
                        §§goto(addr764);
                     }
                     §§goto(addr694);
                  }
                  else
                  {
                     §§push(_loc8_.§=!4§);
                     if(_loc28_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc29_)
                        {
                           _loc13_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              if(!(_loc29_ && b2Distance))
                              {
                                 _loc17_ = §§pop();
                                 if(!_loc29_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       if(_loc28_)
                                       {
                                          §§push(_loc13_);
                                          if(!(_loc28_ || b2Distance))
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc28_)
                                             {
                                                addr764:
                                                addr797:
                                                addr792:
                                             }
                                             if(!_loc29_)
                                             {
                                                §§push(_loc8_.§=!4§);
                                                if(_loc28_)
                                                {
                                                   addr233:
                                                   _loc26_ = §§pop();
                                                   if(_loc28_)
                                                   {
                                                      §§push(1);
                                                      if(_loc28_)
                                                      {
                                                         §§push(_loc26_);
                                                         if(_loc28_ || b2Distance)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc29_ && param2))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc28_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr292:
                                                                  §§push(2);
                                                                  if(!(_loc29_ && b2Distance))
                                                                  {
                                                                     addr300:
                                                                  }
                                                               }
                                                               addr305:
                                                               if(_loc28_ || param3)
                                                               {
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        break;
                                                                     case 1:
                                                                        _loc8_.Solve2();
                                                                        if(!(_loc29_ && param2))
                                                                        {
                                                                           addr136:
                                                                           break;
                                                                        }
                                                                        §§goto(addr694);
                                                                     case 2:
                                                                        _loc8_.Solve3();
                                                                        if(_loc28_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr760);
                                                                     default:
                                                                        b2Settings.b2Assert(false);
                                                                        if(_loc28_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr136);
                                                                        }
                                                                        §§goto(addr776);
                                                                  }
                                                                  addr316:
                                                                  §§push(_loc8_.§=!4§);
                                                                  if(_loc28_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop2;
                                                               }
                                                               break loop2;
                                                            }
                                                            §§push(2);
                                                            if(!(_loc29_ && param3))
                                                            {
                                                               addr267:
                                                               §§push(_loc26_);
                                                               if(_loc28_)
                                                               {
                                                                  addr270:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc29_ && b2Distance))
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc28_ || b2Distance)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc28_)
                                                                     {
                                                                        addr291:
                                                                        if(§§pop() === _loc26_)
                                                                        {
                                                                           §§goto(addr292);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(3);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                            }
                                                            §§goto(addr291);
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                break;
                                             }
                                             addr177:
                                             if(!_loc28_)
                                             {
                                                continue loop3;
                                                if(param3.§0y§)
                                                {
                                                   if(!_loc29_)
                                                   {
                                                      if(!(_loc29_ && param1))
                                                      {
                                                         if(_loc28_)
                                                         {
                                                            addr786:
                                                            addr776:
                                                            §§push(_loc4_.§0!_§);
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc23_ = §§pop();
                                                            addr745:
                                                            §§push(_loc5_.§0!_§);
                                                            if(!_loc29_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr787:
                                                            if(_loc28_ || param3)
                                                            {
                                                               _loc24_ = §§pop();
                                                               addr753:
                                                               if(!(_loc29_ && b2Distance))
                                                               {
                                                                  addr720:
                                                                  §§push(param1.§<"1§);
                                                                  if(_loc28_)
                                                                  {
                                                                     addr731:
                                                                     §§push(_loc23_);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop() + _loc24_);
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        addr733:
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§pop();
                                                                           addr736:
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(param1.§<"1§);
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(§§pop() > Number.MIN_VALUE);
                                                                                 if(_loc28_ || param2)
                                                                                 {
                                                                                    if(!(_loc29_ && b2Distance))
                                                                                    {
                                                                                       addr671:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc28_ || param1)
                                                                                          {
                                                                                             if(_loc28_ || b2Distance)
                                                                                             {
                                                                                                if(!(_loc29_ && param3))
                                                                                                {
                                                                                                   addr694:
                                                                                                   §§push(param1);
                                                                                                   §§push(param1.§<"1§);
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc23_);
                                                                                                      if(!(_loc29_ && b2Distance))
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc24_);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                   }
                                                                                                   §§pop().§<"1§ = §§pop();
                                                                                                   addr716:
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr720);
                                                                                                      }
                                                                                                      (_loc25_ = b2Math.§9N§(param1.§>^§,param1.§%" §)).Normalize();
                                                                                                      if(!(_loc29_ && b2Distance))
                                                                                                      {
                                                                                                         addr971:
                                                                                                         param1.§%" §.x += _loc23_ * _loc25_.x;
                                                                                                         addr972:
                                                                                                         addr970:
                                                                                                         addr969:
                                                                                                         addr967:
                                                                                                         addr966:
                                                                                                         addr965:
                                                                                                         §§push(param1.§%" §);
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            §§push(param1.§%" §);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc29_ && param3))
                                                                                                               {
                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                  {
                                                                                                                     §§push(_loc23_);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        if(!(_loc29_ && param3))
                                                                                                                        {
                                                                                                                           §§push(_loc25_.y);
                                                                                                                           if(!(_loc29_ && b2Distance))
                                                                                                                           {
                                                                                                                              addr949:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 addr952:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc29_ && param3))
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr888:
                                                                                                                                    addr901:
                                                                                                                                    addr900:
                                                                                                                                    addr894:
                                                                                                                                    addr893:
                                                                                                                                    addr891:
                                                                                                                                    §§push(param1.§>^§);
                                                                                                                                    §§push(param1.§>^§.x);
                                                                                                                                    §§push(_loc24_);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       addr899:
                                                                                                                                       §§push(§§pop() * _loc25_.x);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop() - §§pop();
                                                                                                                                    if(!_loc29_)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§>^§);
                                                                                                                                       if(!_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§>^§);
                                                                                                                                          if(!(_loc29_ && b2Distance))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc29_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc25_.y);
                                                                                                                                                      if(!(_loc29_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr871:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr874:
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!_loc29_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               if(!_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc29_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr888);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1124);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr972);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr888);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr901);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr900);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr899);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr871);
                                                                                                                                                }
                                                                                                                                                §§goto(addr894);
                                                                                                                                             }
                                                                                                                                             §§goto(addr874);
                                                                                                                                          }
                                                                                                                                          §§goto(addr893);
                                                                                                                                       }
                                                                                                                                       §§goto(addr891);
                                                                                                                                    }
                                                                                                                                    addr960:
                                                                                                                                    §§goto(addr960);
                                                                                                                                 }
                                                                                                                                 §§goto(addr971);
                                                                                                                              }
                                                                                                                              §§goto(addr970);
                                                                                                                           }
                                                                                                                           §§goto(addr969);
                                                                                                                        }
                                                                                                                        §§goto(addr967);
                                                                                                                     }
                                                                                                                     §§goto(addr949);
                                                                                                                  }
                                                                                                                  §§goto(addr966);
                                                                                                               }
                                                                                                               §§goto(addr952);
                                                                                                            }
                                                                                                            §§goto(addr965);
                                                                                                         }
                                                                                                         addr963:
                                                                                                         §§goto(addr963);
                                                                                                      }
                                                                                                      §§goto(addr888);
                                                                                                   }
                                                                                                   §§goto(addr808);
                                                                                                }
                                                                                                §§goto(addr753);
                                                                                             }
                                                                                             §§goto(addr736);
                                                                                          }
                                                                                          §§goto(addr716);
                                                                                       }
                                                                                       §§push(_loc18_ = new b2Vec2());
                                                                                       §§push(0.5);
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                          §§push(param1.§%" §.x);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(§§pop() + param1.§>^§.x);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          §§push(_loc18_);
                                                                                          §§push(0.5);
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             §§push(param1.§%" §.y);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(§§pop() + param1.§>^§.y);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          if(!(_loc29_ && b2Distance))
                                                                                          {
                                                                                             addr1022:
                                                                                             §§push(param1.§%" §);
                                                                                             if(_loc28_ || param1)
                                                                                             {
                                                                                                §§push(param1.§>^§);
                                                                                                if(_loc28_ || b2Distance)
                                                                                                {
                                                                                                   §§push(_loc18_.x);
                                                                                                   if(_loc28_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc28_ || param1)
                                                                                                      {
                                                                                                         _loc26_ = §§pop();
                                                                                                         if(_loc28_ || param2)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            if(_loc28_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc26_);
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     if(!(_loc29_ && param1))
                                                                                                                     {
                                                                                                                        addr1110:
                                                                                                                        param1.§>^§.y = _loc26_ = _loc18_.y;
                                                                                                                        addr1112:
                                                                                                                        §§push(param1.§%" §);
                                                                                                                        §§push(_loc26_);
                                                                                                                     }
                                                                                                                     §§goto(addr1124);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  if(!(_loc29_ && b2Distance))
                                                                                                                  {
                                                                                                                     addr1121:
                                                                                                                     param1.§<"1§ = 0;
                                                                                                                  }
                                                                                                                  §§goto(addr1124);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1112);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1110);
                                                                                          }
                                                                                          §§goto(addr1121);
                                                                                       }
                                                                                       §§goto(addr1022);
                                                                                    }
                                                                                    §§goto(addr731);
                                                                                 }
                                                                                 §§goto(addr733);
                                                                              }
                                                                              §§goto(addr720);
                                                                           }
                                                                           §§goto(addr787);
                                                                        }
                                                                        §§goto(addr764);
                                                                     }
                                                                     §§goto(addr671);
                                                                  }
                                                                  §§goto(addr745);
                                                                  addr760:
                                                               }
                                                               §§goto(addr815);
                                                            }
                                                            §§goto(addr786);
                                                         }
                                                         §§goto(addr797);
                                                      }
                                                      §§goto(addr792);
                                                   }
                                                   §§goto(addr786);
                                                }
                                             }
                                             continue;
                                             addr1124:
                                             return;
                                          }
                                          _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          if(!_loc29_)
                                          {
                                             _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                             if(_loc28_)
                                             {
                                                _loc17_++;
                                                §§goto(addr177);
                                             }
                                             else
                                             {
                                                addr331:
                                                §§goto(addr635);
                                             }
                                          }
                                          §§goto(addr786);
                                       }
                                       break;
                                    }
                                    addr320:
                                    §§push(3);
                                    if(!(_loc28_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc28_)
                                       {
                                          §§goto(addr331);
                                       }
                                       §§goto(addr808);
                                    }
                                    else
                                    {
                                       §§push((_loc18_ = _loc8_.§;"M§()).§03§());
                                       if(_loc28_ || b2Distance)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc29_)
                                          {
                                             addr348:
                                             §§push(§§pop());
                                             if(_loc28_ || param2)
                                             {
                                                _loc16_ = §§pop();
                                                addr377:
                                                if(!(_loc29_ && param1))
                                                {
                                                   §§push(_loc15_);
                                                }
                                                _loc15_ = §§pop();
                                                if((_loc20_ = _loc8_.§5"'§()).§03§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                {
                                                   §§goto(addr635);
                                                }
                                                else
                                                {
                                                   (_loc21_ = _loc9_[_loc8_.§=!4§]).indexA = _loc4_.§;"L§(b2Math.§60§(_loc6_.R,_loc20_.§9l§()));
                                                   if(!_loc29_)
                                                   {
                                                      _loc21_.§["L§ = b2Math.§^T§(_loc6_,_loc4_.§,"-§(_loc21_.indexA));
                                                      if(_loc28_)
                                                      {
                                                         _loc21_.indexB = _loc5_.§;"L§(b2Math.§60§(_loc7_.R,_loc20_));
                                                         _loc21_.§9!U§ = b2Math.§^T§(_loc7_,_loc5_.§,"-§(_loc21_.indexB));
                                                         addr458:
                                                         if(_loc28_ || param3)
                                                         {
                                                            addr418:
                                                            _loc21_.§&!t§ = b2Math.§9N§(_loc21_.§9!U§,_loc21_.§["L§);
                                                            if(!_loc29_)
                                                            {
                                                               _loc19_++;
                                                               if(!_loc29_)
                                                               {
                                                                  if(!_loc29_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr418);
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
                                                                     if(!_loc29_)
                                                                     {
                                                                        addr588:
                                                                        _loc22_ = false;
                                                                        addr585:
                                                                        _loc17_ = 0;
                                                                        addr586:
                                                                        addr589:
                                                                        if(_loc17_ < _loc13_)
                                                                        {
                                                                           §§push(_loc21_.indexA);
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr577:
                                                                              §§push(§§pop() == _loc11_[_loc17_]);
                                                                              if(§§pop() == _loc11_[_loc17_])
                                                                              {
                                                                                 addr579:
                                                                                 §§pop();
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr511:
                                                                                    §§push(_loc21_.indexB);
                                                                                    if(!(_loc29_ && param2))
                                                                                    {
                                                                                       if(!(_loc29_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() == _loc12_[_loc17_]);
                                                                                          if(_loc28_ || param2)
                                                                                          {
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr541:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr543:
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr548:
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§goto(addr588);
                                                                                                            }
                                                                                                            _loc22_ = §§pop();
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr600:
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push((_loc26_ = _loc8_).§=!4§);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                  }
                                                                                                                  _loc27_ = §§pop();
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     _loc26_.§=!4§ = _loc27_;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               if(_loc29_ && param1)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr609:
                                                                                                               §§goto(addr635);
                                                                                                               addr565:
                                                                                                            }
                                                                                                            §§goto(addr600);
                                                                                                         }
                                                                                                         §§goto(addr579);
                                                                                                      }
                                                                                                      §§goto(addr600);
                                                                                                   }
                                                                                                   §§goto(addr586);
                                                                                                }
                                                                                                _loc17_++;
                                                                                                if(_loc28_ || param1)
                                                                                                {
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr511);
                                                                                                         }
                                                                                                         §§goto(addr588);
                                                                                                      }
                                                                                                      §§goto(addr589);
                                                                                                   }
                                                                                                   §§goto(addr543);
                                                                                                }
                                                                                                §§goto(addr609);
                                                                                             }
                                                                                             §§goto(addr577);
                                                                                          }
                                                                                          §§goto(addr548);
                                                                                       }
                                                                                       §§goto(addr585);
                                                                                    }
                                                                                    §§goto(addr588);
                                                                                    addr582:
                                                                                 }
                                                                                 §§goto(addr609);
                                                                              }
                                                                              §§goto(addr541);
                                                                           }
                                                                           §§goto(addr588);
                                                                        }
                                                                        if(_loc28_ || param2)
                                                                        {
                                                                           §§goto(addr600);
                                                                        }
                                                                        §§goto(addr609);
                                                                     }
                                                                     §§goto(addr600);
                                                                  }
                                                                  §§goto(addr458);
                                                               }
                                                               §§goto(addr582);
                                                            }
                                                            §§goto(addr588);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr565);
                                                }
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc28_ || param2)
                                                {
                                                   addr373:
                                                   §§push(_loc16_);
                                                   if(_loc28_)
                                                   {
                                                      §§goto(addr377);
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr377);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr348);
                                    }
                                 }
                                 §§goto(addr316);
                              }
                           }
                        }
                        §§goto(addr320);
                     }
                     §§goto(addr233);
                  }
               }
            }
         }
      }
   }
}
