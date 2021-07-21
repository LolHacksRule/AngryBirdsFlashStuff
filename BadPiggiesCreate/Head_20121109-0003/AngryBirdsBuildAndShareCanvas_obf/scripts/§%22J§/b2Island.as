package §"J§
{
   import §%4§.*;
   import §,!0§.*;
   import §;!e§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §6!v§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!v§ = new b2ContactImpulse();
         }
      }
      
      private var §9"6§;
      
      private var §1!4§:b2ContactListener;
      
      private var §else§:b2ContactSolver;
      
      b2internal var §`i§:Vector.<b2Body>;
      
      b2internal var §8U§:Vector.<b2Contact>;
      
      b2internal var §#r§:Vector.<b2Joint>;
      
      b2internal var §7!h§:int;
      
      b2internal var §'#§:int;
      
      b2internal var §4A§:int;
      
      private var §9!§:int;
      
      b2internal var §+!%§:int;
      
      b2internal var §1"=§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§`i§ = new Vector.<b2Body>();
            loop1:
            do
            {
               this.§8U§ = new Vector.<b2Contact>();
               while(_loc1_)
               {
                  this.§#r§ = new Vector.<b2Joint>();
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
      }
      
      public function §&!§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            this.§9!§ = param1;
            loop0:
            while(true)
            {
               this.§+!%§ = param2;
               while(true)
               {
                  this.§1"=§ = param3;
                  while(_loc8_ || this)
                  {
                     this.§7!h§ = 0;
                     while(true)
                     {
                        this.§4A§ = 0;
                        continue loop0;
                     }
                     addr224:
                     if(_loc9_ && param3)
                     {
                        continue;
                     }
                     this.§else§ = param6;
                     loop8:
                     while(_loc8_ || param2)
                     {
                        while(true)
                        {
                           _loc7_ = int(this.§`i§.length);
                           if(!(_loc8_ || param3))
                           {
                              continue loop8;
                           }
                           addr189:
                           if(!(_loc9_ && this))
                           {
                              break;
                           }
                           addr236:
                           while(true)
                           {
                              this.§1!4§ = param5;
                              break loop8;
                              §§goto(addr189);
                           }
                        }
                        loop10:
                        while(true)
                        {
                           §§push(_loc7_);
                           loop11:
                           while(true)
                           {
                              §§push(param1);
                              loop12:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       §§push(int(this.§8U§.length));
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                       }
                                       addr162:
                                    }
                                    loop14:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc9_ && param1))
                                          {
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §§push(param2);
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   this.§8U§[_loc7_] = null;
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(int(this.§#r§.length));
                                                }
                                             }
                                             addr144:
                                             if(!(_loc9_ && param3))
                                             {
                                                _loc7_++;
                                                addr118:
                                                if(!(_loc9_ && param1))
                                                {
                                                   continue;
                                                }
                                                addr175:
                                                _loc7_++;
                                                continue loop10;
                                             }
                                             continue loop14;
                                             addr102:
                                          }
                                          while(_loc8_ || param2)
                                          {
                                             _loc7_ = §§pop();
                                             loop19:
                                             while(true)
                                             {
                                                do
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc9_)
                                                   {
                                                      break loop19;
                                                   }
                                                   §§push(param3);
                                                   if(!_loc9_)
                                                   {
                                                      if(!(_loc8_ || param3))
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(§§pop() < §§pop())
                                                      {
                                                         this.§#r§[_loc7_] = null;
                                                         continue loop19;
                                                      }
                                                      if(_loc8_ || this)
                                                      {
                                                         if(_loc9_ && param2)
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      else
                                                      {
                                                         addr57:
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr102);
                                                   }
                                                   §§goto(addr103);
                                                }
                                                while(!(_loc9_ && param3));
                                                
                                                continue loop10;
                                             }
                                          }
                                          continue loop11;
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 else
                                 {
                                    this.§`i§[_loc7_] = null;
                                 }
                                 §§goto(addr175);
                              }
                           }
                        }
                     }
                     while(!_loc9_)
                     {
                        if(_loc9_ && this)
                        {
                           continue loop0;
                        }
                        if(!_loc9_)
                        {
                           §§goto(addr224);
                        }
                        else
                        {
                           §§goto(addr258);
                        }
                     }
                     addr201:
                     while(true)
                     {
                        this.§9"6§ = param4;
                        §§goto(addr236);
                     }
                  }
               }
            }
         }
         §§goto(addr208);
      }
      
      public function §"F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§7!h§ = 0;
         }
         while(true)
         {
            this.§4A§ = 0;
            while(_loc1_)
            {
               this.§'#§ = 0;
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function §1!R§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         if(!_loc18_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§7!h§)
         {
            if((_loc6_ = this.§`i§[_loc4_]).§;!F§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc18_ && this))
               {
                  loop19:
                  while(true)
                  {
                     _loc4_++;
                     if(_loc19_ || param1)
                     {
                        if(!(_loc18_ && this))
                        {
                           while(true)
                           {
                              if(false)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push(_loc6_.m_angularVelocity);
                                    if(_loc19_ || this)
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§@[§);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() * _loc6_.§4">§);
                                       }
                                       §§push(§§pop() * §§pop().§5" §(§§pop() - §§pop(),0,1));
                                    }
                                    §§pop().m_angularVelocity = §§pop();
                                    addr195:
                                    while(_loc19_)
                                    {
                                       continue loop19;
                                    }
                                    addr226:
                                    while(_loc19_)
                                    {
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc6_.§]!g§);
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(b2Math);
                                          §§push(1);
                                          §§push(param1.§@[§);
                                          if(_loc19_)
                                          {
                                             §§push(§§pop() * _loc6_.§6!D§);
                                          }
                                          §§push(§§pop().§5" §(§§pop() - §§pop(),0,1));
                                          if(!_loc18_)
                                          {
                                             if(!_loc19_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.§@[§);
                                                   if(_loc19_)
                                                   {
                                                      addr266:
                                                      while(true)
                                                      {
                                                         §§push(param2.y);
                                                         if(!_loc18_)
                                                         {
                                                            addr270:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§@"!§);
                                                               if(!_loc18_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_.§1!3§);
                                                                     addr276:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        addr277:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  addr274:
                                                               }
                                                               addr278:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                            addr270:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      addr266:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr281:
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop().y = §§pop();
                                                         addr282:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            §§push(_loc6_.m_angularVelocity);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(param1.§@[§);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc6_.§=!N§);
                                                                  if(!(_loc18_ && param2))
                                                                  {
                                                                     addr254:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(_loc6_.§ !v§);
                                                                     }
                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                     continue loop6;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            §§goto(addr254);
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr262:
                                             }
                                             while(true)
                                             {
                                                §§pop().§7H§(§§pop());
                                                §§goto(addr226);
                                             }
                                             addr225:
                                          }
                                          §§goto(addr281);
                                       }
                                       else
                                       {
                                          addr259:
                                          while(true)
                                          {
                                             §§push(_loc6_.§]!g§);
                                             addr261:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr259:
                                       }
                                       §§goto(addr262);
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           addr167:
                        }
                        §§goto(addr282);
                     }
                     §§goto(addr195);
                  }
               }
               §§goto(addr228);
            }
            else
            {
               §§push(_loc6_.§]!g§);
               if(!(_loc18_ && param3))
               {
                  §§push(_loc6_.§]!g§);
                  if(!(_loc18_ && this))
                  {
                     §§push(§§pop().x);
                     if(_loc19_ || param3)
                     {
                        §§push(param1.§@[§);
                        if(_loc19_ || param2)
                        {
                           §§push(param2.x);
                           if(_loc19_ || this)
                           {
                              §§push(_loc6_.§@"!§);
                              if(!(_loc18_ && param1))
                              {
                                 §§push(_loc6_.§1!3§);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc18_ && param3))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc18_)
                                                {
                                                   addr147:
                                                   §§pop().x = §§pop();
                                                   if(_loc19_)
                                                   {
                                                      §§goto(addr259);
                                                      §§push(_loc6_.§]!g§);
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr274);
                           }
                           §§goto(addr270);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr261);
               }
            }
            §§goto(addr259);
         }
         if(_loc19_ || param3)
         {
            §§push(this.§else§);
            if(_loc19_)
            {
               §§pop().§&!§(param1,this.§8U§,this.§4A§,this.§9"6§);
               addr306:
               §§push(this.§else§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc19_)
            {
               §§push(0);
               if(!_loc18_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc18_ && this))
                  {
                     loop22:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_)
                        {
                           §§push(this.§'#§);
                           if(!_loc18_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§#r§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc19_ || param3)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!_loc18_)
                              {
                                 §§push(0);
                                 if(_loc19_ || param3)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc18_ && param2))
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_)
                                          {
                                             §§push(param1.§ k§);
                                             if(!_loc18_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc18_)
                                                      {
                                                         addr448:
                                                         _loc4_ = §§pop();
                                                         if(_loc19_)
                                                         {
                                                            loop147:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(this.§'#§);
                                                                  if(_loc19_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        (_loc7_ = this.§#r§[_loc4_]).§?"<§();
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           _loc4_++;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr479:
                                                                        _loc8_.§?"<§();
                                                                        if(_loc19_ || param1)
                                                                        {
                                                                           addr488:
                                                                           §§push(0);
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              addr496:
                                                                              _loc4_ = §§pop();
                                                                              if(!_loc18_)
                                                                              {
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr1186:
                                                                                       §§push(this.§7!h§);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   addr1038:
                                                                                                   §§push(0);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   loop130:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               loop127:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                  if(_loc19_ || param2)
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr1253:
                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc19_ || param2))
                                                                                                                                    {
                                                                                                                                       addr1627:
                                                                                                                                       §§push(b2Settings.b2_timeToSleep);
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr1275:
                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc18_ && param2))
                                                                                                                                       {
                                                                                                                                          continue loop130;
                                                                                                                                       }
                                                                                                                                       addr1668:
                                                                                                                                       addr1668:
                                                                                                                                       addr1668:
                                                                                                                                       loop125:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§7!h§);
                                                                                                                                          addr1670:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr1671);
                                                                                                                                             }
                                                                                                                                             (_loc6_ = this.§`i§[_loc4_]).SetAwake(false);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                _loc4_++;
                                                                                                                                             }
                                                                                                                                             continue loop125;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1284:
                                                                                                                                          §§push(§§pop() * b2Settings.b2_linearSleepTolerance);
                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                          {
                                                                                                                                             addr1293:
                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                             {
                                                                                                                                                continue loop127;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1627);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1322:
                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr1643:
                                                                                                                                          addr1643:
                                                                                                                                          addr1643:
                                                                                                                                          addr1667:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1668);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1671);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1667);
                                                                                                                              }
                                                                                                                              §§goto(addr1293);
                                                                                                                           }
                                                                                                                           §§goto(addr1275);
                                                                                                                        }
                                                                                                                        §§goto(addr1284);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr1253);
                                                                                                               }
                                                                                                               if(§§pop() >= §§pop())
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr1632:
                                                                                                                     §§push(0);
                                                                                                                     if(_loc19_ || param1)
                                                                                                                     {
                                                                                                                        addr1640:
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§goto(addr1643);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1668);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1671);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop132:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§7!h§);
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1627);
                                                                                                                                    §§push(_loc15_);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1671);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push((_loc6_ = this.§`i§[_loc4_]).§;!F§());
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(b2Body.b2_staticBody);
                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             loop113:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_++;
                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop132;
                                                                                                                                                            }
                                                                                                                                                            loop99:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(b2Math.§+"1§(_loc15_,_loc6_.§>"'§));
                                                                                                                                                               if(_loc19_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1492:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                 loop104:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1529:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop113;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop102:
                                                                                                                                                                                       while(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(!(_loc19_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc6_.§>"'§ = 0;
                                                                                                                                                                                                break loop102;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1440);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop104;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1606:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1440:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          addr1525:
                                                                                                                                                                                          while(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                §§goto(addr1529);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1577:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1582:
                                                                                                                                                                                             }
                                                                                                                                                                                             loop112:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                loop92:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop93:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop94:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(b2Math.§8n§(_loc6_.§]!g§,_loc6_.§]!g§));
                                                                                                                                                                                                                  addr1548:
                                                                                                                                                                                                                  while(_loc19_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                     if(_loc18_ && param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop112;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop94;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop93;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1582);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1592:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1605:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  break loop94;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1605:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1606);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1570);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            §§push(_loc6_.§>"'§);
                                                                                                                                                                                                            if(!(_loc18_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + param1.§@[§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§>"'§ = §§pop();
                                                                                                                                                                                                            while(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop99;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1592);
                                                                                                                                                                                                            addr1520:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1604:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop92;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1605);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1529:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1529);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1531);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1577);
                                                                                                                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                 addr1500:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              addr1608:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                              break loop99;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1548);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1525);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1528);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1492);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1458:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr1594:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.§]!+§);
                                                                                                                                                            addr1596:
                                                                                                                                                            loop122:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(b2Body.§ f§);
                                                                                                                                                               addr1598:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() & §§pop());
                                                                                                                                                                  addr1599:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     addr1600:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1604);
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1605);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop122;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1520);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1500);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1522);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§]!+§);
                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(b2Body.§ f§);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1415:
                                                                                                                                                §§push(§§pop() & §§pop());
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc18_ && param3))
                                                                                                                                                         {
                                                                                                                                                            _loc6_.§>"'§ = 0;
                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1608);
                                                                                                                                                               §§push(0);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1570);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1458);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1594);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1600);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1599);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1598);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1596);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1415);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1596);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1618:
                                                                                                                        }
                                                                                                                        §§goto(addr1670);
                                                                                                                     }
                                                                                                                     addr1614:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1640);
                                                                                                         }
                                                                                                         §§goto(addr1276);
                                                                                                      }
                                                                                                      §§goto(addr1643);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1330);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                if((_loc6_ = this.§`i§[_loc4_]).§;!F§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   if(!(_loc18_ && param2))
                                                                                                   {
                                                                                                      loop80:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_++;
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            addr565:
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               addr572:
                                                                                                               if(!(_loc18_ && this))
                                                                                                               {
                                                                                                                  addr579:
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc6_.§=&§();
                                                                                                                        addr586:
                                                                                                                        while(!(_loc18_ && param2))
                                                                                                                        {
                                                                                                                           continue loop80;
                                                                                                                        }
                                                                                                                        while(_loc19_)
                                                                                                                        {
                                                                                                                           if(_loc19_ || param2)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              loop50:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 addr722:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                    addr724:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().c);
                                                                                                                                       addr725:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          addr726:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§@[§);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.§]!g§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   addr733:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr732:
                                                                                                                                             }
                                                                                                                                             addr734:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr735:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr736:
                                                                                                                                                   while(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         continue loop50;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.§]!g§);
                                                                                                                                                         loop28:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.§]!g§);
                                                                                                                                                            addr961:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               addr962:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                  if(_loc19_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§!!K§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     addr973:
                                                                                                                                                                  }
                                                                                                                                                                  addr974:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr975:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        continue loop28;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr770);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr882);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr770);
                                                                                                                           }
                                                                                                                           §§goto(addr876);
                                                                                                                        }
                                                                                                                        §§goto(addr1010);
                                                                                                                        §§goto(addr579);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr749);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr710);
                                                                                                            }
                                                                                                            §§goto(addr627);
                                                                                                         }
                                                                                                         §§goto(addr586);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(param1.§@[§);
                                                                                                      addr560:
                                                                                                   }
                                                                                                   §§goto(addr1021);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(param1.§@[§);
                                                                                                   if(!(_loc18_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc6_.§]!g§);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc18_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc19_ || param2)
                                                                                                               {
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     §§goto(addr560);
                                                                                                                  }
                                                                                                                  §§goto(addr1015);
                                                                                                               }
                                                                                                               §§goto(addr1021);
                                                                                                            }
                                                                                                            §§goto(addr986);
                                                                                                         }
                                                                                                         §§goto(addr861);
                                                                                                      }
                                                                                                      §§goto(addr1023);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr871);
                                                                                             }
                                                                                          }
                                                                                          addr1035:
                                                                                       }
                                                                                       loop134:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         addr1200:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1632);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr1200:
                                                                                                      }
                                                                                                      loop88:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc19_ || param2)
                                                                                                            {
                                                                                                               loop87:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§,!3§(_loc8_.§+!P§);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr1354:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param3);
                                                                                                                        if(!(_loc19_ || param1))
                                                                                                                        {
                                                                                                                           continue loop88;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr1322);
                                                                                                                              §§push(Number(Number.MAX_VALUE));
                                                                                                                           }
                                                                                                                           break loop87;
                                                                                                                        }
                                                                                                                        §§goto(addr1671);
                                                                                                                     }
                                                                                                                     §§goto(addr1632);
                                                                                                                     addr1354:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr1347:
                                                                                                            }
                                                                                                            §§goto(addr1643);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc4_++;
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     break loop147;
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr1376);
                                                                                                               }
                                                                                                               addr1376:
                                                                                                               §§goto(addr1614);
                                                                                                               addr1332:
                                                                                                            }
                                                                                                            §§goto(addr1632);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1364:
                                                                                                   }
                                                                                                   §§goto(addr1200);
                                                                                                }
                                                                                                addr1189:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§push((_loc7_ = this.§#r§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   if(_loc19_ || param1)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   loop135:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop136:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop137:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop138:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        continue loop135;
                                                                                                                     }
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr1161:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1160:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           break loop138;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc13_ = §§pop();
                                                                                                                           do
                                                                                                                           {
                                                                                                                              _loc5_++;
                                                                                                                           }
                                                                                                                           while(_loc18_ && this);
                                                                                                                           
                                                                                                                           if(_loc18_ && param3)
                                                                                                                           {
                                                                                                                              continue loop137;
                                                                                                                           }
                                                                                                                           while(false)
                                                                                                                           {
                                                                                                                              continue loop138;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 addr1182:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§'#§);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop134;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1618);
                                                                                                                                 addr1182:
                                                                                                                              }
                                                                                                                              §§goto(addr1640);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1161);
                                                                                                               }
                                                                                                               continue loop136;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1160);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1139);
                                                                                             }
                                                                                             §§goto(addr1164);
                                                                                          }
                                                                                          §§goto(addr1161);
                                                                                          §§goto(addr1640);
                                                                                       }
                                                                                       §§goto(addr1275);
                                                                                       addr1186:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 addr1078:
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr1332);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       break loop22;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr1668);
                                                                                 addr1078:
                                                                              }
                                                                              §§goto(addr1275);
                                                                           }
                                                                           §§goto(addr1668);
                                                                        }
                                                                        §§goto(addr1189);
                                                                     }
                                                                     §§goto(addr1632);
                                                                  }
                                                                  §§goto(addr1186);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.§["4§);
                                                               if(_loc19_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        §§goto(addr1347);
                                                                     }
                                                                     §§goto(addr1643);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                     loop84:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           if(_loc19_ || param3)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       continue loop84;
                                                                                    }
                                                                                    _loc13_ = §§pop();
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       §§goto(addr1078);
                                                                                    }
                                                                                    §§goto(addr1354);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1200);
                                                                              addr1059:
                                                                           }
                                                                           addr1671:
                                                                           return;
                                                                        }
                                                                        §§goto(addr1200);
                                                                     }
                                                                  }
                                                                  §§goto(addr1364);
                                                               }
                                                               §§goto(addr1670);
                                                            }
                                                         }
                                                         §§goto(addr1078);
                                                      }
                                                      §§goto(addr496);
                                                   }
                                                   §§goto(addr488);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!_loc18_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!(_loc18_ && this))
                                                      {
                                                         addr384:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(this.§'#§);
                                                                  if(_loc19_ || param3)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        (_loc7_ = this.§#r§[_loc5_]).SolveVelocityConstraints(param1);
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc5_++;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(!(_loc18_ && param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc8_.SolveVelocityConstraints();
                                                                           if(_loc18_ && param2)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc4_++;
                                                                              if(_loc18_ && param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           §§goto(addr1038);
                                                                        }
                                                                        addr418:
                                                                     }
                                                                     §§goto(addr1632);
                                                                  }
                                                                  §§goto(addr1670);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr1182);
                                                         }
                                                         addr384:
                                                      }
                                                      §§goto(addr418);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr448);
                                                   }
                                                }
                                                §§goto(addr448);
                                             }
                                             §§goto(addr1035);
                                          }
                                          break loop22;
                                       }
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr448);
                              }
                              §§goto(addr479);
                           }
                           §§goto(addr1186);
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc5_ = §§pop();
                        if(_loc19_)
                        {
                           if(true)
                           {
                              §§goto(addr1179);
                           }
                           §§goto(addr1059);
                        }
                        §§goto(addr1354);
                     }
                  }
                  §§goto(addr384);
               }
               §§goto(addr1182);
            }
            §§goto(addr427);
         }
         §§goto(addr306);
      }
      
      public function §4f§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         if(!(_loc14_ && param1))
         {
            §§push(this.§else§);
            if(_loc13_ || param1)
            {
               §§pop().§&!§(param1,this.§8U§,this.§4A§,this.§9"6§);
               addr59:
               §§push(this.§else§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc13_ || _loc2_)
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§'#§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           if(!_loc14_)
                           {
                              _loc2_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc14_)
                                    {
                                       if(!_loc14_)
                                       {
                                          if(!(_loc13_ || param1))
                                          {
                                             break;
                                          }
                                          §§push(param1.§ k§);
                                          if(_loc13_)
                                          {
                                             if(!(_loc13_ || this))
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc14_)
                                                {
                                                   if(!(_loc13_ || this))
                                                   {
                                                      _loc2_++;
                                                      continue loop0;
                                                      addr222:
                                                   }
                                                   §§push(0);
                                                   if(!_loc14_)
                                                   {
                                                      addr108:
                                                      if(_loc13_ || this)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            if(!(_loc14_ && this))
                                                            {
                                                               if(!(_loc14_ && _loc2_))
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(_loc14_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr145:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§'#§);
                                                                           if(_loc13_)
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    _loc2_++;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc13_ || param1))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       if(!(_loc14_ && _loc2_))
                                                                                       {
                                                                                          break loop7;
                                                                                       }
                                                                                    }
                                                                                    addr153:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr724:
                                                                                    §§push(0.75);
                                                                                    if(_loc13_ || _loc3_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc5_:* = §§pop();
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr978:
                                                                                       _loc2_ = 0;
                                                                                       addr741:
                                                                                       addr979:
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(param1.§["4§);
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   if(!(_loc14_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(!(_loc14_ && this))
                                                                                                         {
                                                                                                            addr778:
                                                                                                            this.§,!3§(_loc4_.§+!P§);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               if(_loc14_ && param1)
                                                                                                               {
                                                                                                                  addr880:
                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!(_loc14_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc13_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       addr823:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                          {
                                                                                                                                             addr832:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr834:
                                                                                                                                                §§goto(addr778);
                                                                                                                                             }
                                                                                                                                             _loc2_++;
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr741);
                                                                                                                                                }
                                                                                                                                                addr911:
                                                                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   _loc3_++;
                                                                                                                                                   addr841:
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   if(_loc13_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr859:
                                                                                                                                                         if(§§pop() >= this.§'#§)
                                                                                                                                                         {
                                                                                                                                                            addr861:
                                                                                                                                                            addr860:
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               addr864:
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     addr975:
                                                                                                                                                                     addr974:
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr879:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              §§goto(addr880);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr832);
                                                                                                                                                                        }
                                                                                                                                                                        addr923:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr924:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr893:
                                                                                                                                                                           §§push(Boolean(_loc12_));
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr903:
                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                              §§goto(addr911);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr923);
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           addr925:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr903);
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     _loc10_ = §§pop();
                                                                                                                                                                     addr949:
                                                                                                                                                                     _loc11_ = true;
                                                                                                                                                                     addr950:
                                                                                                                                                                     if(_loc13_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr945:
                                                                                                                                                                        _loc3_ = 0;
                                                                                                                                                                        §§goto(addr841);
                                                                                                                                                                        addr946:
                                                                                                                                                                     }
                                                                                                                                                                     addr976:
                                                                                                                                                                     §§goto(addr976);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr903);
                                                                                                                                                            }
                                                                                                                                                            addr937:
                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr903);
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  addr942:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr979);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr950);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr937);
                                                                                                                                                         §§push(Boolean(this.§#r§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr978);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr945);
                                                                                                                                                   addr890:
                                                                                                                                                }
                                                                                                                                                §§goto(addr946);
                                                                                                                                             }
                                                                                                                                             §§goto(addr890);
                                                                                                                                          }
                                                                                                                                          §§goto(addr864);
                                                                                                                                       }
                                                                                                                                       §§goto(addr879);
                                                                                                                                    }
                                                                                                                                    §§goto(addr975);
                                                                                                                                 }
                                                                                                                                 §§goto(addr949);
                                                                                                                              }
                                                                                                                              §§goto(addr924);
                                                                                                                           }
                                                                                                                           §§goto(addr893);
                                                                                                                        }
                                                                                                                        §§goto(addr861);
                                                                                                                     }
                                                                                                                     §§goto(addr823);
                                                                                                                  }
                                                                                                                  §§goto(addr861);
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr832);
                                                                                                         }
                                                                                                         §§goto(addr925);
                                                                                                      }
                                                                                                      §§goto(addr860);
                                                                                                   }
                                                                                                   §§goto(addr834);
                                                                                                }
                                                                                                §§goto(addr778);
                                                                                             }
                                                                                             §§goto(addr974);
                                                                                             §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                          }
                                                                                          §§goto(addr859);
                                                                                       }
                                                                                       §§goto(addr841);
                                                                                    }
                                                                                    §§goto(addr942);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§#r§[_loc3_].SolveVelocityConstraints(param1);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc3_++;
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr723:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if((_loc6_ = this.§`i§[_loc2_]).§;!F§() == b2Body.b2_staticBody)
                                                                                 {
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       addr279:
                                                                                       _loc2_++;
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   addr293:
                                                                                                   _loc6_.§=&§();
                                                                                                   if(_loc13_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               if(_loc13_ || param1)
                                                                                                               {
                                                                                                                  §§goto(addr279);
                                                                                                               }
                                                                                                               addr702:
                                                                                                               _loc6_.§]!g§.Normalize();
                                                                                                               addr665:
                                                                                                               addr678:
                                                                                                               addr677:
                                                                                                               addr664:
                                                                                                               addr662:
                                                                                                               §§push(_loc6_.§]!g§);
                                                                                                               §§push(_loc6_.§]!g§.x);
                                                                                                               §§push(b2Settings.b2_maxTranslation);
                                                                                                               if(_loc13_ || this)
                                                                                                               {
                                                                                                                  addr676:
                                                                                                                  §§push(§§pop() * param1.§!!K§);
                                                                                                               }
                                                                                                               §§pop().x = §§pop() * §§pop();
                                                                                                               addr679:
                                                                                                               addr703:
                                                                                                               addr700:
                                                                                                               §§push(_loc6_.§]!g§);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.§]!g§);
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§push(b2Settings.b2_maxTranslation);
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              §§push(param1.§!!K§);
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 addr638:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    addr641:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc13_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          addr651:
                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr503:
                                                                                                                                             §§push(param1.§@[§);
                                                                                                                                             if(_loc13_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.m_angularVelocity);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc13_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc13_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc9_ = §§pop();
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc14_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr567:
                                                                                                                                                                                       §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr571:
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc13_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr581:
                                                                                                                                                                                                addr579:
                                                                                                                                                                                                §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                if(_loc13_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr589:
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr592:
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr600:
                                                                                                                                                                                                               §§push(§§pop() * param1.§!!K§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                            addr463:
                                                                                                                                                                                                            _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr456:
                                                                                                                                                                                                               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                                                                                                               addr455:
                                                                                                                                                                                                               addr453:
                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr448:
                                                                                                                                                                                                                  addr447:
                                                                                                                                                                                                                  addr434:
                                                                                                                                                                                                                  addr433:
                                                                                                                                                                                                                  addr432:
                                                                                                                                                                                                                  addr430:
                                                                                                                                                                                                                  addr429:
                                                                                                                                                                                                                  §§push(_loc6_.m_sweep.c);
                                                                                                                                                                                                                  §§push(_loc6_.m_sweep.c.x);
                                                                                                                                                                                                                  §§push(param1.§@[§);
                                                                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr446:
                                                                                                                                                                                                                     §§push(§§pop() * _loc6_.§]!g§.x);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                  addr356:
                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                  if(_loc13_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                                                                        if(_loc13_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                           if(_loc13_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param1.§@[§);
                                                                                                                                                                                                                                       if(_loc13_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.§]!g§);
                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr419:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      addr423:
                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                               if(_loc13_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().a);
                                                                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§@[§);
                                                                                                                                                                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().a = §§pop();
                                                                                                                                                                                                                                                                     addr352:
                                                                                                                                                                                                                                                                     §§goto(addr293);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr456);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr455);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr463);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr356);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr679);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr448);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr446);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr447);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr419);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr434);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr419);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr433);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr432);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr430);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr453);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr429);
                                                                                                                                                                                                                  addr449:
                                                                                                                                                                                                                  addr459:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr651);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr703);
                                                                                                                                                                                                            addr460:
                                                                                                                                                                                                            addr604:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr600);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * param1.§!!K§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                      addr493:
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc13_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr460);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr592);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr604);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr683:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(!(_loc14_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr694:
                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                      addr695:
                                                                                                                                                                                                      §§push(§§pop() + §§pop() * _loc8_);
                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr699:
                                                                                                                                                                                                         if(§§pop() > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr700);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr503);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * _loc6_.§]!g§.y);
                                                                                                                                                                                                      if(!(_loc14_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr694);
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                                                                §§goto(addr683);
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                addr719:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr463);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr589);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr581);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr699);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr571);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr693);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr694);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr589);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr581);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr695);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr581);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr694);
                                                                                                                                                }
                                                                                                                                                §§goto(addr589);
                                                                                                                                             }
                                                                                                                                             §§goto(addr581);
                                                                                                                                          }
                                                                                                                                          §§goto(addr719);
                                                                                                                                       }
                                                                                                                                       §§goto(addr665);
                                                                                                                                    }
                                                                                                                                    §§goto(addr678);
                                                                                                                                 }
                                                                                                                                 §§goto(addr677);
                                                                                                                              }
                                                                                                                              §§goto(addr676);
                                                                                                                           }
                                                                                                                           §§goto(addr638);
                                                                                                                        }
                                                                                                                        §§goto(addr641);
                                                                                                                     }
                                                                                                                     §§goto(addr664);
                                                                                                                  }
                                                                                                                  §§goto(addr702);
                                                                                                               }
                                                                                                               §§goto(addr662);
                                                                                                            }
                                                                                                            §§goto(addr493);
                                                                                                         }
                                                                                                         §§goto(addr456);
                                                                                                      }
                                                                                                      §§goto(addr449);
                                                                                                   }
                                                                                                   §§goto(addr352);
                                                                                                }
                                                                                                addr720:
                                                                                                §§goto(addr723);
                                                                                                §§push(_loc2_);
                                                                                                §§push(this.§7!h§);
                                                                                             }
                                                                                             §§goto(addr463);
                                                                                          }
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    §§goto(addr579);
                                                                                 }
                                                                                 §§push(param1.§@[§);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(_loc6_.§]!g§);
                                                                                    if(!(_loc14_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc14_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§goto(addr694);
                                                                                                   §§push(param1.§@[§);
                                                                                                }
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                             §§goto(addr589);
                                                                                          }
                                                                                          §§goto(addr567);
                                                                                       }
                                                                                       §§goto(addr571);
                                                                                    }
                                                                                    §§goto(addr694);
                                                                                 }
                                                                                 §§goto(addr699);
                                                                              }
                                                                              §§goto(addr724);
                                                                           }
                                                                           §§goto(addr724);
                                                                        }
                                                                     }
                                                                     addr143:
                                                                     if(_loc14_ && _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr143);
                                                                           §§goto(addr143);
                                                                        }
                                                                        addr191:
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr720);
                                                               }
                                                               else
                                                               {
                                                                  addr190:
                                                                  _loc3_ = 0;
                                                                  addr199:
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         §§goto(addr724);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr720);
                                                }
                                                §§goto(addr724);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr723);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr108);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr720);
                        }
                     }
                     else
                     {
                        this.§#r§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr222);
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §,!3§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_ || param1)
         {
            if(this.§1!4§ == null)
            {
               if(_loc7_)
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < this.§4A§)
            {
               _loc3_ = this.§8U§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!(_loc6_ && this))
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     _loc5_ = §§pop();
                     addr157:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr108);
            }
            return;
         }
         addr38:
      }
      
      public function §@!O§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            param1.§;!4§ = this.§7!h§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§7!h§ + 1;
         _loc3_.§7!h§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§7!h§;
         this.§`i§[_loc2_] = param1;
      }
      
      public function §2&§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§4A§ + 1;
         _loc3_.§4A§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§4A§;
         this.§8U§[_loc2_] = param1;
      }
      
      public function §&![§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§'#§ + 1;
         _loc3_.§'#§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§'#§;
         this.§#r§[_loc2_] = param1;
      }
   }
}
