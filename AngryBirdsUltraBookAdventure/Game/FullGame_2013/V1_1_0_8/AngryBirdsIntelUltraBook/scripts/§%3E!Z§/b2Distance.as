package §>!Z§
{
   import §&H§.*;
   import §3b§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §>!!§:b2Simplex;
      
      private static var §3g§:Vector.<int>;
      
      private static var §<!f§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>!!§ = new b2Simplex();
            while(true)
            {
               §3g§ = new Vector.<int>(3);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §<!f§ = new Vector.<int>(3);
            if(_loc1_ || b2Distance)
            {
               if(_loc1_)
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
      
      public static function §65§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
            if(_loc29_ || param1)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§,N§;
         var _loc5_:b2DistanceProxy = param3.§#y§;
         var _loc6_:b2Transform = param3.§ !f§;
         var _loc7_:b2Transform = param3.§!@§;
         var _loc8_:b2Simplex;
         (_loc8_ = §>!!§).§@!i§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§0!k§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §3g§;
         var _loc12_:Vector.<int> = §<!f§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§`!'§()).§%!]§());
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(_loc29_ || param2)
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
                  §§push(_loc8_.§;!4§);
                  if(!_loc28_)
                  {
                     §§push(int(§§pop()));
                     if(_loc29_)
                     {
                        _loc13_ = §§pop();
                        if(!_loc28_)
                        {
                           §§push(0);
                           if(_loc29_ || param1)
                           {
                              _loc17_ = §§pop();
                              if(_loc29_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(_loc29_ || b2Distance)
                                    {
                                       §§push(_loc13_);
                                       if(_loc29_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc29_)
                                             {
                                                §§push(_loc8_.§;!4§);
                                                if(!(_loc28_ && param1))
                                                {
                                                   break;
                                                }
                                                addr326:
                                                §§push(3);
                                                if(!(_loc29_ || param1))
                                                {
                                                   continue loop2;
                                                }
                                                addr334:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      addr666:
                                                      b2_gjkMaxIters = b2Math.§&h§(b2_gjkMaxIters,_loc19_);
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         _loc8_.§-7§(param1.§3!O§,param1.§"!"§);
                                                         param1.§>!_§ = b2Math.§%M§(param1.§3!O§,param1.§"!"§).§,!t§();
                                                         param1.§0!r§ = _loc19_;
                                                         addr839:
                                                         addr846:
                                                         addr679:
                                                      }
                                                      addr787:
                                                      §§push(param1.§>!_§);
                                                      if(_loc29_)
                                                      {
                                                         if(_loc29_ || param2)
                                                         {
                                                            if(!_loc28_)
                                                            {
                                                               if(_loc29_)
                                                               {
                                                                  §§push(§§pop() > Number.MIN_VALUE);
                                                                  if(_loc29_ || param1)
                                                                  {
                                                                     if(_loc29_ || param1)
                                                                     {
                                                                        addr713:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc29_ || param1)
                                                                           {
                                                                              if(_loc29_ || param1)
                                                                              {
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    §§push(param1.§>!_§);
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(_loc23_);
                                                                                       if(!(_loc28_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + _loc24_);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                    §§pop().§>!_§ = §§pop();
                                                                                    addr748:
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       if(_loc29_ || b2Distance)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             addr759:
                                                                                             §§push(param1.§>!_§);
                                                                                             §§push(_loc23_);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc24_);
                                                                                             }
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr777:
                                                                                                   §§pop();
                                                                                                   if(!(_loc28_ && param2))
                                                                                                   {
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         §§goto(addr787);
                                                                                                      }
                                                                                                      addr800:
                                                                                                      if(_loc29_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc4_.§ !c§);
                                                                                                         if(!(_loc28_ && param2))
                                                                                                         {
                                                                                                            addr817:
                                                                                                            _loc23_ = §§pop();
                                                                                                            addr792:
                                                                                                            _loc24_ = _loc5_.§ !c§;
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§goto(addr759);
                                                                                                            }
                                                                                                            addr818:
                                                                                                            §§goto(addr818);
                                                                                                            addr791:
                                                                                                         }
                                                                                                         §§goto(addr817);
                                                                                                      }
                                                                                                      §§goto(addr839);
                                                                                                   }
                                                                                                   §§goto(addr817);
                                                                                                }
                                                                                                §§goto(addr713);
                                                                                             }
                                                                                             §§goto(addr777);
                                                                                          }
                                                                                          (_loc25_ = b2Math.§%M§(param1.§"!"§,param1.§3!O§)).Normalize();
                                                                                          if(_loc29_ || param3)
                                                                                          {
                                                                                             addr1017:
                                                                                             addr1009:
                                                                                             addr1007:
                                                                                             §§push(param1.§3!O§);
                                                                                             §§push(param1.§3!O§.x);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                addr1013:
                                                                                                §§push(§§pop() + _loc23_ * _loc25_.x);
                                                                                             }
                                                                                             §§pop().x = §§pop();
                                                                                             addr1018:
                                                                                             §§push(param1.§3!O§);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(param1.§3!O§);
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(_loc23_);
                                                                                                      if(!(_loc28_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc25_.y);
                                                                                                         if(!(_loc28_ && param3))
                                                                                                         {
                                                                                                            addr986:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               if(_loc29_ || param2)
                                                                                                               {
                                                                                                                  addr996:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc29_ || param3)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     addr945:
                                                                                                                     param1.§"!"§.x -= _loc24_ * _loc25_.x;
                                                                                                                     addr934:
                                                                                                                     addr941:
                                                                                                                     addr944:
                                                                                                                     addr943:
                                                                                                                     addr940:
                                                                                                                     addr939:
                                                                                                                     addr937:
                                                                                                                     if(!(_loc28_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           §§push(param1.§"!"§);
                                                                                                                           if(_loc29_ || param1)
                                                                                                                           {
                                                                                                                              §§push(param1.§"!"§);
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(_loc29_ || b2Distance)
                                                                                                                                 {
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc28_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(_loc24_);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc25_.y);
                                                                                                                                             if(!(_loc28_ && b2Distance))
                                                                                                                                             {
                                                                                                                                                addr909:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc29_ || b2Distance)
                                                                                                                                                {
                                                                                                                                                   if(_loc29_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr924:
                                                                                                                                                      §§pop().y = §§pop() - §§pop();
                                                                                                                                                      if(!(_loc28_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr932);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr934);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr941);
                                                                                                                                                }
                                                                                                                                                §§goto(addr944);
                                                                                                                                             }
                                                                                                                                             §§goto(addr943);
                                                                                                                                          }
                                                                                                                                          §§goto(addr909);
                                                                                                                                       }
                                                                                                                                       §§goto(addr940);
                                                                                                                                    }
                                                                                                                                    §§goto(addr945);
                                                                                                                                 }
                                                                                                                                 §§goto(addr924);
                                                                                                                              }
                                                                                                                              §§goto(addr939);
                                                                                                                           }
                                                                                                                           §§goto(addr937);
                                                                                                                        }
                                                                                                                        §§goto(addr1018);
                                                                                                                     }
                                                                                                                     addr1004:
                                                                                                                     §§goto(addr1004);
                                                                                                                  }
                                                                                                                  §§goto(addr1017);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1013);
                                                                                                      }
                                                                                                      §§goto(addr986);
                                                                                                   }
                                                                                                   §§goto(addr996);
                                                                                                }
                                                                                                §§goto(addr1009);
                                                                                             }
                                                                                             §§goto(addr1007);
                                                                                          }
                                                                                          §§goto(addr932);
                                                                                       }
                                                                                       §§goto(addr846);
                                                                                    }
                                                                                    if(param3.§#!+§)
                                                                                    {
                                                                                       §§goto(addr800);
                                                                                    }
                                                                                    addr932:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr934);
                                                                                    }
                                                                                    return;
                                                                                    addr823:
                                                                                 }
                                                                                 _loc8_.§@'§(param2);
                                                                                 §§goto(addr823);
                                                                                 addr828:
                                                                              }
                                                                              §§goto(addr777);
                                                                           }
                                                                           §§goto(addr748);
                                                                        }
                                                                        §§push(_loc18_ = new b2Vec2());
                                                                        §§push(0.5);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(param1.§3!O§.x);
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(§§pop() + param1.§"!"§.x);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(_loc18_);
                                                                           §§push(0.5);
                                                                           if(_loc29_ || param1)
                                                                           {
                                                                              §§push(param1.§3!O§.y);
                                                                              if(!(_loc28_ && param2))
                                                                              {
                                                                                 §§push(§§pop() + param1.§"!"§.y);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           if(!(_loc28_ && param3))
                                                                           {
                                                                              §§push(param1.§3!O§);
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(param1.§"!"§);
                                                                                 if(_loc29_ || b2Distance)
                                                                                 {
                                                                                    §§push(_loc18_.x);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          _loc26_ = §§pop();
                                                                                          if(!(_loc28_ && b2Distance))
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(_loc26_);
                                                                                                if(_loc29_ || param3)
                                                                                                {
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(!(_loc28_ && param2))
                                                                                                      {
                                                                                                         addr1146:
                                                                                                         param1.§"!"§.y = _loc26_ = _loc18_.y;
                                                                                                         addr1148:
                                                                                                         §§push(param1.§3!O§);
                                                                                                         §§push(_loc26_);
                                                                                                      }
                                                                                                      §§goto(addr932);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!(_loc28_ && param2))
                                                                                                   {
                                                                                                      addr1157:
                                                                                                      param1.§>!_§ = 0;
                                                                                                   }
                                                                                                   §§goto(addr932);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1148);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1146);
                                                                           }
                                                                           §§goto(addr932);
                                                                        }
                                                                        §§goto(addr1157);
                                                                     }
                                                                     §§goto(addr748);
                                                                  }
                                                                  §§goto(addr777);
                                                               }
                                                               §§goto(addr817);
                                                            }
                                                            §§goto(addr791);
                                                         }
                                                         §§goto(addr792);
                                                      }
                                                      §§goto(addr759);
                                                      addr342:
                                                   }
                                                   §§goto(addr828);
                                                }
                                                else
                                                {
                                                   §§push((_loc18_ = _loc8_.§`!'§()).§%!]§());
                                                   if(_loc29_ || param2)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc28_ && param1))
                                                      {
                                                         addr364:
                                                         §§push(§§pop());
                                                         if(_loc29_)
                                                         {
                                                            _loc16_ = §§pop();
                                                            addr382:
                                                            addr383:
                                                            if(!_loc28_)
                                                            {
                                                               §§push(_loc15_);
                                                            }
                                                            _loc15_ = Number(§§pop());
                                                            if((_loc20_ = _loc8_.§;G§()).§%!]§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                            {
                                                               §§goto(addr666);
                                                            }
                                                            else
                                                            {
                                                               (_loc21_ = _loc9_[_loc8_.§;!4§]).indexA = _loc4_.§'^§(b2Math.§0!&§(_loc6_.R,_loc20_.§=,§()));
                                                               if(_loc28_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               _loc21_.§<o§ = b2Math.§%!r§(_loc6_,_loc4_.§2l§(_loc21_.indexA));
                                                               if(!(_loc28_ && b2Distance))
                                                               {
                                                                  _loc21_.indexB = _loc5_.§'^§(b2Math.§0!&§(_loc7_.R,_loc20_));
                                                                  while(true)
                                                                  {
                                                                     _loc21_.§4x§ = b2Math.§%!r§(_loc7_,_loc5_.§2l§(_loc21_.indexB));
                                                                     if(!(_loc29_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc28_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc21_.§=Q§ = b2Math.§%M§(_loc21_.§4x§,_loc21_.§<o§);
                                                                        if(!_loc28_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§push(false);
                                                                     while(true)
                                                                     {
                                                                        _loc22_ = §§pop();
                                                                        if(!_loc29_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr610);
                                                                     }
                                                                     addr607:
                                                                     addr514:
                                                                  }
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc17_);
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= _loc13_)
                                                                           {
                                                                              if(!(_loc29_ || param2))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              addr621:
                                                                              §§push(_loc22_);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc21_.indexA);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop() == _loc11_[_loc17_]);
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                _loc22_ = §§pop();
                                                                                                if(!(_loc28_ && param3))
                                                                                                {
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr621);
                                                                                             }
                                                                                             §§goto(addr622);
                                                                                          }
                                                                                          §§goto(addr630);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc17_++;
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr601);
                                                                                          }
                                                                                          §§goto(addr525);
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
                                                                                    addr550:
                                                                                 }
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr601:
                                                                                       while(true)
                                                                                       {
                                                                                          addr525:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc21_.indexB);
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                if(!(_loc28_ && param1))
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr622:
                                                                                                addr622:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§push((_loc26_ = _loc8_).§;!4§);
                                                                                                   if(!(_loc28_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   _loc27_ = §§pop();
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      _loc26_.§;!4§ = _loc27_;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                if(!(_loc29_ || param1))
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr666);
                                                                                             }
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       addr601:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr607);
                                                                                    }
                                                                                    §§goto(addr604);
                                                                                 }
                                                                                 §§goto(addr622);
                                                                                 §§goto(addr601);
                                                                              }
                                                                           }
                                                                           §§goto(addr622);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr514);
                                                            }
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc29_ || b2Distance)
                                                            {
                                                               addr379:
                                                               §§push(_loc16_);
                                                               if(_loc29_)
                                                               {
                                                                  §§goto(addr382);
                                                               }
                                                               §§goto(addr383);
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                         §§goto(addr379);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   §§goto(addr364);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                             if(!(_loc28_ && param1))
                                             {
                                                _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                if(!(_loc28_ && b2Distance))
                                                {
                                                   _loc17_++;
                                                   if(_loc29_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr817);
                                             }
                                          }
                                          §§goto(addr748);
                                       }
                                       §§goto(addr334);
                                    }
                                    break;
                                 }
                                 addr244:
                                 _loc26_ = §§pop();
                                 if(_loc29_)
                                 {
                                    §§push(1);
                                    if(_loc29_ || b2Distance)
                                    {
                                       §§push(_loc26_);
                                       if(_loc29_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc28_)
                                             {
                                                addr261:
                                                §§push(0);
                                                if(!_loc29_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr293:
                                                §§push(2);
                                                if(!_loc28_)
                                                {
                                                   addr296:
                                                }
                                             }
                                             addr301:
                                             if(!(_loc28_ && b2Distance))
                                             {
                                                addr309:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      addr317:
                                                      §§push(_loc8_.§;!4§);
                                                      if(_loc28_ && param3)
                                                      {
                                                         break loop2;
                                                      }
                                                      break;
                                                   case 1:
                                                      _loc8_.Solve2();
                                                      addr132:
                                                      §§goto(addr317);
                                                      addr168:
                                                   case 2:
                                                      _loc8_.Solve3();
                                                      if(_loc29_ || param1)
                                                      {
                                                         if(!_loc29_)
                                                         {
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr666);
                                                   default:
                                                      b2Settings.b2Assert(false);
                                                      if(_loc29_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr132);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                }
                                                §§goto(addr839);
                                             }
                                             §§goto(addr326);
                                          }
                                          else
                                          {
                                             §§push(2);
                                             if(!_loc28_)
                                             {
                                                §§push(_loc26_);
                                                if(!(_loc28_ && param1))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc29_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc29_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr293);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                      if(!(_loc28_ && param1))
                                                      {
                                                         addr292:
                                                         if(§§pop() === _loc26_)
                                                         {
                                                            §§goto(addr293);
                                                         }
                                                         else
                                                         {
                                                            §§push(3);
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                   }
                                                }
                                                §§goto(addr292);
                                             }
                                          }
                                          §§goto(addr296);
                                       }
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr261);
                              }
                              §§goto(addr666);
                           }
                           §§goto(addr309);
                        }
                        §§goto(addr342);
                     }
                  }
                  §§goto(addr244);
               }
            }
            if(_loc29_ || param2)
            {
               §§goto(addr666);
            }
            §§goto(addr679);
         }
      }
   }
}
