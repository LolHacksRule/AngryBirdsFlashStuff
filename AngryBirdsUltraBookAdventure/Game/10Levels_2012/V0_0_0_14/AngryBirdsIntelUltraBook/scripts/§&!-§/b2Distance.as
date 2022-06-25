package §&!-§
{
   import §0!'§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §=!x§:b2Simplex;
      
      private static var §8!c§:Vector.<int>;
      
      private static var §-!M§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!x§ = new b2Simplex();
            while(true)
            {
               §8!c§ = new Vector.<int>(3);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §-!M§ = new Vector.<int>(3);
            if(!(_loc2_ && _loc2_))
            {
               if(!(_loc2_ && _loc2_))
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
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §7U§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         if(!_loc29_)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!(_loc29_ && param2))
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc28_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§5R§;
         var _loc5_:b2DistanceProxy = param3.§0D§;
         var _loc6_:b2Transform = param3.§&!D§;
         var _loc7_:b2Transform = param3.§`]§;
         var _loc8_:b2Simplex;
         (_loc8_ = §=!x§).§5u§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§%§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §8!c§;
         var _loc12_:Vector.<int> = §-!M§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§^!P§()).§!!v§());
         if(!_loc29_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(_loc28_)
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
                     if(_loc28_)
                     {
                        break;
                     }
                     addr777:
                     §§push(_loc5_.§6q§);
                     if(_loc28_ || b2Distance)
                     {
                        addr751:
                        §§push(Number(§§pop()));
                        if(_loc28_ || param3)
                        {
                           _loc24_ = §§pop();
                           addr759:
                           if(_loc28_ || param3)
                           {
                              addr711:
                              §§push(param1.§!!q§);
                              §§push(_loc23_);
                              if(!(_loc29_ && param1))
                              {
                                 §§push(§§pop() + _loc24_);
                              }
                              §§push(§§pop() > §§pop());
                              if(_loc28_)
                              {
                                 if(§§pop())
                                 {
                                    addr729:
                                    §§pop();
                                    addr730:
                                    if(!(_loc29_ && b2Distance))
                                    {
                                       if(!_loc29_)
                                       {
                                          §§push(param1.§!!q§);
                                          if(_loc28_)
                                          {
                                             if(!(_loc29_ && param1))
                                             {
                                                if(!(_loc29_ && param1))
                                                {
                                                   §§push(§§pop() > Number.MIN_VALUE);
                                                   if(_loc28_)
                                                   {
                                                      if(!(_loc29_ && param1))
                                                      {
                                                         addr665:
                                                         if(§§pop())
                                                         {
                                                            if(_loc28_ || param3)
                                                            {
                                                               if(_loc28_)
                                                               {
                                                                  if(!(_loc29_ && b2Distance))
                                                                  {
                                                                     addr683:
                                                                     §§push(param1);
                                                                     §§push(param1.§!!q§);
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(_loc23_);
                                                                        if(_loc28_ || param1)
                                                                        {
                                                                           §§push(§§pop() + _loc24_);
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                     }
                                                                     §§pop().§!!q§ = §§pop();
                                                                     addr700:
                                                                     if(_loc28_ || param1)
                                                                     {
                                                                        if(!_loc29_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr711);
                                                                           }
                                                                           (_loc25_ = b2Math.§>G§(param1.§]!I§,param1.§<!0§)).Normalize();
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr971:
                                                                              addr970:
                                                                              addr959:
                                                                              addr958:
                                                                              addr956:
                                                                              §§push(param1.§<!0§);
                                                                              §§push(param1.§<!0§.x);
                                                                              §§push(_loc23_);
                                                                              if(!(_loc29_ && param3))
                                                                              {
                                                                                 addr969:
                                                                                 §§push(§§pop() * _loc25_.x);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              addr972:
                                                                              §§push(param1.§<!0§);
                                                                              if(!(_loc29_ && param1))
                                                                              {
                                                                                 §§push(param1.§<!0§);
                                                                                 if(!(_loc29_ && param3))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc28_ || param3)
                                                                                    {
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(_loc28_ || param2)
                                                                                          {
                                                                                             §§push(_loc25_.y);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                addr937:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc29_ && param1))
                                                                                                {
                                                                                                   addr945:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc29_ && param2))
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      addr871:
                                                                                                      addr886:
                                                                                                      addr876:
                                                                                                      addr874:
                                                                                                      §§push(param1.§]!I§);
                                                                                                      §§push(param1.§]!I§.x);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         addr885:
                                                                                                         §§push(_loc24_);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            addr884:
                                                                                                            §§push(§§pop() * _loc25_.x);
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      addr953:
                                                                                                      if(!(_loc29_ && param2))
                                                                                                      {
                                                                                                         §§push(param1.§]!I§);
                                                                                                         if(_loc28_ || b2Distance)
                                                                                                         {
                                                                                                            §§push(param1.§]!I§);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  if(_loc28_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc24_);
                                                                                                                     if(!(_loc29_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§push(_loc25_.y);
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              addr859:
                                                                                                                              §§pop().y = §§pop() - §§pop() * §§pop();
                                                                                                                              addr858:
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 if(!(_loc29_ && param2))
                                                                                                                                 {
                                                                                                                                    §§goto(addr869);
                                                                                                                                 }
                                                                                                                                 §§goto(addr953);
                                                                                                                              }
                                                                                                                              §§goto(addr871);
                                                                                                                           }
                                                                                                                           §§goto(addr884);
                                                                                                                        }
                                                                                                                        §§goto(addr885);
                                                                                                                     }
                                                                                                                     §§goto(addr858);
                                                                                                                  }
                                                                                                                  §§goto(addr886);
                                                                                                               }
                                                                                                               §§goto(addr859);
                                                                                                            }
                                                                                                            §§goto(addr876);
                                                                                                         }
                                                                                                         §§goto(addr874);
                                                                                                      }
                                                                                                      §§goto(addr972);
                                                                                                   }
                                                                                                   §§goto(addr971);
                                                                                                }
                                                                                                §§goto(addr970);
                                                                                             }
                                                                                             §§goto(addr969);
                                                                                          }
                                                                                          §§goto(addr937);
                                                                                       }
                                                                                       §§goto(addr959);
                                                                                    }
                                                                                    §§goto(addr945);
                                                                                 }
                                                                                 §§goto(addr958);
                                                                              }
                                                                              §§goto(addr956);
                                                                           }
                                                                           §§goto(addr869);
                                                                        }
                                                                        §§goto(addr777);
                                                                     }
                                                                     §§goto(addr730);
                                                                  }
                                                                  param1.§5!5§ = _loc19_;
                                                                  _loc8_.§=k§(param2);
                                                                  addr787:
                                                                  if(param3.§2!j§)
                                                                  {
                                                                     addr771:
                                                                     if(_loc28_)
                                                                     {
                                                                        addr776:
                                                                        _loc23_ = _loc4_.§6q§;
                                                                        §§goto(addr777);
                                                                     }
                                                                     §§goto(addr787);
                                                                  }
                                                                  addr869:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr871);
                                                                  }
                                                                  return;
                                                                  addr782:
                                                                  addr798:
                                                               }
                                                               §§goto(addr771);
                                                            }
                                                            §§goto(addr700);
                                                         }
                                                         §§push(_loc18_ = new b2Vec2());
                                                         §§push(0.5);
                                                         if(_loc28_ || param2)
                                                         {
                                                            §§push(param1.§<!0§.x);
                                                            if(!_loc29_)
                                                            {
                                                               §§push(§§pop() + param1.§]!I§.x);
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
                                                               §§push(param1.§<!0§.y);
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(§§pop() + param1.§]!I§.y);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§pop().y = §§pop();
                                                            if(_loc28_)
                                                            {
                                                               §§push(param1.§<!0§);
                                                               if(_loc28_ || param3)
                                                               {
                                                                  §§push(param1.§]!I§);
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(_loc18_.x);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc29_)
                                                                        {
                                                                           _loc26_ = §§pop();
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(_loc26_);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    if(_loc28_ || param2)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr1080:
                                                                                          param1.§]!I§.y = _loc26_ = _loc18_.y;
                                                                                          addr1082:
                                                                                          §§push(param1.§<!0§);
                                                                                          §§push(_loc26_);
                                                                                       }
                                                                                       §§goto(addr869);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       addr1086:
                                                                                       param1.§!!q§ = 0;
                                                                                    }
                                                                                    §§goto(addr869);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1082);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1080);
                                                            }
                                                            §§goto(addr1086);
                                                         }
                                                         §§goto(addr869);
                                                      }
                                                      §§goto(addr711);
                                                   }
                                                   §§goto(addr729);
                                                }
                                                §§goto(addr777);
                                             }
                                             §§goto(addr751);
                                          }
                                          §§goto(addr711);
                                       }
                                       §§goto(addr782);
                                    }
                                    §§goto(addr759);
                                 }
                                 §§goto(addr665);
                              }
                              §§goto(addr787);
                           }
                           param1.§!!q§ = b2Math.§>G§(param1.§<!0§,param1.§]!I§).§-l§();
                           §§goto(addr798);
                           addr805:
                        }
                     }
                     §§goto(addr776);
                  }
                  else
                  {
                     §§push(_loc8_.§8Q§);
                     if(_loc28_ || param3)
                     {
                        §§push(int(§§pop()));
                        if(!(_loc29_ && b2Distance))
                        {
                           _loc13_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              if(!(_loc29_ && param1))
                              {
                                 _loc17_ = §§pop();
                                 if(_loc28_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       if(_loc28_)
                                       {
                                          §§push(_loc13_);
                                          if(!_loc28_)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc28_)
                                                {
                                                   §§push(_loc8_.§8Q§);
                                                   if(!(_loc29_ && param1))
                                                   {
                                                      _loc26_ = §§pop();
                                                      if(!_loc29_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc29_)
                                                         {
                                                            §§push(_loc26_);
                                                            if(_loc28_ || param2)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc29_)
                                                                  {
                                                                     addr260:
                                                                     §§push(0);
                                                                     if(!_loc28_)
                                                                     {
                                                                        addr286:
                                                                     }
                                                                     addr305:
                                                                     if(_loc28_ || param1)
                                                                     {
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              addr321:
                                                                              §§push(_loc8_.§8Q§);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              continue loop1;
                                                                           case 1:
                                                                              _loc8_.Solve2();
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr128:
                                                                                 §§goto(addr321);
                                                                              }
                                                                              break;
                                                                           case 2:
                                                                              _loc8_.Solve3();
                                                                              if(!(_loc28_ || param2))
                                                                              {
                                                                                 §§goto(addr787);
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           default:
                                                                              b2Settings.b2Assert(false);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr128);
                                                                                 }
                                                                              }
                                                                              §§goto(addr321);
                                                                        }
                                                                        §§goto(addr787);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr278:
                                                                  §§push(1);
                                                                  if(!(_loc29_ && param3))
                                                                  {
                                                                     §§goto(addr286);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr300:
                                                                  }
                                                                  §§goto(addr305);
                                                                  §§goto(addr286);
                                                               }
                                                               else
                                                               {
                                                                  §§push(2);
                                                                  if(_loc28_ || param1)
                                                                  {
                                                                     §§push(_loc26_);
                                                                     if(_loc28_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc28_)
                                                                           {
                                                                              §§goto(addr278);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr292:
                                                                              §§push(2);
                                                                              if(!(_loc29_ && param3))
                                                                              {
                                                                                 §§goto(addr300);
                                                                              }
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
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             addr325:
                                             §§push(3);
                                             if(!_loc28_)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc29_)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr787);
                                             }
                                             else
                                             {
                                                §§push((_loc18_ = _loc8_.§^!P§()).§!!v§());
                                                if(_loc28_ || b2Distance)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc29_ && param1))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc28_)
                                                      {
                                                         _loc16_ = §§pop();
                                                         if(!_loc29_)
                                                         {
                                                            addr360:
                                                            if(§§pop() > _loc15_)
                                                            {
                                                               if(_loc28_ || param2)
                                                               {
                                                                  addr368:
                                                                  §§push(_loc16_);
                                                                  if(!(_loc29_ && b2Distance))
                                                                  {
                                                                     addr377:
                                                                     _loc15_ = Number(§§pop());
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               if((_loc20_ = _loc8_.§?H§()).§!!v§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                               {
                                                                  break loop2;
                                                               }
                                                               (_loc21_ = _loc9_[_loc8_.§8Q§]).indexA = _loc4_.§3a§(b2Math.§`m§(_loc6_.R,_loc20_.§2!'§()));
                                                               if(_loc28_ || param1)
                                                               {
                                                                  _loc21_.§7!C§ = b2Math.§,^§(_loc6_,_loc4_.§#I§(_loc21_.indexA));
                                                                  if(_loc28_)
                                                                  {
                                                                     _loc21_.indexB = _loc5_.§3a§(b2Math.§`m§(_loc7_.R,_loc20_));
                                                                     if(!_loc29_)
                                                                     {
                                                                        _loc21_.§>!c§ = b2Math.§,^§(_loc7_,_loc5_.§#I§(_loc21_.indexB));
                                                                        addr421:
                                                                        _loc21_.§"S§ = b2Math.§>G§(_loc21_.§>!c§,_loc21_.§7!C§);
                                                                        addr450:
                                                                        if(!_loc29_)
                                                                        {
                                                                           if(_loc28_ || param2)
                                                                           {
                                                                              _loc19_++;
                                                                              if(_loc28_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                 if(_loc28_ || b2Distance)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                                 _loc27_ = §§pop();
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    _loc26_.b2_gjkIters = _loc27_;
                                                                                 }
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr583:
                                                                                    _loc22_ = false;
                                                                                    addr584:
                                                                                    §§push(0);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       _loc17_ = §§pop();
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr585:
                                                                                          if(_loc17_ < _loc13_)
                                                                                          {
                                                                                             addr561:
                                                                                             §§push(_loc21_.indexA == _loc11_[_loc17_]);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr565:
                                                                                                   §§pop();
                                                                                                   if(_loc29_ && b2Distance)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr509:
                                                                                                   §§push(_loc21_.indexB);
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               addr524:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§push(true);
                                                                                                                  if(_loc28_ || param1)
                                                                                                                  {
                                                                                                                     addr546:
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        _loc22_ = §§pop();
                                                                                                                        addr549:
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           §§goto(addr584);
                                                                                                                        }
                                                                                                                        addr591:
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              addr594:
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push((_loc26_ = _loc8_).§8Q§);
                                                                                                                           if(_loc28_ || b2Distance)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                           }
                                                                                                                           _loc27_ = §§pop();
                                                                                                                           if(_loc28_ || b2Distance)
                                                                                                                           {
                                                                                                                              _loc26_.§8Q§ = _loc27_;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                        addr551:
                                                                                                                     }
                                                                                                                     §§goto(addr561);
                                                                                                                  }
                                                                                                                  §§goto(addr591);
                                                                                                               }
                                                                                                               _loc17_++;
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  if(!_loc29_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr509);
                                                                                                                     }
                                                                                                                     §§goto(addr585);
                                                                                                                  }
                                                                                                                  §§goto(addr549);
                                                                                                               }
                                                                                                               §§goto(addr594);
                                                                                                            }
                                                                                                            §§goto(addr565);
                                                                                                         }
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr585);
                                                                                                   addr573:
                                                                                                }
                                                                                                §§goto(addr524);
                                                                                             }
                                                                                             §§goto(addr583);
                                                                                          }
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§goto(addr549);
                                                                                          }
                                                                                          addr581:
                                                                                       }
                                                                                       §§goto(addr594);
                                                                                    }
                                                                                    §§goto(addr585);
                                                                                 }
                                                                                 §§goto(addr581);
                                                                              }
                                                                              §§goto(addr573);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        §§goto(addr551);
                                                                     }
                                                                     §§goto(addr583);
                                                                     addr475:
                                                                  }
                                                                  §§goto(addr509);
                                                               }
                                                               §§goto(addr475);
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                }
                                                §§goto(addr377);
                                             }
                                          }
                                          else
                                          {
                                             _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                             if(_loc28_)
                                             {
                                                _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                if(!(_loc29_ && param2))
                                                {
                                                   _loc17_++;
                                                   continue;
                                                }
                                                §§goto(addr683);
                                             }
                                             §§goto(addr787);
                                          }
                                          §§goto(addr787);
                                       }
                                       §§goto(addr325);
                                    }
                                 }
                                 §§goto(addr776);
                              }
                           }
                        }
                     }
                     §§goto(addr325);
                  }
               }
               b2_gjkMaxIters = b2Math.§ 9§(b2_gjkMaxIters,_loc19_);
               if(_loc28_)
               {
                  _loc8_.§]!5§(param1.§<!0§,param1.§]!I§);
                  §§goto(addr805);
               }
               §§goto(addr683);
            }
         }
      }
   }
}
