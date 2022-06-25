package §8w§
{
   import §,C§.*;
   import §3!m§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §<!+§:b2Simplex;
      
      private static var §'!y§:Vector.<int>;
      
      private static var §1!h§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!+§ = new b2Simplex();
            while(true)
            {
               §'!y§ = new Vector.<int>(3);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            §1!h§ = new Vector.<int>(3);
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_ || _loc1_)
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
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §3H§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc28_ || param2)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!_loc29_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!(_loc29_ && b2Distance))
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§9!;§;
         var _loc5_:b2DistanceProxy = param3.§ !%§;
         var _loc6_:b2Transform = param3.§ T§;
         var _loc7_:b2Transform = param3.§?!+§;
         var _loc8_:b2Simplex;
         (_loc8_ = §<!+§).§]c§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§%!]§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §'!y§;
         var _loc12_:Vector.<int> = §1!h§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§?!e§()).§#-§());
         if(!(_loc29_ && b2Distance))
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
                     if(!(_loc29_ && param1))
                     {
                        break;
                     }
                     _loc8_.§3!l§(param1.§4!+§,param1.§!!!§);
                     param1.§6=§ = b2Math.§9!<§(param1.§4!+§,param1.§!!!§).§-D§();
                     param1.§1!S§ = _loc19_;
                     _loc8_.§^y§(param2);
                     addr843:
                     addr832:
                     addr827:
                     addr850:
                     if(param3.§5!=§)
                     {
                        if(!_loc29_)
                        {
                           addr814:
                           §§push(_loc4_.§?!X§);
                           if(!(_loc29_ && b2Distance))
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc23_ = §§pop();
                        }
                        addr815:
                        if(_loc28_ || param2)
                        {
                           addr794:
                           _loc24_ = _loc5_.§?!X§;
                           addr795:
                           addr793:
                           if(_loc28_)
                           {
                              addr743:
                              §§push(param1.§6=§);
                              if(!_loc29_)
                              {
                                 if(_loc28_)
                                 {
                                    §§push(_loc23_);
                                    if(_loc28_)
                                    {
                                       §§push(§§pop() + _loc24_);
                                    }
                                    §§push(§§pop() > §§pop());
                                    if(_loc28_ || b2Distance)
                                    {
                                       if(§§pop())
                                       {
                                          addr765:
                                          if(_loc28_ || param2)
                                          {
                                             §§pop();
                                             addr773:
                                             if(!(_loc29_ && b2Distance))
                                             {
                                                if(!(_loc29_ && b2Distance))
                                                {
                                                   if(_loc28_)
                                                   {
                                                      §§push(param1.§6=§);
                                                      if(_loc28_)
                                                      {
                                                         if(!_loc29_)
                                                         {
                                                            §§push(§§pop() > Number.MIN_VALUE);
                                                            if(_loc28_ || param2)
                                                            {
                                                               addr701:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc29_ && param1))
                                                                  {
                                                                     §§push(param1);
                                                                     §§push(param1.§6=§);
                                                                     if(_loc28_ || b2Distance)
                                                                     {
                                                                        §§push(_loc23_);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(§§pop() + _loc24_);
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                     }
                                                                     §§pop().§6=§ = §§pop();
                                                                  }
                                                                  if(_loc28_ || param1)
                                                                  {
                                                                     if(!(_loc29_ && param1))
                                                                     {
                                                                        addr741:
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr743);
                                                                        }
                                                                        (_loc25_ = b2Math.§9!<§(param1.§!!!§,param1.§4!+§)).Normalize();
                                                                        if(!_loc29_)
                                                                        {
                                                                           addr1004:
                                                                           §§push(param1.§4!+§);
                                                                           §§push(param1.§4!+§.x);
                                                                           §§push(_loc23_);
                                                                           if(_loc28_ || param3)
                                                                           {
                                                                              addr1014:
                                                                              §§push(§§pop() * _loc25_.x);
                                                                           }
                                                                           §§pop().x = §§pop() + §§pop();
                                                                        }
                                                                        addr1017:
                                                                        §§push(param1.§4!+§);
                                                                        if(!(_loc29_ && param2))
                                                                        {
                                                                           §§push(param1.§4!+§);
                                                                           if(_loc28_ || b2Distance)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!(_loc29_ && param3))
                                                                              {
                                                                                 §§push(_loc23_);
                                                                                 if(_loc28_ || param3)
                                                                                 {
                                                                                    §§push(_loc25_.y);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr990:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          addr993:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                addr948:
                                                                                                param1.§!!!§.x -= _loc24_ * _loc25_.x;
                                                                                                addr937:
                                                                                                addr998:
                                                                                                addr949:
                                                                                                addr944:
                                                                                                addr947:
                                                                                                addr946:
                                                                                                addr943:
                                                                                                addr942:
                                                                                                §§push(param1.§!!!§);
                                                                                                if(_loc28_ || param3)
                                                                                                {
                                                                                                   §§push(param1.§!!!§);
                                                                                                   if(!(_loc29_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc29_ && b2Distance))
                                                                                                      {
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            if(!(_loc29_ && param2))
                                                                                                            {
                                                                                                               §§push(_loc24_);
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc25_.y);
                                                                                                                  if(_loc28_ || param2)
                                                                                                                  {
                                                                                                                     addr918:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc29_)
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           addr923:
                                                                                                                           §§pop().y = §§pop() - §§pop();
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr937);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1159);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1017);
                                                                                                                              }
                                                                                                                              §§goto(addr998);
                                                                                                                           }
                                                                                                                           §§goto(addr949);
                                                                                                                        }
                                                                                                                        §§goto(addr944);
                                                                                                                     }
                                                                                                                     §§goto(addr947);
                                                                                                                  }
                                                                                                                  §§goto(addr946);
                                                                                                               }
                                                                                                               §§goto(addr918);
                                                                                                            }
                                                                                                            §§goto(addr943);
                                                                                                         }
                                                                                                         §§goto(addr948);
                                                                                                      }
                                                                                                      §§goto(addr923);
                                                                                                   }
                                                                                                   §§goto(addr942);
                                                                                                }
                                                                                                addr940:
                                                                                                §§goto(addr940);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1004);
                                                                                    }
                                                                                    §§goto(addr1014);
                                                                                 }
                                                                                 §§goto(addr990);
                                                                              }
                                                                              §§goto(addr993);
                                                                           }
                                                                        }
                                                                        §§goto(addr1004);
                                                                     }
                                                                     §§goto(addr843);
                                                                  }
                                                                  §§goto(addr773);
                                                               }
                                                               §§push(_loc18_ = new b2Vec2());
                                                               §§push(0.5);
                                                               if(!(_loc29_ && param1))
                                                               {
                                                                  §§push(param1.§4!+§.x);
                                                                  if(!(_loc29_ && param2))
                                                                  {
                                                                     §§push(§§pop() + param1.§!!!§.x);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§pop().x = §§pop();
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(_loc18_);
                                                                  §§push(0.5);
                                                                  if(_loc28_ || param1)
                                                                  {
                                                                     §§push(param1.§4!+§.y);
                                                                     if(!(_loc29_ && param3))
                                                                     {
                                                                        §§push(§§pop() + param1.§!!!§.y);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  if(!(_loc29_ && param2))
                                                                  {
                                                                     §§push(param1.§4!+§);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(param1.§!!!§);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(_loc18_.x);
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc28_)
                                                                              {
                                                                                 _loc26_ = §§pop();
                                                                                 if(_loc28_ || param1)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    if(_loc28_ || param1)
                                                                                    {
                                                                                       §§push(_loc26_);
                                                                                       if(!(_loc29_ && param1))
                                                                                       {
                                                                                          if(!(_loc29_ && param1))
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr1150:
                                                                                                param1.§!!!§.y = _loc26_ = _loc18_.y;
                                                                                                addr1152:
                                                                                                §§push(param1.§4!+§);
                                                                                                §§push(_loc26_);
                                                                                             }
                                                                                             §§goto(addr1159);
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             addr1156:
                                                                                             param1.§6=§ = 0;
                                                                                          }
                                                                                          §§goto(addr1159);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1152);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1150);
                                                                  }
                                                                  §§goto(addr1156);
                                                               }
                                                               §§goto(addr1150);
                                                            }
                                                            §§goto(addr765);
                                                         }
                                                         §§goto(addr814);
                                                      }
                                                      §§goto(addr743);
                                                   }
                                                   §§goto(addr832);
                                                }
                                                §§goto(addr815);
                                             }
                                             §§goto(addr795);
                                          }
                                          §§goto(addr843);
                                       }
                                       §§goto(addr701);
                                    }
                                    §§goto(addr765);
                                 }
                                 §§goto(addr793);
                              }
                              §§goto(addr794);
                              addr797:
                           }
                           §§goto(addr827);
                           addr822:
                        }
                        §§goto(addr850);
                     }
                     addr1159:
                     return;
                     addr683:
                  }
                  else
                  {
                     §§push(_loc8_.§1!Y§);
                     if(!(_loc29_ && param3))
                     {
                        §§push(int(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc13_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 _loc17_ = §§pop();
                                 if(_loc28_ || param3)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       if(!_loc29_)
                                       {
                                          if(_loc29_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc29_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(_loc13_);
                                          if(_loc29_ && param3)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc29_)
                                             {
                                                §§push(_loc8_.§1!Y§);
                                                if(!(_loc29_ && param3))
                                                {
                                                   _loc26_ = §§pop();
                                                   if(!(_loc29_ && param2))
                                                   {
                                                      §§push(1);
                                                      if(_loc28_)
                                                      {
                                                         §§push(_loc26_);
                                                         if(!(_loc29_ && param1))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc28_ || param3)
                                                               {
                                                                  addr275:
                                                                  §§push(0);
                                                                  if(_loc29_ && param2)
                                                                  {
                                                                     addr315:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr307:
                                                                  §§push(2);
                                                                  if(!(_loc29_ && param2))
                                                                  {
                                                                     §§goto(addr315);
                                                                  }
                                                               }
                                                               addr320:
                                                               if(!_loc28_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr323:
                                                               loop9:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     addr326:
                                                                     §§push(_loc8_.§1!Y§);
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(3);
                                                                        if(!_loc28_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!(_loc29_ && param1))
                                                                           {
                                                                              addr341:
                                                                              break loop2;
                                                                           }
                                                                           §§goto(addr797);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push((_loc18_ = _loc8_.§?!e§()).§#-§());
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc28_ || param3)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    _loc16_ = §§pop();
                                                                                    addr377:
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       addr364:
                                                                                       §§push(_loc15_);
                                                                                    }
                                                                                    _loc15_ = §§pop();
                                                                                    if((_loc20_ = _loc8_.§=!#§()).§#-§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    (_loc21_ = _loc9_[_loc8_.§1!Y§]).indexA = _loc4_.§#!2§(b2Math.§[Z§(_loc6_.R,_loc20_.§&!+§()));
                                                                                    if(!(_loc29_ && b2Distance))
                                                                                    {
                                                                                       _loc21_.§%![§ = b2Math.§#!<§(_loc6_,_loc4_.§1!9§(_loc21_.indexA));
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          _loc21_.indexB = _loc5_.§#!2§(b2Math.§[Z§(_loc7_.R,_loc20_));
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             _loc21_.§8!d§ = b2Math.§#!<§(_loc7_,_loc5_.§1!9§(_loc21_.indexB));
                                                                                             if(_loc28_ || param3)
                                                                                             {
                                                                                                addr421:
                                                                                                _loc21_.§&U§ = b2Math.§9!<§(_loc21_.§8!d§,_loc21_.§%![§);
                                                                                                if(_loc28_ || param2)
                                                                                                {
                                                                                                   _loc19_++;
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr421);
                                                                                                      }
                                                                                                      §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                      }
                                                                                                      _loc27_ = §§pop();
                                                                                                      if(!(_loc29_ && param3))
                                                                                                      {
                                                                                                         _loc26_.b2_gjkIters = _loc27_;
                                                                                                      }
                                                                                                      if(_loc29_ && param2)
                                                                                                      {
                                                                                                      }
                                                                                                      addr629:
                                                                                                      §§push(0);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         _loc17_ = §§pop();
                                                                                                         addr649:
                                                                                                         if(_loc28_ || b2Distance)
                                                                                                         {
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§goto(addr629);
                                                                                                            }
                                                                                                            addr630:
                                                                                                            §§push(_loc17_);
                                                                                                         }
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      if(§§pop() < _loc13_)
                                                                                                      {
                                                                                                         §§push(_loc21_.indexA);
                                                                                                         if(!(_loc29_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() == _loc11_[_loc17_]);
                                                                                                            if(!(_loc29_ && b2Distance))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr603:
                                                                                                                  §§pop();
                                                                                                                  addr604:
                                                                                                                  §§push(_loc21_.indexB);
                                                                                                                  if(_loc28_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                                     if(_loc28_ || param3)
                                                                                                                     {
                                                                                                                        addr543:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 addr550:
                                                                                                                                 if(_loc28_ || param2)
                                                                                                                                 {
                                                                                                                                    _loc22_ = §§pop();
                                                                                                                                    if(!(_loc28_ || param1))
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr604);
                                                                                                                                    }
                                                                                                                                    addr640:
                                                                                                                                    §§push(_loc22_);
                                                                                                                                    addr577:
                                                                                                                                 }
                                                                                                                                 §§goto(addr603);
                                                                                                                              }
                                                                                                                              addr641:
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push((_loc26_ = _loc8_).§1!Y§);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                 }
                                                                                                                                 _loc27_ = §§pop();
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    _loc26_.§1!Y§ = _loc27_;
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              if(!(_loc28_ || b2Distance))
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              §§goto(addr649);
                                                                                                                           }
                                                                                                                           §§goto(addr640);
                                                                                                                        }
                                                                                                                        _loc17_++;
                                                                                                                        if(!(_loc28_ || b2Distance))
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr520:
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr603);
                                                                                                                        }
                                                                                                                        §§goto(addr630);
                                                                                                                     }
                                                                                                                     §§goto(addr550);
                                                                                                                  }
                                                                                                                  §§goto(addr629);
                                                                                                               }
                                                                                                               §§goto(addr543);
                                                                                                            }
                                                                                                            §§goto(addr603);
                                                                                                         }
                                                                                                         §§goto(addr629);
                                                                                                      }
                                                                                                      if(!(_loc28_ || b2Distance))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr640);
                                                                                                   }
                                                                                                   §§push(false);
                                                                                                   if(!(_loc29_ && param3))
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      §§goto(addr629);
                                                                                                   }
                                                                                                   §§goto(addr641);
                                                                                                }
                                                                                                §§goto(addr520);
                                                                                                addr455:
                                                                                             }
                                                                                             §§goto(addr629);
                                                                                          }
                                                                                          §§goto(addr577);
                                                                                       }
                                                                                       §§goto(addr649);
                                                                                    }
                                                                                    §§goto(addr455);
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc28_ || param3)
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
                                                                           §§goto(addr364);
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  case 1:
                                                                     _loc8_.Solve2();
                                                                     if(_loc28_)
                                                                     {
                                                                        addr136:
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr341);
                                                                  case 2:
                                                                     _loc8_.Solve3();
                                                                     if(!(_loc29_ && b2Distance))
                                                                     {
                                                                        if(_loc28_)
                                                                        {
                                                                           if(!(_loc28_ || b2Distance))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc28_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr212:
                                                                              }
                                                                              _loc17_++;
                                                                              if(_loc29_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                     break loop6;
                                                                  default:
                                                                     b2Settings.b2Assert(false);
                                                                     if(!_loc29_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr136);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr326);
                                                                        }
                                                                     }
                                                                     §§goto(addr683);
                                                               }
                                                               §§goto(addr843);
                                                            }
                                                            else
                                                            {
                                                               §§push(2);
                                                               if(!_loc29_)
                                                               {
                                                                  addr287:
                                                                  §§push(_loc26_);
                                                                  if(!_loc29_)
                                                                  {
                                                                     addr290:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc29_ && param3))
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc29_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr320);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(3);
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(_loc26_);
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                  }
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     §§goto(addr307);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(3);
                                                                  }
                                                                  §§goto(addr320);
                                                               }
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr326);
                                          }
                                          else
                                          {
                                             _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr323);
                                    }
                                    §§goto(addr822);
                                 }
                                 break;
                              }
                              §§goto(addr843);
                           }
                        }
                     }
                     §§goto(addr330);
                  }
                  §§goto(addr743);
               }
               b2_gjkMaxIters = b2Math.§!!X§(b2_gjkMaxIters,_loc19_);
               if(!_loc29_)
               {
                  §§goto(addr843);
               }
               §§goto(addr741);
            }
         }
      }
   }
}
