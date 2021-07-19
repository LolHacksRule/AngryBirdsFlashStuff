package §3c§
{
   import §,Z§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §`g§:b2Simplex;
      
      private static var §;!_§:Vector.<int>;
      
      private static var §]%§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §`g§ = new b2Simplex();
            while(true)
            {
               §;!_§ = new Vector.<int>(3);
               loop1:
               while(_loc1_ || b2Distance)
               {
                  while(true)
                  {
                     §]%§ = new Vector.<int>(3);
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
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
      
      public static function §!!z§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Vec2 = null;
         if(!(_loc29_ && param3))
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!(_loc29_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!(_loc29_ && param1))
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§3">§;
         var _loc5_:b2DistanceProxy = param3.§&!"§;
         var _loc6_:b2Transform = param3.§>"0§;
         var _loc7_:b2Transform = param3.§#_§;
         var _loc8_:b2Simplex;
         (_loc8_ = §`g§).§0!`§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§8S§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §;!_§;
         var _loc12_:Vector.<int> = §]%§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§3k§()).§"z§());
         if(!(_loc29_ && param1))
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
            loop1:
            while(true)
            {
               §§push(_loc10_);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc29_)
                     {
                        break;
                     }
                     param1.§23§ = _loc19_;
                     _loc8_.§8"!§(param2);
                     addr823:
                     addr812:
                     if(!_loc29_)
                     {
                        addr795:
                        if(param3.§'!g§)
                        {
                           addr799:
                           _loc23_ = _loc4_.§7!m§;
                           §§push(_loc5_.§7!m§);
                           if(_loc28_ || b2Distance)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr796:
                           addr800:
                           if(!_loc29_)
                           {
                              _loc24_ = §§pop();
                              addr732:
                              §§push(param1.§]1§);
                              §§push(_loc23_);
                              if(!_loc29_)
                              {
                                 §§push(§§pop() + _loc24_);
                              }
                              addr791:
                              §§push(§§pop() > §§pop());
                              if(_loc28_ || b2Distance)
                              {
                                 if(§§pop())
                                 {
                                    addr750:
                                    §§pop();
                                    addr751:
                                    if(_loc28_ || param3)
                                    {
                                       if(_loc28_ || param2)
                                       {
                                          if(!_loc29_)
                                          {
                                             if(!_loc29_)
                                             {
                                                if(_loc28_ || b2Distance)
                                                {
                                                   §§push(param1.§]1§);
                                                   if(_loc28_ || b2Distance)
                                                   {
                                                      if(_loc28_)
                                                      {
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() > Number.MIN_VALUE);
                                                            if(_loc28_)
                                                            {
                                                               if(!(_loc29_ && b2Distance))
                                                               {
                                                                  addr700:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc28_)
                                                                     {
                                                                        if(!(_loc29_ && param2))
                                                                        {
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr713:
                                                                              §§push(param1);
                                                                              §§push(param1.§]1§);
                                                                              if(!(_loc29_ && param1))
                                                                              {
                                                                                 §§push(_loc23_);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc24_);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              §§pop().§]1§ = §§pop();
                                                                              addr730:
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr732);
                                                                              }
                                                                              (_loc25_ = b2Math.§,!`§(param1.§8m§,param1.§ !&§)).Normalize();
                                                                              if(_loc28_ || param2)
                                                                              {
                                                                                 addr1016:
                                                                                 addr1003:
                                                                                 addr1001:
                                                                                 §§push(param1.§ !&§);
                                                                                 §§push(param1.§ !&§.x);
                                                                                 if(_loc28_ || param1)
                                                                                 {
                                                                                    addr1015:
                                                                                    §§push(§§pop() + _loc23_ * _loc25_.x);
                                                                                 }
                                                                                 §§pop().x = §§pop();
                                                                                 addr1017:
                                                                                 §§push(param1.§ !&§);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(param1.§ !&§);
                                                                                    if(!(_loc29_ && param3))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc28_ || b2Distance)
                                                                                       {
                                                                                          if(!(_loc29_ && b2Distance))
                                                                                          {
                                                                                             §§push(_loc23_);
                                                                                             if(!(_loc29_ && param1))
                                                                                             {
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§push(_loc25_.y);
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      addr994:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         addr997:
                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                         addr911:
                                                                                                         addr929:
                                                                                                         addr916:
                                                                                                         addr914:
                                                                                                         §§push(param1.§8m§);
                                                                                                         §§push(param1.§8m§.x);
                                                                                                         if(!(_loc29_ && param2))
                                                                                                         {
                                                                                                            addr925:
                                                                                                            §§push(§§pop() - _loc24_ * _loc25_.x);
                                                                                                         }
                                                                                                         §§pop().x = §§pop();
                                                                                                         if(!(_loc29_ && param1))
                                                                                                         {
                                                                                                            if(_loc28_ || param2)
                                                                                                            {
                                                                                                               §§push(param1.§8m§);
                                                                                                               if(_loc28_ || param3)
                                                                                                               {
                                                                                                                  §§push(param1.§8m§);
                                                                                                                  if(!(_loc29_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!(_loc29_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc28_ || param3)
                                                                                                                        {
                                                                                                                           §§push(_loc24_);
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              §§push(_loc25_.y);
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 addr891:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc29_ && param1))
                                                                                                                                    {
                                                                                                                                       addr901:
                                                                                                                                       §§pop().y = §§pop() - §§pop();
                                                                                                                                       if(!(_loc29_ && b2Distance))
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr911);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1149);
                                                                                                                                       }
                                                                                                                                       §§goto(addr911);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr925);
                                                                                                                           }
                                                                                                                           §§goto(addr891);
                                                                                                                        }
                                                                                                                        §§goto(addr929);
                                                                                                                     }
                                                                                                                     §§goto(addr901);
                                                                                                                  }
                                                                                                                  §§goto(addr916);
                                                                                                               }
                                                                                                               §§goto(addr914);
                                                                                                            }
                                                                                                            §§goto(addr1017);
                                                                                                         }
                                                                                                         addr998:
                                                                                                         §§goto(addr998);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1015);
                                                                                             }
                                                                                             §§goto(addr994);
                                                                                          }
                                                                                          §§goto(addr1016);
                                                                                       }
                                                                                       §§goto(addr997);
                                                                                    }
                                                                                    §§goto(addr1003);
                                                                                 }
                                                                                 §§goto(addr1001);
                                                                              }
                                                                              §§goto(addr997);
                                                                           }
                                                                           param1.§]1§ = b2Math.§,!`§(param1.§ !&§,param1.§8m§).§2+§();
                                                                           §§goto(addr823);
                                                                           addr830:
                                                                        }
                                                                        §§goto(addr751);
                                                                     }
                                                                     §§goto(addr730);
                                                                  }
                                                                  §§push(_loc18_ = new b2Vec2());
                                                                  §§push(0.5);
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(param1.§ !&§.x);
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(§§pop() + param1.§8m§.x);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     §§push(_loc18_);
                                                                     §§push(0.5);
                                                                     if(!(_loc29_ && param2))
                                                                     {
                                                                        §§push(param1.§ !&§.y);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(§§pop() + param1.§8m§.y);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(param1.§ !&§);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(param1.§8m§);
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(_loc18_.x);
                                                                              if(!(_loc29_ && b2Distance))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc28_ || param2)
                                                                                 {
                                                                                    _loc26_ = §§pop();
                                                                                    if(!(_loc29_ && param1))
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       if(_loc28_ || param3)
                                                                                       {
                                                                                          §§push(_loc26_);
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                if(!(_loc29_ && param2))
                                                                                                {
                                                                                                   addr1130:
                                                                                                   param1.§8m§.y = _loc26_ = _loc18_.y;
                                                                                                   addr1143:
                                                                                                   param1.§ !&§.y = _loc26_;
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr1149);
                                                                                                }
                                                                                                param1.§]1§ = 0;
                                                                                                §§goto(addr1149);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1143);
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
                                                               §§goto(addr795);
                                                            }
                                                            §§goto(addr750);
                                                         }
                                                      }
                                                      §§goto(addr799);
                                                   }
                                                   §§goto(addr732);
                                                }
                                                §§goto(addr812);
                                             }
                                             §§goto(addr823);
                                          }
                                          §§goto(addr796);
                                       }
                                       §§goto(addr800);
                                    }
                                    §§goto(addr791);
                                 }
                                 §§goto(addr700);
                              }
                              §§goto(addr750);
                           }
                           addr798:
                           §§goto(addr798);
                        }
                        addr1149:
                        return;
                        addr807:
                     }
                     §§goto(addr823);
                  }
                  else
                  {
                     §§push(_loc8_.§@5§);
                     if(!_loc29_)
                     {
                        §§push(int(§§pop()));
                        if(!(_loc29_ && param2))
                        {
                           _loc13_ = §§pop();
                           if(!_loc29_)
                           {
                              §§push(0);
                              if(!_loc29_)
                              {
                                 _loc17_ = §§pop();
                                 if(_loc29_)
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(!_loc28_)
                                    {
                                       break;
                                    }
                                    §§push(_loc13_);
                                    if(!_loc29_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc29_)
                                          {
                                             §§push(_loc8_.§@5§);
                                             if(_loc28_)
                                             {
                                                addr243:
                                                _loc26_ = §§pop();
                                                if(!_loc29_)
                                                {
                                                   §§push(1);
                                                   if(!(_loc29_ && param2))
                                                   {
                                                      §§push(_loc26_);
                                                      if(_loc28_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc28_)
                                                            {
                                                               §§push(0);
                                                               if(_loc29_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr297:
                                                               §§push(2);
                                                               if(_loc28_)
                                                               {
                                                                  addr300:
                                                               }
                                                            }
                                                            addr305:
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               addr313:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     addr321:
                                                                     §§push(_loc8_.§@5§);
                                                                     if(!_loc28_)
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     addr325:
                                                                     §§push(3);
                                                                     if(_loc28_)
                                                                     {
                                                                        addr328:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!(_loc29_ && b2Distance))
                                                                           {
                                                                              addr336:
                                                                              break loop2;
                                                                           }
                                                                           §§goto(addr799);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push((_loc18_ = _loc8_.§3k§()).§"z§());
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc29_ && param1))
                                                                                 {
                                                                                    _loc16_ = §§pop();
                                                                                    addr367:
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                    }
                                                                                    _loc15_ = §§pop();
                                                                                    if((_loc20_ = _loc8_.§5o§()).§"z§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    (_loc21_ = _loc9_[_loc8_.§@5§]).indexA = _loc4_.§>!S§(b2Math.§7!`§(_loc6_.R,_loc20_.§2!D§()));
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       _loc21_.§,"#§ = b2Math.§=&§(_loc6_,_loc4_.§=m§(_loc21_.indexA));
                                                                                       if(!(_loc28_ || param2))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       _loc21_.indexB = _loc5_.§>!S§(b2Math.§7!`§(_loc7_.R,_loc20_));
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          _loc21_.§?!Q§ = b2Math.§=&§(_loc7_,_loc5_.§=m§(_loc21_.indexB));
                                                                                          if(_loc28_ || param2)
                                                                                          {
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc21_.w = b2Math.§,!`§(_loc21_.§?!Q§,_loc21_.§,"#§);
                                                                                                if(_loc29_ && b2Distance)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                _loc19_++;
                                                                                                if(_loc28_ || param1)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                                   if(!(_loc29_ && param2))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   _loc27_ = §§pop();
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      _loc26_.b2_gjkIters = _loc27_;
                                                                                                   }
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(false);
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      loop6:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!(_loc29_ && param2))
                                                                                                         {
                                                                                                            _loc17_ = §§pop();
                                                                                                            if(_loc28_ || param3)
                                                                                                            {
                                                                                                               if(_loc29_ && param1)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc17_);
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                            }
                                                                                                            addr634:
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= _loc13_)
                                                                                                         {
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr634);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc21_.indexA);
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == _loc11_[_loc17_]);
                                                                                                               addr586:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc28_ || b2Distance)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr524:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc21_.indexB);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           addr515:
                                                                                                                           continue loop5;
                                                                                                                           if(_loc29_ && b2Distance)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr524);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr625);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              break loop4;
                                                                                                                           }
                                                                                                                           §§push(true);
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              addr563:
                                                                                                                              _loc22_ = §§pop();
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                                 addr576:
                                                                                                                              }
                                                                                                                              §§goto(addr634);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc17_++;
                                                                                                                           if(_loc29_ && param1)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr515);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr630:
                                                                                                                     §§push(_loc22_);
                                                                                                                     addr556:
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push((_loc26_ = _loc8_).§@5§);
                                                                                                                     if(!(_loc29_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                     }
                                                                                                                     _loc27_ = §§pop();
                                                                                                                     if(!_loc29_)
                                                                                                                     {
                                                                                                                        _loc26_.§@5§ = _loc27_;
                                                                                                                     }
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr634);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr630);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr634);
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr458:
                                                                                       }
                                                                                       §§goto(addr576);
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr363:
                                                                                       §§push(_loc16_);
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          addr366:
                                                                                          §§goto(addr367);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  case 1:
                                                                     _loc8_.Solve2();
                                                                     if(!_loc29_)
                                                                     {
                                                                        addr146:
                                                                        §§goto(addr321);
                                                                     }
                                                                     break;
                                                                  case 2:
                                                                     _loc8_.Solve3();
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§goto(addr321);
                                                                     }
                                                                     break;
                                                                  default:
                                                                     b2Settings.b2Assert(false);
                                                                     if(_loc28_ || param1)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr146);
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     §§goto(addr336);
                                                               }
                                                               §§goto(addr713);
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         else
                                                         {
                                                            §§push(2);
                                                            if(_loc28_)
                                                            {
                                                               §§push(_loc26_);
                                                               if(!(_loc29_ && param2))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc28_ || param3)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc29_)
                                                                        {
                                                                           §§goto(addr300);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(3);
                                                                     if(!(_loc29_ && b2Distance))
                                                                     {
                                                                        addr295:
                                                                        if(§§pop() === _loc26_)
                                                                        {
                                                                           §§goto(addr297);
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
                                                            §§goto(addr295);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr295);
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr325);
                                          }
                                          _loc8_.§;k§(param1.§ !&§,param1.§8m§);
                                          addr673:
                                          §§goto(addr830);
                                          addr673:
                                       }
                                       else
                                       {
                                          _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          if(_loc28_)
                                          {
                                             _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                             if(!(_loc28_ || b2Distance))
                                             {
                                                break loop2;
                                             }
                                             _loc17_++;
                                             if(_loc28_ || param1)
                                             {
                                                continue;
                                             }
                                             §§goto(addr713);
                                          }
                                          §§goto(addr673);
                                       }
                                       §§goto(addr673);
                                    }
                                    §§goto(addr328);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr313);
                           }
                           §§goto(addr673);
                        }
                     }
                     §§goto(addr243);
                  }
               }
               b2_gjkMaxIters = b2Math.§'!i§(b2_gjkMaxIters,_loc19_);
               if(_loc28_ || b2Distance)
               {
                  §§goto(addr673);
               }
               §§goto(addr807);
            }
         }
      }
   }
}
