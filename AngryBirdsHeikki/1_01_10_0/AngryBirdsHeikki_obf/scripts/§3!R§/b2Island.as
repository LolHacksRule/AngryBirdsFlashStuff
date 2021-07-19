package §3!R§
{
   import §!4§.*;
   import §"d§.*;
   import §6A§.*;
   import §=0§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §"!!§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"!!§ = new b2ContactImpulse();
         }
      }
      
      private var §[!<§;
      
      private var § !I§:b2ContactListener;
      
      private var §?k§:b2ContactSolver;
      
      b2internal var §<7§:Vector.<b2Body>;
      
      b2internal var § i§:Vector.<b2Contact>;
      
      b2internal var §&!H§:Vector.<b2Joint>;
      
      b2internal var §7!6§:int;
      
      b2internal var §>#§:int;
      
      b2internal var § !N§:int;
      
      private var §>S§:int;
      
      b2internal var §8!2§:int;
      
      b2internal var §2!d§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§<7§ = new Vector.<b2Body>();
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     this.§ i§ = new Vector.<b2Contact>();
                     do
                     {
                        this.§&!H§ = new Vector.<b2Joint>();
                     }
                     while(!_loc2_);
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §';§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            this.§>S§ = param1;
            while(true)
            {
               this.§8!2§ = param2;
            }
            addr249:
         }
         loop1:
         while(true)
         {
            this.§2!d§ = param3;
            loop2:
            while(true)
            {
               this.§7!6§ = 0;
               loop3:
               while(true)
               {
                  if(!_loc8_)
                  {
                     continue loop2;
                  }
                  if(_loc9_)
                  {
                     break;
                  }
                  this.§ !N§ = 0;
                  while(true)
                  {
                     this.§>#§ = 0;
                     continue loop3;
                     addr178:
                     if(!(_loc9_ && param1))
                     {
                        if(!_loc9_)
                        {
                           this.§?k§ = param6;
                           while(_loc8_)
                           {
                              _loc7_ = int(this.§<7§.length);
                              if(!(_loc8_ || param3))
                              {
                                 continue;
                              }
                              addr122:
                              if(_loc7_ >= param1)
                              {
                                 addr130:
                                 _loc7_ = int(this.§ i§.length);
                                 addr126:
                                 if(!(_loc9_ && param2))
                                 {
                                    addr75:
                                    §§push(_loc7_);
                                    if(_loc8_)
                                    {
                                       if(!_loc9_)
                                       {
                                          addr82:
                                          if(§§pop() >= param2)
                                          {
                                             addr83:
                                             if(_loc8_)
                                             {
                                                addr89:
                                                §§push(int(this.§&!H§.length));
                                                if(_loc8_ || param2)
                                                {
                                                   _loc7_ = §§pop();
                                                   addr97:
                                                   §§push(_loc7_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(param3);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              if(_loc9_ && param3)
                                                                              {
                                                                                 §§goto(addr126);
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr126);
                                                                        }
                                                                        addr109:
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc7_++;
                                                                           addr100:
                                                                           §§goto(addr75);
                                                                        }
                                                                        §§goto(addr122);
                                                                     }
                                                                     §§goto(addr83);
                                                                  }
                                                                  §§goto(addr97);
                                                               }
                                                               addr63:
                                                               if(!_loc9_)
                                                               {
                                                                  §§goto(addr97);
                                                               }
                                                               _loc7_++;
                                                               §§goto(addr63);
                                                               addr74:
                                                            }
                                                            this.§&!H§[_loc7_] = null;
                                                            §§goto(addr74);
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      §§goto(addr82);
                                                   }
                                                   §§goto(addr89);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr100);
                                          }
                                          this.§ i§[_loc7_] = null;
                                          §§goto(addr109);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr89);
                                 }
                                 _loc7_++;
                                 §§goto(addr109);
                                 addr150:
                              }
                              this.§<7§[_loc7_] = null;
                              §§goto(addr150);
                           }
                           loop7:
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 while(!(_loc9_ && param2))
                                 {
                                    this.§ !I§ = param5;
                                    continue loop7;
                                 }
                                 continue loop3;
                                 addr192:
                              }
                              §§goto(addr178);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr249);
            }
         }
      }
      
      public function §?P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7!6§ = 0;
            while(true)
            {
               this.§ !N§ = 0;
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.§>#§ = 0;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §]!G§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         if(!_loc19_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§7!6§)
         {
            if((_loc6_ = this.§<7§[_loc4_]).§0i§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc19_ && this))
               {
                  loop19:
                  while(true)
                  {
                     _loc4_++;
                     if(!(_loc19_ && param2))
                     {
                        addr159:
                        if(false)
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(_loc6_.m_angularVelocity);
                              if(_loc18_)
                              {
                                 §§push(b2Math);
                                 §§push(1);
                                 §§push(param1.§?u§);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() * _loc6_.§"!V§);
                                 }
                                 §§push(§§pop() * §§pop().§>I§(§§pop() - §§pop(),0,1));
                              }
                              §§pop().m_angularVelocity = §§pop();
                              §§goto(addr159);
                           }
                           addr161:
                        }
                        continue loop0;
                     }
                     while(!_loc19_)
                     {
                        continue loop19;
                     }
                     loop7:
                     while(!_loc19_)
                     {
                        if(_loc18_)
                        {
                           addr217:
                           while(true)
                           {
                              §§goto(addr161);
                           }
                           addr217:
                        }
                        else
                        {
                           addr212:
                           loop10:
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(_loc6_.m_angularVelocity);
                              if(_loc18_ || param2)
                              {
                                 §§push(param1.§?u§);
                                 if(!_loc19_)
                                 {
                                    §§push(_loc6_.§-2§);
                                    if(!(_loc19_ && param2))
                                    {
                                       addr254:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc19_ && param2))
                                       {
                                          addr252:
                                          §§push(§§pop() * _loc6_.§'!K§);
                                       }
                                       §§pop().m_angularVelocity = §§pop() + §§pop();
                                       break loop7;
                                    }
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr254);
                              addr285:
                              while(true)
                              {
                                 §§pop().y = §§pop();
                                 continue loop10;
                              }
                           }
                           while(true)
                           {
                              §§pop().§0O§(§§pop());
                              continue loop7;
                           }
                           addr212:
                           addr286:
                        }
                     }
                     while(true)
                     {
                        §§push(_loc6_.§@S§);
                        if(!_loc19_)
                        {
                           §§push(b2Math);
                           §§push(1);
                           §§push(param1.§?u§);
                           if(_loc18_)
                           {
                              §§push(§§pop() * _loc6_.§0N§);
                           }
                           §§push(§§pop().§>I§(§§pop() - §§pop(),0,1));
                           if(!(_loc19_ && param2))
                           {
                              if(_loc18_)
                              {
                                 §§goto(addr212);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(param1.§?u§);
                                    if(_loc18_)
                                    {
                                       while(true)
                                       {
                                          §§push(param2.y);
                                          if(_loc18_)
                                          {
                                             addr269:
                                             loop13:
                                             while(true)
                                             {
                                                §§push(_loc6_.§",§);
                                                if(!(_loc19_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.§5l§);
                                                      addr280:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().y);
                                                         addr281:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      continue loop13;
                                                   }
                                                   addr278:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   continue loop13;
                                                }
                                             }
                                             addr269:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       addr265:
                                    }
                                    addr284:
                                    while(true)
                                    {
                                       §§goto(addr285);
                                    }
                                 }
                                 addr261:
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr285);
                        }
                        else
                        {
                           addr258:
                           while(true)
                           {
                              §§push(_loc6_.§@S§);
                              addr260:
                              while(true)
                              {
                              }
                           }
                           addr258:
                        }
                        §§goto(addr261);
                     }
                  }
               }
               §§goto(addr217);
            }
            else
            {
               §§push(_loc6_.§@S§);
               if(_loc18_ || this)
               {
                  §§push(_loc6_.§@S§);
                  if(!_loc19_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc19_ && param2))
                     {
                        §§push(param1.§?u§);
                        if(!(_loc19_ && param3))
                        {
                           §§push(param2.x);
                           if(!_loc19_)
                           {
                              §§push(_loc6_.§",§);
                              if(!_loc19_)
                              {
                                 §§push(_loc6_.§5l§);
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc18_)
                                       {
                                          addr117:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc19_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_ || param2)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc18_ || param3)
                                                {
                                                   addr141:
                                                   §§pop().x = §§pop();
                                                   if(_loc18_ || param3)
                                                   {
                                                      §§goto(addr258);
                                                      §§push(_loc6_.§@S§);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr280);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr269);
                        }
                        §§goto(addr284);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr260);
               }
            }
            §§goto(addr258);
         }
         if(_loc18_)
         {
            §§push(this.§?k§);
            if(!(_loc19_ && param3))
            {
               §§pop().§';§(param1,this.§ i§,this.§ !N§,this.§[!<§);
               addr310:
               §§push(this.§?k§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!_loc19_)
            {
               §§push(0);
               if(!_loc19_)
               {
                  _loc4_ = §§pop();
                  if(_loc18_ || param3)
                  {
                     loop21:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc18_ || param3)
                        {
                           while(true)
                           {
                              §§push(this.§>#§);
                              if(!_loc19_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    (_loc7_ = this.§&!H§[_loc4_]).InitVelocityConstraints(param1);
                                    if(!(_loc19_ && param3))
                                    {
                                       _loc4_++;
                                    }
                                    continue loop21;
                                 }
                                 if(_loc18_)
                                 {
                                    §§push(0);
                                    if(_loc18_ || this)
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc19_)
                                       {
                                          addr444:
                                          loop154:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc19_ && param3))
                                             {
                                                loop151:
                                                while(true)
                                                {
                                                   §§push(param1.§-7§);
                                                   if(!(_loc19_ && this))
                                                   {
                                                      loop152:
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            addr376:
                                                            §§push(0);
                                                            if(_loc18_ || param1)
                                                            {
                                                               break loop21;
                                                            }
                                                            break;
                                                         }
                                                         if(!_loc19_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc19_ && param3))
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc18_)
                                                                     {
                                                                        break loop152;
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr1649:
                                                                  _loc4_ = §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                     addr1652:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        addr1682:
                                                                        loop141:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§7!6§);
                                                                           addr1684:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 (_loc6_ = this.§<7§[_loc4_]).SetAwake(false);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    _loc4_++;
                                                                                 }
                                                                                 continue loop141;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                                  addr498:
                                                               }
                                                               loop126:
                                                               while(true)
                                                               {
                                                                  loop127:
                                                                  while(true)
                                                                  {
                                                                     §§push(b2Settings.b2_angularSleepTolerance);
                                                                     if(_loc18_)
                                                                     {
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           addr1287:
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              §§push(b2Settings.b2_angularSleepTolerance);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr1301:
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          _loc17_ = §§pop();
                                                                                          loop128:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc19_ && param2))
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            continue loop128;
                                                                                                         }
                                                                                                         addr1646:
                                                                                                         addr1646:
                                                                                                         §§push(0);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§goto(addr1649);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1263:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§'P§);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            break loop151;
                                                                                                         }
                                                                                                         §§goto(addr1684);
                                                                                                      }
                                                                                                      addr1355:
                                                                                                   }
                                                                                                   §§goto(addr1684);
                                                                                                }
                                                                                                §§goto(addr1682);
                                                                                             }
                                                                                             loop116:
                                                                                             while(true)
                                                                                             {
                                                                                                addr1360:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr1361:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§4!5§(_loc8_.§^i§);
                                                                                                      addr1365:
                                                                                                      loop118:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param3);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && param3))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(Number.MAX_VALUE));
                                                                                                                           addr1349:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc15_ = §§pop();
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr1352:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                    break loop127;
                                                                                                                                 }
                                                                                                                                 addr1352:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr1652);
                                                                                                                        }
                                                                                                                        addr1346:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr1640:
                                                                                                                        if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                                                        {
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§goto(addr1646);
                                                                                                                           }
                                                                                                                           §§goto(addr1652);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1649);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1382:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        break loop118;
                                                                                                                     }
                                                                                                                     _loc4_++;
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr1382:
                                                                                                               }
                                                                                                               §§goto(addr1684);
                                                                                                            }
                                                                                                            addr1372:
                                                                                                         }
                                                                                                         addr1385:
                                                                                                         loop159:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr1354:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr1355);
                                                                                                               continue loop159;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop116;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1640);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr1640);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              §§goto(addr1287);
                                                                           }
                                                                           addr1325:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           if(_loc18_)
                                                                           {
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue loop126;
                                                                                 }
                                                                                 §§goto(addr1361);
                                                                              }
                                                                              §§goto(addr1365);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr1646);
                                                                     }
                                                                     §§goto(addr1301);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(b2Settings.b2_linearSleepTolerance);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§goto(addr1325);
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr1349);
                                                                  }
                                                                  §§goto(addr1640);
                                                               }
                                                            }
                                                            loop129:
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc18_ || this)
                                                               {
                                                                  addr1381:
                                                                  if(true)
                                                                  {
                                                                     addr1208:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc19_ && param3))
                                                                        {
                                                                           break loop154;
                                                                        }
                                                                        §§goto(addr1649);
                                                                     }
                                                                     addr1208:
                                                                  }
                                                                  loop114:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc19_)
                                                                           {
                                                                              continue loop129;
                                                                           }
                                                                           §§goto(addr1682);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1246:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc13_);
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 break loop114;
                                                                              }
                                                                              §§goto(addr1382);
                                                                           }
                                                                           addr1246:
                                                                        }
                                                                        §§goto(addr1684);
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1382);
                                                                  }
                                                                  addr1381:
                                                                  addr1103:
                                                               }
                                                               §§goto(addr1372);
                                                            }
                                                            addr1093:
                                                         }
                                                         §§goto(addr1640);
                                                      }
                                                      loop142:
                                                      while(true)
                                                      {
                                                         §§push(this.§>#§);
                                                         if(_loc18_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  addr508:
                                                                  _loc8_.§9x§();
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc18_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           addr1067:
                                                                           while(true)
                                                                           {
                                                                              addr1074:
                                                                              §§push(_loc4_);
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 addr1075:
                                                                                 §§push(this.§7!6§);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    break loop142;
                                                                                 }
                                                                                 §§goto(addr1632);
                                                                              }
                                                                              §§goto(addr1682);
                                                                           }
                                                                           addr1067:
                                                                        }
                                                                        §§goto(addr1652);
                                                                     }
                                                                     §§goto(addr1263);
                                                                  }
                                                                  §§goto(addr1246);
                                                               }
                                                               addr1082:
                                                               §§push(0);
                                                               if(!_loc19_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                     §§goto(addr1354);
                                                                     addr1088:
                                                                  }
                                                                  §§goto(addr1352);
                                                               }
                                                               §§goto(addr1093);
                                                            }
                                                            else
                                                            {
                                                               (_loc7_ = this.§&!H§[_loc4_]).§9x§();
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  _loc4_++;
                                                               }
                                                               §§goto(addr498);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               §§goto(addr1082);
                                                            }
                                                            addr1223:
                                                            §§push(_loc12_);
                                                            if(!(_loc19_ && param3))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc18_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§goto(addr1246);
                                                                                 }
                                                                                 §§goto(addr1385);
                                                                              }
                                                                              addr1243:
                                                                           }
                                                                           §§goto(addr1381);
                                                                        }
                                                                        §§goto(addr1382);
                                                                     }
                                                                     addr1234:
                                                                  }
                                                                  §§goto(addr1243);
                                                               }
                                                               addr1231:
                                                            }
                                                            §§goto(addr1381);
                                                         }
                                                         else
                                                         {
                                                            if((_loc6_ = this.§<7§[_loc4_]).§0i§() == b2Body.b2_staticBody)
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  loop79:
                                                                  while(true)
                                                                  {
                                                                     _loc4_++;
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        if(!_loc19_)
                                                                        {
                                                                           addr586:
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              if(!(_loc19_ && param2))
                                                                              {
                                                                                 if(!(_loc19_ && this))
                                                                                 {
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       addr614:
                                                                                       if(false)
                                                                                       {
                                                                                          loop67:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_.§-W§();
                                                                                             addr619:
                                                                                             addr1050:
                                                                                             loop68:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc18_ || param2)
                                                                                                {
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop79;
                                                                                                   }
                                                                                                   loop70:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop47:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         loop48:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                            addr813:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  addr795:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     addr796:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().a0 = §§pop();
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr646:
                                                                                                                  if(!(_loc18_ || this))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     continue loop48;
                                                                                                                  }
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(param1.§?u§);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§pop().a = §§pop();
                                                                                                                        loop66:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop67;
                                                                                                                                    }
                                                                                                                                    addr1066:
                                                                                                                                    addr1066:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       loop28:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             loop29:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc19_ && param3))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      addr1039:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         addr1040:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr1041:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1038:
                                                                                                                                                }
                                                                                                                                                addr1042:
                                                                                                                                                loop31:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                   loop32:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         break loop28;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.§@S§);
                                                                                                                                                            addr1049:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().Normalize();
                                                                                                                                                               break loop68;
                                                                                                                                                            }
                                                                                                                                                            addr1001:
                                                                                                                                                            while(_loc18_ || param3)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§?u§);
                                                                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_ && param2)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop31;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop29;
                                                                                                                                                                     }
                                                                                                                                                                     addr884:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc11_ = §§pop();
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr900:
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr911:
                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                          addr921:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc18_ || param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr929:
                                                                                                                                                                                                break loop66;
                                                                                                                                                                                                addr929:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             while(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * param1.§?o§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                   continue loop70;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr945:
                                                                                                                                                                                                         §§push(§§pop() * param1.§?o§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop47;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr949:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr945);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop32;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1039);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr929);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr921);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1041);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr929);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1040);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr921);
                                                                                                                                                               }
                                                                                                                                                               while(_loc18_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                  loop54:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     addr775:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                        addr777:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           addr778:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              addr779:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§?u§);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.§@S§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       addr786:
                                                                                                                                                                                       addr748:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc6_.§@S§);
                                                                                                                                                                                       if(!(_loc18_ || param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr766:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr769:
                                                                                                                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                if(_loc19_ && param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop54;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr646);
                                                                                                                                                                                                §§goto(addr586);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                             addr770:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr786);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          addr788:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             addr789:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr787:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr787);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1047:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr837);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.§@S§);
                                                                                                                                                addr1055:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   break loop28;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1053:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc19_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             break loop66;
                                                                                                                                          }
                                                                                                                                          break loop66;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr919);
                                                                                                                              }
                                                                                                                              §§goto(addr932);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr789);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           §§goto(addr1066);
                                                                                                                        }
                                                                                                                        addr678:
                                                                                                                        addr1065:
                                                                                                                     }
                                                                                                                     §§goto(addr796);
                                                                                                                  }
                                                                                                                  §§goto(addr795);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr797);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.§@S§);
                                                                                                loop36:
                                                                                                for(; _loc18_; while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.§@S§);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr955);
                                                                                                })
                                                                                                {
                                                                                                   §§push(_loc6_.§@S§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr1017:
                                                                                                      addr955:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(b2Settings.b2_maxTranslation);
                                                                                                         addr1019:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§?o§);
                                                                                                            addr1021:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr1022:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr1023:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     continue loop36;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(_loc6_.§@S§);
                                                                                                      if(_loc19_ && param2)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc19_ && param3))
                                                                                                      {
                                                                                                         §§push(b2Settings.b2_maxTranslation);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(!(_loc19_ && param1))
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(param1.§?o§);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr990:
                                                                                                                     §§push(§§pop() * (§§pop() * §§pop()));
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           §§goto(addr1001);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1017);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1023);
                                                                                                                  }
                                                                                                                  §§goto(addr1021);
                                                                                                               }
                                                                                                               §§goto(addr1019);
                                                                                                            }
                                                                                                            §§goto(addr1022);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr990);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1049);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1067);
                                                                                    }
                                                                                    §§goto(addr1024);
                                                                                 }
                                                                                 §§goto(addr949);
                                                                              }
                                                                              §§goto(addr813);
                                                                           }
                                                                           §§goto(addr769);
                                                                        }
                                                                        §§goto(addr678);
                                                                     }
                                                                     §§goto(addr619);
                                                                  }
                                                                  §§goto(addr1074);
                                                               }
                                                               §§goto(addr1050);
                                                            }
                                                            else
                                                            {
                                                               §§push(param1.§?u§);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(_loc6_.§@S§);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc18_)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§goto(addr1053);
                                                                                 §§push(param1.§?u§);
                                                                              }
                                                                              §§goto(addr1066);
                                                                           }
                                                                           §§goto(addr1065);
                                                                        }
                                                                        §§goto(addr1042);
                                                                     }
                                                                     §§goto(addr1039);
                                                                  }
                                                                  §§goto(addr1055);
                                                               }
                                                            }
                                                            §§goto(addr1038);
                                                         }
                                                         §§goto(addr1075);
                                                      }
                                                      §§goto(addr1632);
                                                      addr461:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                      if(_loc18_ || param2)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§goto(addr1103);
                                                            }
                                                            §§goto(addr1361);
                                                         }
                                                         §§goto(addr1231);
                                                      }
                                                      §§goto(addr1234);
                                                   }
                                                   §§goto(addr1360);
                                                }
                                                addr452:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§>#§);
                                             if(!_loc19_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                      §§goto(addr1223);
                                                   }
                                                   §§goto(addr1352);
                                                }
                                                else
                                                {
                                                   §§push((_loc7_ = this.§&!H§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                   if(_loc18_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc19_)
                                                      {
                                                         _loc14_ = §§pop();
                                                         if(_loc18_)
                                                         {
                                                            §§push(_loc13_);
                                                            loop131:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop132:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop138:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr1207:
                                                                        loop137:
                                                                        while(true)
                                                                        {
                                                                           addr1175:
                                                                           loop136:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              if(_loc18_ || param3)
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    continue loop131;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          continue loop138;
                                                                                       }
                                                                                       if(_loc19_ && param2)
                                                                                       {
                                                                                          continue loop132;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          break loop136;
                                                                                       }
                                                                                    }
                                                                                    break loop136;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              do
                                                                              {
                                                                                 _loc5_++;
                                                                              }
                                                                              while(!_loc18_);
                                                                              
                                                                              if(!_loc18_)
                                                                              {
                                                                                 continue loop137;
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1175);
                                                                           }
                                                                           §§goto(addr1208);
                                                                        }
                                                                     }
                                                                     addr1206:
                                                                  }
                                                                  §§goto(addr1198);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1207);
                                                      }
                                                      §§goto(addr1206);
                                                   }
                                                   §§goto(addr1186);
                                                }
                                             }
                                             §§goto(addr1632);
                                          }
                                          addr444:
                                       }
                                       §§goto(addr1346);
                                    }
                                    §§goto(addr452);
                                 }
                                 §§goto(addr444);
                              }
                              §§goto(addr1684);
                           }
                           addr357:
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc5_ = §§pop();
                        if(_loc18_ || param3)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc18_)
                              {
                                 §§push(this.§>#§);
                                 if(!(_loc19_ && param1))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       (_loc7_ = this.§&!H§[_loc5_]).SolveVelocityConstraints(param1);
                                       if(_loc18_)
                                       {
                                          _loc5_++;
                                       }
                                       continue;
                                    }
                                    if(!(_loc19_ && param1))
                                    {
                                       while(true)
                                       {
                                          _loc8_.SolveVelocityConstraints();
                                          if(_loc18_ || param3)
                                          {
                                             _loc4_++;
                                             if(_loc18_ || param3)
                                             {
                                                §§goto(addr444);
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr508);
                                       addr427:
                                    }
                                    §§goto(addr1088);
                                 }
                                 §§goto(addr461);
                              }
                              break;
                           }
                           §§goto(addr1682);
                        }
                        break;
                        §§goto(addr376);
                     }
                     §§goto(addr1082);
                  }
                  §§goto(addr508);
               }
               §§goto(addr357);
            }
            §§goto(addr427);
         }
         §§goto(addr310);
      }
      
      public function §=!P§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:* = false;
         var _loc12_:Boolean = false;
         if(_loc14_ || _loc3_)
         {
            §§push(this.§?k§);
            if(!(_loc13_ && _loc3_))
            {
               §§pop().§';§(param1,this.§ i§,this.§ !N§,this.§[!<§);
               addr60:
               §§push(this.§?k§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!_loc13_)
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
                  §§push(this.§>#§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc14_)
                                    {
                                       §§push(param1.§-7§);
                                       if(!(_loc13_ && param1))
                                       {
                                          if(!_loc13_)
                                          {
                                             if(!(_loc14_ || param1))
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§push(0);
                                                   if(_loc14_)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            if(_loc13_ && _loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(!(_loc13_ && this))
                                                            {
                                                               if(!(_loc13_ && _loc2_))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     addr781:
                                                                     §§push(_loc2_);
                                                                     break;
                                                                  }
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr130:
                                                                     loop9:
                                                                     for(; !(_loc13_ && _loc2_); continue loop7)
                                                                     {
                                                                        §§push(this.§>#§);
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(!(_loc13_ && _loc2_))
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    _loc2_++;
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr185:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr785:
                                                                                       §§push(0.75);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc5_:* = §§pop();
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          addr1024:
                                                                                          _loc2_ = 0;
                                                                                          addr797:
                                                                                          addr1025:
                                                                                          §§push(_loc2_);
                                                                                          if(_loc14_ || this)
                                                                                          {
                                                                                             §§push(param1.§'P§);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(!(_loc13_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(_loc14_ || _loc2_)
                                                                                                         {
                                                                                                            addr827:
                                                                                                            this.§4!5§(_loc4_.§^i§);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  if(_loc13_ && this)
                                                                                                                  {
                                                                                                                     addr938:
                                                                                                                     addr976:
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        addr942:
                                                                                                                        §§push(Boolean(Boolean(§§pop())));
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           _loc3_++;
                                                                                                                           addr928:
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              addr890:
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 addr896:
                                                                                                                                 if(§§pop() >= this.§>#§)
                                                                                                                                 {
                                                                                                                                    addr897:
                                                                                                                                    if(_loc14_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr905:
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(_loc14_ || param1)
                                                                                                                                       {
                                                                                                                                          addr913:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr917:
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr856:
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc13_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr876:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr827);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr897);
                                                                                                                                                                           }
                                                                                                                                                                           addr889:
                                                                                                                                                                           §§goto(addr797);
                                                                                                                                                                        }
                                                                                                                                                                        _loc2_++;
                                                                                                                                                                        §§goto(addr889);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr938);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr942);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr905);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr913);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr917);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr942);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr856);
                                                                                                                                                }
                                                                                                                                                addr989:
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr959:
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(_loc14_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr967:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr968:
                                                                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§goto(addr976);
                                                                                                                                                               }
                                                                                                                                                               addr1021:
                                                                                                                                                               _loc10_ = §§pop();
                                                                                                                                                               addr1000:
                                                                                                                                                               _loc11_ = true;
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr994:
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     §§goto(addr890);
                                                                                                                                                                     addr997:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1024);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1025);
                                                                                                                                                               addr1022:
                                                                                                                                                               addr1020:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr942);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1021);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1000);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr968);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1022);
                                                                                                                                             }
                                                                                                                                             §§goto(addr876);
                                                                                                                                          }
                                                                                                                                          §§goto(addr967);
                                                                                                                                       }
                                                                                                                                       §§goto(addr968);
                                                                                                                                    }
                                                                                                                                    §§goto(addr997);
                                                                                                                                 }
                                                                                                                                 addr988:
                                                                                                                                 _loc12_ = this.§&!H§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                                                                                                                                 §§goto(addr989);
                                                                                                                              }
                                                                                                                              §§goto(addr994);
                                                                                                                           }
                                                                                                                           §§goto(addr968);
                                                                                                                           addr946:
                                                                                                                        }
                                                                                                                        §§goto(addr988);
                                                                                                                     }
                                                                                                                     §§goto(addr959);
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr843:
                                                                                                               }
                                                                                                               §§goto(addr946);
                                                                                                            }
                                                                                                            §§goto(addr917);
                                                                                                         }
                                                                                                         §§goto(addr928);
                                                                                                      }
                                                                                                      §§goto(addr889);
                                                                                                   }
                                                                                                   §§goto(addr827);
                                                                                                }
                                                                                                §§goto(addr1020);
                                                                                                §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                             }
                                                                                             §§goto(addr896);
                                                                                          }
                                                                                          §§goto(addr890);
                                                                                       }
                                                                                       §§goto(addr843);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc3_++;
                                                                                    addr181:
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr785);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§&!H§[_loc3_].SolveVelocityConstraints(param1);
                                                                           }
                                                                           §§goto(addr181);
                                                                        }
                                                                        if(_loc14_ || _loc2_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr191:
                                                                  if(_loc13_ && _loc2_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  addr184:
                                                                  _loc3_ = 0;
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr785);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr785);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr139);
                                       }
                                       addr784:
                                       if(§§pop() < §§pop())
                                       {
                                          if((_loc6_ = this.§<7§[_loc2_]).§0i§() == b2Body.b2_staticBody)
                                          {
                                             if(_loc14_ || param1)
                                             {
                                                addr285:
                                                _loc2_++;
                                                if(_loc14_)
                                                {
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(false)
                                                         {
                                                            addr299:
                                                            _loc6_.§-W§();
                                                            if(_loc14_ || this)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr285);
                                                               }
                                                               addr625:
                                                               §§push(_loc6_.m_angularVelocity);
                                                               if(!_loc13_)
                                                               {
                                                                  addr630:
                                                                  §§push(0);
                                                                  if(_loc14_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        addr633:
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           §§push(b2Settings.b2_maxRotation);
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 §§push(§§pop() * param1.§?o§);
                                                                              }
                                                                           }
                                                                           §§pop().m_angularVelocity = §§pop();
                                                                           addr657:
                                                                           if(!_loc13_)
                                                                           {
                                                                              _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                              addr481:
                                                                              _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                              addr497:
                                                                              addr480:
                                                                              addr500:
                                                                              addr478:
                                                                              addr515:
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 if(_loc14_ || _loc3_)
                                                                                 {
                                                                                    addr464:
                                                                                    addr454:
                                                                                    addr453:
                                                                                    addr451:
                                                                                    addr450:
                                                                                    §§push(_loc6_.m_sweep.c);
                                                                                    §§push(_loc6_.m_sweep.c.x);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       addr462:
                                                                                       §§push(§§pop() + param1.§?u§ * _loc6_.§@S§.x);
                                                                                    }
                                                                                    §§pop().x = §§pop();
                                                                                    addr465:
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          addr377:
                                                                                          §§push(_loc6_.m_sweep);
                                                                                          if(_loc14_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                if(!(_loc13_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc14_ || param1)
                                                                                                         {
                                                                                                            §§push(param1.§?u§);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               if(!(_loc13_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.§@S§);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           addr436:
                                                                                                                           §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                 if(!(_loc13_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc14_ || this)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().a);
                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc14_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr363:
                                                                                                                                                   §§push(param1.§?u§);
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                   }
                                                                                                                                                   §§pop().a = §§pop() + §§pop();
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc13_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr299);
                                                                                                                                                      }
                                                                                                                                                      addr528:
                                                                                                                                                      §§goto(addr497);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr465);
                                                                                                                                                }
                                                                                                                                                §§goto(addr481);
                                                                                                                                             }
                                                                                                                                             §§goto(addr363);
                                                                                                                                          }
                                                                                                                                          §§goto(addr480);
                                                                                                                                       }
                                                                                                                                       §§goto(addr500);
                                                                                                                                    }
                                                                                                                                    §§goto(addr478);
                                                                                                                                 }
                                                                                                                                 §§goto(addr377);
                                                                                                                                 addr446:
                                                                                                                              }
                                                                                                                              addr770:
                                                                                                                              _loc6_.§@S§.Normalize();
                                                                                                                              addr768:
                                                                                                                              §§push(_loc6_.§@S§);
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 addr746:
                                                                                                                                 §§pop().x = _loc6_.§@S§.x * (b2Settings.b2_maxTranslation * param1.§?o§);
                                                                                                                                 addr740:
                                                                                                                                 addr742:
                                                                                                                                 addr745:
                                                                                                                                 addr744:
                                                                                                                                 addr739:
                                                                                                                                 §§push(_loc6_.§@S§);
                                                                                                                                 if(!(_loc13_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§@S§);
                                                                                                                                    if(!(_loc13_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(_loc14_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§?o§);
                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr708:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr723:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc14_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr529:
                                                                                                                                                            §§push(param1.§?u§);
                                                                                                                                                            if(!(_loc13_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  addr541:
                                                                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc13_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              addr563:
                                                                                                                                                                              if(!(_loc13_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc13_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr596:
                                                                                                                                                                                             if(!(_loc13_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr603:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr625);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr481);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr630);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr779:
                                                                                                                                                                                                      _loc8_ = §§pop() * _loc6_.§@S§.y;
                                                                                                                                                                                                      addr777:
                                                                                                                                                                                                      §§push(_loc7_ * _loc7_);
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr755:
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         if(_loc14_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr765:
                                                                                                                                                                                                            if(§§pop() + §§pop() * _loc8_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr768);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr529);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr777);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr778:
                                                                                                                                                                                                      §§goto(addr778);
                                                                                                                                                                                                      addr780:
                                                                                                                                                                                                      addr774:
                                                                                                                                                                                                      addr776:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr765);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr625);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr755);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr630);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr765);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr596);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr777);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr625);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr765);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr630);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr777);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr563);
                                                                                                                                                            addr731:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr740);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr742);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr745);
                                                                                                                                                }
                                                                                                                                                §§goto(addr744);
                                                                                                                                             }
                                                                                                                                             §§goto(addr708);
                                                                                                                                          }
                                                                                                                                          §§goto(addr746);
                                                                                                                                       }
                                                                                                                                       §§goto(addr723);
                                                                                                                                    }
                                                                                                                                    §§goto(addr739);
                                                                                                                                 }
                                                                                                                                 §§goto(addr768);
                                                                                                                                 addr747:
                                                                                                                              }
                                                                                                                              §§goto(addr770);
                                                                                                                              addr771:
                                                                                                                           }
                                                                                                                           §§goto(addr481);
                                                                                                                           addr435:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr462);
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                         §§goto(addr464);
                                                                                                      }
                                                                                                      §§goto(addr436);
                                                                                                   }
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                                §§goto(addr453);
                                                                                             }
                                                                                             §§goto(addr451);
                                                                                          }
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                       §§goto(addr657);
                                                                                    }
                                                                                    §§goto(addr515);
                                                                                 }
                                                                                 §§goto(addr731);
                                                                              }
                                                                              §§goto(addr633);
                                                                           }
                                                                           §§goto(addr747);
                                                                        }
                                                                        §§goto(addr771);
                                                                     }
                                                                     §§push(_loc6_);
                                                                     §§push(b2Settings.b2_maxRotation);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop() * param1.§?o§);
                                                                     }
                                                                     §§pop().m_angularVelocity = §§pop();
                                                                     §§goto(addr528);
                                                                  }
                                                                  §§goto(addr777);
                                                               }
                                                               §§goto(addr779);
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr781);
                                                      }
                                                      §§goto(addr780);
                                                   }
                                                   §§goto(addr363);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr446);
                                          }
                                          §§push(param1.§?u§);
                                          if(!(_loc13_ && this))
                                          {
                                             §§push(_loc6_.§@S§);
                                             if(_loc14_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc14_)
                                                   {
                                                      addr272:
                                                      §§push(Number(§§pop()));
                                                      if(_loc14_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            §§goto(addr774);
                                                            §§push(param1.§?u§);
                                                         }
                                                      }
                                                      §§goto(addr779);
                                                   }
                                                   §§goto(addr541);
                                                }
                                                §§goto(addr603);
                                             }
                                             §§goto(addr776);
                                          }
                                          §§goto(addr272);
                                       }
                                       §§goto(addr785);
                                    }
                                    break;
                                 }
                                 §§goto(addr784);
                              }
                           }
                        }
                     }
                     else
                     {
                        this.§&!H§[_loc2_].InitVelocityConstraints(param1);
                        _loc2_++;
                        addr223:
                        if(_loc14_)
                        {
                           if(!_loc13_)
                           {
                              continue loop0;
                           }
                           §§goto(addr223);
                        }
                     }
                     §§goto(addr785);
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §4!5§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc6_ || _loc3_)
         {
            if(this.§ !I§ == null)
            {
               if(!(_loc7_ && _loc2_))
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < this.§ !N§)
            {
               _loc3_ = this.§ i§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(_loc6_ || _loc2_)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     _loc5_ = §§pop();
                     addr161:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr114);
            }
            return;
         }
         addr42:
      }
      
      public function §']§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            param1.§]4§ = this.§7!6§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§7!6§ + 1;
         _loc3_.§7!6§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§7!6§;
         this.§<7§[_loc2_] = param1;
      }
      
      public function §#5§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§ !N§ + 1;
         _loc3_.§ !N§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§ !N§;
         this.§ i§[_loc2_] = param1;
      }
      
      public function §!Q§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§>#§ + 1;
         _loc3_.§>#§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§>#§;
         this.§&!H§[_loc2_] = param1;
      }
   }
}
