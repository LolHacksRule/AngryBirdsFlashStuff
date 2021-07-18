package §6"1§
{
   import §'"-§.*;
   import §'"6§.*;
   import §,"[§.*;
   import §,,§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §@!_§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §@!_§ = new b2ContactImpulse();
         }
      }
      
      private var §>!`§;
      
      private var §,"1§:b2ContactListener;
      
      private var §,"V§:b2ContactSolver;
      
      b2internal var §;"[§:Vector.<b2Body>;
      
      b2internal var §=p§:Vector.<b2Contact>;
      
      b2internal var §,!f§:Vector.<b2Joint>;
      
      b2internal var §;0§:int;
      
      b2internal var §<!y§:int;
      
      b2internal var §%!0§:int;
      
      private var §?#§:int;
      
      b2internal var §9"3§:int;
      
      b2internal var §9!q§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§;"[§ = new Vector.<b2Body>();
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     this.§=p§ = new Vector.<b2Contact>();
                     do
                     {
                        this.§,!f§ = new Vector.<b2Joint>();
                     }
                     while(_loc2_);
                     
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
         §§goto(addr87);
      }
      
      public function §6!Q§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:int = 0;
         if(_loc8_)
         {
            this.§?#§ = param1;
            loop0:
            while(true)
            {
               this.§9"3§ = param2;
               loop1:
               while(true)
               {
                  this.§9!q§ = param3;
                  addr258:
                  if(_loc9_ && param2)
                  {
                     continue;
                  }
                  this.§%!0§ = 0;
                  while(true)
                  {
                     this.§<!y§ = 0;
                     while(_loc8_)
                     {
                        continue loop0;
                        loop7:
                        while(_loc8_ || param3)
                        {
                           this.§,"V§ = param6;
                           while(!_loc9_)
                           {
                              _loc7_ = this.§;"[§.length;
                              if(!(_loc9_ && param2))
                              {
                                 if(_loc9_ && param1)
                                 {
                                    continue loop7;
                                 }
                                 addr196:
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       this.§,"1§ = param5;
                                       continue loop7;
                                       §§goto(addr196);
                                    }
                                    addr222:
                                 }
                                 addr154:
                                 if(_loc7_ >= param1)
                                 {
                                    addr162:
                                    _loc7_ = this.§=p§.length;
                                    addr158:
                                    addr163:
                                    §§push(_loc7_);
                                    if(_loc8_ || param3)
                                    {
                                       if(!(_loc9_ && param3))
                                       {
                                          if(!_loc9_)
                                          {
                                             addr109:
                                             §§push(param2);
                                             if(_loc8_ || param2)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   addr131:
                                                   _loc7_ = this.§,!f§.length;
                                                   addr132:
                                                   addr117:
                                                   §§push(_loc7_);
                                                   if(_loc8_ || param3)
                                                   {
                                                      §§push(param3);
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr158);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            addr55:
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr132);
                                                                  }
                                                                  addr166:
                                                                  §§goto(addr154);
                                                               }
                                                               addr135:
                                                               §§goto(addr158);
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  _loc7_++;
                                                                  §§goto(addr55);
                                                               }
                                                               addr144:
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     _loc7_++;
                                                                     §§goto(addr135);
                                                                  }
                                                                  _loc7_++;
                                                                  §§goto(addr166);
                                                                  addr175:
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         this.§,!f§[_loc7_] = null;
                                                         §§goto(addr55);
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                this.§=p§[_loc7_] = null;
                                                §§goto(addr144);
                                             }
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr131);
                                 }
                                 this.§;"[§[_loc7_] = null;
                                 §§goto(addr175);
                                 continue loop7;
                              }
                           }
                           loop3:
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 §§goto(addr258);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§;0§ = 0;
                                    continue loop3;
                                 }
                                 addr270:
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr270);
      }
      
      public function §7!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§;0§ = 0;
            do
            {
               this.§%!0§ = 0;
               do
               {
                  this.§<!y§ = 0;
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §+!o§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(!(_loc19_ && param2))
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§;0§)
         {
            if((_loc6_ = this.§;"[§[_loc4_]).§>!f§() != b2Body.b2_dynamicBody)
            {
               if(_loc18_ || param1)
               {
                  loop14:
                  while(true)
                  {
                     _loc4_++;
                     if(_loc18_)
                     {
                        addr164:
                        if(!(_loc19_ && this))
                        {
                           while(false)
                           {
                              loop18:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(!_loc19_)
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§;J§);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * _loc6_.§]";§);
                                    }
                                    §§push(§§pop() * §§pop().§1"T§(§§pop() - §§pop(),0,1));
                                 }
                                 §§pop().m_angularVelocity = §§pop();
                                 addr194:
                                 while(_loc19_)
                                 {
                                    loop16:
                                    while(!_loc18_)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          §§push(_loc6_.m_angularVelocity);
                                          if(!_loc19_)
                                          {
                                             §§push(param1.§;J§);
                                             if(!(_loc19_ && param1))
                                             {
                                                §§push(_loc6_.§,H§);
                                                if(_loc18_ || this)
                                                {
                                                   addr274:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc19_ && param2))
                                                   {
                                                      addr272:
                                                      §§push(§§pop() * _loc6_.§1"@§);
                                                   }
                                                   §§pop().m_angularVelocity = §§pop() + §§pop();
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.§"!_§);
                                                      if(_loc18_ || param3)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(b2Math);
                                                            §§push(1);
                                                            §§push(param1.§;J§);
                                                            if(_loc18_ || param1)
                                                            {
                                                               §§push(§§pop() * _loc6_.§>!e§);
                                                            }
                                                            §§push(§§pop().§1"T§(§§pop() - §§pop(),0,1));
                                                            if(!(_loc19_ && param3))
                                                            {
                                                               if(!_loc18_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               §§pop().§!!L§(§§pop());
                                                               continue loop16;
                                                            }
                                                            addr310:
                                                            while(true)
                                                            {
                                                               §§pop().y = §§pop();
                                                               continue loop2;
                                                            }
                                                         }
                                                         addr207:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc6_.§"!_§);
                                                            addr280:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y);
                                                               break loop3;
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr278:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.§;J§);
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         addr290:
                                                         while(true)
                                                         {
                                                            §§push(param2.y);
                                                            if(_loc18_ || param2)
                                                            {
                                                               §§push(_loc6_.§-@§);
                                                               if(!_loc19_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_.§8"?§);
                                                                     addr305:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        addr306:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  addr303:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               addr307:
                                                            }
                                                            addr308:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                         addr290:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr310);
                                                      }
                                                   }
                                                   addr275:
                                                }
                                             }
                                             §§goto(addr272);
                                          }
                                          §§goto(addr274);
                                       }
                                    }
                                    continue loop18;
                                 }
                                 continue loop14;
                              }
                           }
                           continue loop0;
                           addr171:
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr194);
                  }
               }
               §§goto(addr171);
            }
            else
            {
               §§push(_loc6_.§"!_§);
               if(_loc18_ || param1)
               {
                  §§push(_loc6_.§"!_§);
                  if(_loc18_ || param2)
                  {
                     §§push(§§pop().x);
                     if(_loc18_)
                     {
                        §§push(param1.§;J§);
                        if(_loc18_)
                        {
                           §§push(param2.x);
                           if(_loc18_ || param1)
                           {
                              §§push(_loc6_.§-@§);
                              if(_loc18_ || param3)
                              {
                                 §§push(_loc6_.§8"?§);
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc18_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc19_ && param3))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_ || this)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      §§goto(addr278);
                                                      §§push(_loc6_.§"!_§);
                                                   }
                                                   §§goto(addr311);
                                                }
                                                §§goto(addr310);
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr303);
                                    }
                                    §§goto(addr306);
                                 }
                                 §§goto(addr305);
                              }
                              §§goto(addr307);
                           }
                           §§goto(addr308);
                        }
                        §§goto(addr290);
                     }
                     §§goto(addr310);
                  }
                  §§goto(addr280);
               }
            }
            §§goto(addr207);
         }
         if(_loc18_ || this)
         {
            §§push(this.§,"V§);
            if(_loc18_ || param1)
            {
               §§pop().§6!Q§(param1,this.§=p§,this.§%!0§,this.§>!`§);
               addr340:
               §§push(this.§,"V§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc18_ || this)
            {
               §§push(0);
               if(_loc18_ || this)
               {
                  _loc4_ = §§pop();
                  if(_loc18_)
                  {
                     loop20:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc19_)
                        {
                           §§push(this.§<!y§);
                           if(_loc18_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§,!f§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc18_)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!(_loc19_ && param3))
                              {
                                 §§push(0);
                                 if(_loc18_ || param3)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc19_)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc19_ && param3))
                                          {
                                             §§push(param1.§;N§);
                                             if(!(_loc19_ && param2))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      §§push(0);
                                                      if(_loc18_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc18_)
                                                         {
                                                            addr500:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc18_)
                                                               {
                                                                  break loop21;
                                                               }
                                                               addr1782:
                                                               loop58:
                                                               while(true)
                                                               {
                                                                  §§push(this.§;0§);
                                                                  addr1784:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        §§goto(addr1785);
                                                                     }
                                                                     (_loc6_ = this.§;"[§[_loc4_]).SetAwake(false);
                                                                     if(!_loc19_)
                                                                     {
                                                                        _loc4_++;
                                                                     }
                                                                     continue loop58;
                                                                  }
                                                               }
                                                            }
                                                            addr518:
                                                         }
                                                         addr1092:
                                                         §§push(0);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            break loop20;
                                                         }
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(param1.§="W§);
                                                            if(_loc18_ || param3)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           this.§""Q§(_loc8_.§6o§);
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 addr1450:
                                                                                 §§push(param3);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr1400:
                                                                                       loop148:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(Number.MAX_VALUE));
                                                                                          addr1403:
                                                                                          addr1389:
                                                                                          loop136:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc15_ = §§pop();
                                                                                             if(_loc18_ || this)
                                                                                             {
                                                                                                §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr1378:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr1379:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc16_ = §§pop();
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr1382:
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  break loop136;
                                                                                                               }
                                                                                                               continue loop148;
                                                                                                            }
                                                                                                            addr1767:
                                                                                                            §§goto(addr1781);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr1377:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1740:
                                                                                                §§push(_loc15_);
                                                                                             }
                                                                                             addr1743:
                                                                                             if(§§pop() >= b2Settings.b2_timeToSleep)
                                                                                             {
                                                                                                if(_loc18_ || this)
                                                                                                {
                                                                                                   addr1761:
                                                                                                   §§push(0);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr1764:
                                                                                                      _loc4_ = §§pop();
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§goto(addr1767);
                                                                                                      }
                                                                                                      §§goto(addr1785);
                                                                                                   }
                                                                                                   break loop25;
                                                                                                }
                                                                                                §§goto(addr1785);
                                                                                             }
                                                                                             addr1785:
                                                                                             return;
                                                                                             continue loop148;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr1318:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc18_ || param1)
                                                                                                         {
                                                                                                            if(_loc18_ || param3)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc18_ || param3)
                                                                                                                  {
                                                                                                                     _loc17_ = §§pop();
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc18_ || param1))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           if(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1764);
                                                                                                                        addr1369:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1379);
                                                                                                                  }
                                                                                                                  §§goto(addr1767);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1403);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1378);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr1377);
                                                                                                   }
                                                                                                   §§goto(addr1743);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr1743);
                                                                                             §§goto(addr1382);
                                                                                          }
                                                                                       }
                                                                                       addr1400:
                                                                                    }
                                                                                    §§goto(addr1785);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1460:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          _loc4_++;
                                                                                          break;
                                                                                       }
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       §§goto(addr1761);
                                                                                       §§goto(addr1450);
                                                                                    }
                                                                                    addr1460:
                                                                                 }
                                                                                 §§goto(addr1761);
                                                                              }
                                                                              addr1413:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc19_ && param2)
                                                                                 {
                                                                                    break loop25;
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                           §§goto(addr1782);
                                                                        }
                                                                     }
                                                                     §§goto(addr1761);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc19_)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           if(!(_loc19_ && param2))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr1123:
                                                                                 addr1140:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(!(_loc19_ && this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr1400);
                                                                                    }
                                                                                    §§goto(addr1460);
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(!(_loc19_ && param2))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr1121:
                                                                                          while(true)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                loop122:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc19_ && param3)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(this.§<!y§);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr1283:
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       if(_loc18_ || param3)
                                                                                                                                       {
                                                                                                                                          addr1459:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr1459:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1291:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1785);
                                                                                                                              }
                                                                                                                              §§goto(addr1459);
                                                                                                                           }
                                                                                                                           §§goto(addr1460);
                                                                                                                        }
                                                                                                                        §§goto(addr1283);
                                                                                                                     }
                                                                                                                     addr1271:
                                                                                                                  }
                                                                                                                  §§goto(addr1459);
                                                                                                               }
                                                                                                               addr1268:
                                                                                                            }
                                                                                                            §§goto(addr1316);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push((_loc7_ = this.§,!f§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                            if(!(_loc19_ && param2))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr1188:
                                                                                                                  _loc14_ = §§pop();
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     loop131:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop125:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop126:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop127:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr1208:
                                                                                                                                    addr1217:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr1231:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc19_ && param2))
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             continue loop127;
                                                                                                                                          }
                                                                                                                                          continue loop131;
                                                                                                                                       }
                                                                                                                                       continue loop122;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop126;
                                                                                                                                          }
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             continue loop125;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1231);
                                                                                                                                       §§goto(addr1208);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1229);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1246);
                                                                                                               }
                                                                                                               §§goto(addr1217);
                                                                                                            }
                                                                                                            §§goto(addr1188);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1265:
                                                                                                   }
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             §§goto(addr1123);
                                                                                             §§goto(addr1784);
                                                                                          }
                                                                                          addr1121:
                                                                                       }
                                                                                       §§goto(addr1389);
                                                                                       §§goto(addr1140);
                                                                                    }
                                                                                    addr1118:
                                                                                 }
                                                                                 §§goto(addr1728);
                                                                              }
                                                                              addr1165:
                                                                           }
                                                                           §§goto(addr1400);
                                                                        }
                                                                        §§goto(addr1459);
                                                                     }
                                                                     §§goto(addr1271);
                                                                  }
                                                               }
                                                               addr1430:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  §§goto(addr1740);
                                                               }
                                                               §§goto(addr1785);
                                                            }
                                                            else
                                                            {
                                                               §§push((_loc6_ = this.§;"[§[_loc4_]).§>!f§());
                                                               if(_loc18_)
                                                               {
                                                                  §§push(b2Body.b2_staticBody);
                                                                  if(_loc18_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!_loc19_)
                                                                        {
                                                                           loop54:
                                                                           while(true)
                                                                           {
                                                                              _loc4_++;
                                                                              if(!(_loc19_ && param3))
                                                                              {
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(_loc18_ || param2)
                                                                                       {
                                                                                          if(_loc18_ || param3)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                loop42:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(b2Math.§@U§(_loc15_,_loc6_.§&"3§));
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   if(_loc18_ || param2)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr1571:
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr1524:
                                                                                                               addr1592:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop54;
                                                                                                               }
                                                                                                               loop41:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                  {
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           continue loop42;
                                                                                                                        }
                                                                                                                        addr1724:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr1703:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§2"B§);
                                                                                                                              addr1705:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(b2Body.§-!g§);
                                                                                                                                 addr1707:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() & §§pop());
                                                                                                                                    addr1708:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       addr1709:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop51:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   loop52:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr1720:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_angularVelocity);
                                                                                                                                                         addr1667:
                                                                                                                                                         loop32:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr1673:
                                                                                                                                                               if(!param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                  if(_loc18_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     while(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                     }
                                                                                                                                                                     break loop42;
                                                                                                                                                                     addr1684:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     addr1688:
                                                                                                                                                                     addr1640:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc19_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop51;
                                                                                                                                                                              }
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    break loop41;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1700:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       §§push(_loc6_.§&"3§);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + param1.§;J§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§&"3§ = §§pop();
                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc6_.§&"3§ = 0;
                                                                                                                                                                                       addr1663:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(!(_loc19_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1624:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                addr1625:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1524);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1624:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1624);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1658:
                                                                                                                                                                              }
                                                                                                                                                                              continue loop51;
                                                                                                                                                                           }
                                                                                                                                                                           addr1695:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop52;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     if(_loc19_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1688);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1658);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1700);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  addr1722:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1723);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1673);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1719:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1695);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1719);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr1663);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(b2Math.§[!3§(_loc6_.§"!_§,_loc6_.§"!_§));
                                                                                                                  break loop42;
                                                                                                               }
                                                                                                               continue loop54;
                                                                                                            }
                                                                                                            addr1579:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1667);
                                                                                                         }
                                                                                                         §§goto(addr1673);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr1624);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      §§goto(addr1640);
                                                                                                   }
                                                                                                   §§goto(addr1684);
                                                                                                }
                                                                                                §§goto(addr1724);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1725);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1720);
                                                                                       }
                                                                                       §§goto(addr1660);
                                                                                    }
                                                                                    §§goto(addr1625);
                                                                                 }
                                                                                 §§goto(addr1592);
                                                                              }
                                                                              §§goto(addr1579);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           addr1523:
                                                                        }
                                                                        §§goto(addr1722);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc6_.§2"B§);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(b2Body.§-!g§);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(§§pop() & §§pop());
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc18_ || param2)
                                                                                       {
                                                                                          _loc6_.§&"3§ = 0;
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             §§goto(addr1523);
                                                                                          }
                                                                                          §§goto(addr1720);
                                                                                       }
                                                                                       §§goto(addr1660);
                                                                                    }
                                                                                    §§goto(addr1703);
                                                                                 }
                                                                                 §§goto(addr1709);
                                                                              }
                                                                              §§goto(addr1708);
                                                                           }
                                                                        }
                                                                        §§goto(addr1705);
                                                                     }
                                                                  }
                                                                  §§goto(addr1707);
                                                               }
                                                               §§goto(addr1705);
                                                            }
                                                         }
                                                         addr1732:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr1740);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc18_ || param1)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc18_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc18_ || param1)
                                                            {
                                                               §§push(this.§<!y§);
                                                               if(_loc18_ || param3)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     (_loc7_ = this.§,!f§[_loc5_]).SolveVelocityConstraints(param1);
                                                                     if(_loc18_)
                                                                     {
                                                                        _loc5_++;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(_loc18_ || param3)
                                                                  {
                                                                     _loc8_.SolveVelocityConstraints();
                                                                     if(!_loc18_)
                                                                     {
                                                                     }
                                                                     addr1108:
                                                                     §§goto(addr1413);
                                                                     addr1108:
                                                                  }
                                                                  _loc4_++;
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  addr547:
                                                                  §§push(0);
                                                                  if(!_loc19_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!_loc19_)
                                                                     {
                                                                        loop145:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc18_ || param2)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;0§);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr1089:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§goto(addr1092);
                                                                                          }
                                                                                          §§goto(addr1268);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          if((_loc6_ = this.§;"[§[_loc4_]).§>!f§() == b2Body.b2_staticBody)
                                                                                          {
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                loop116:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_++;
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr614:
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            continue loop145;
                                                                                                         }
                                                                                                         loop83:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_.§+!q§();
                                                                                                            addr621:
                                                                                                            loop84:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc18_ || param3)
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        continue loop116;
                                                                                                                     }
                                                                                                                     loop114:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_angularVelocity);
                                                                                                                        loop113:
                                                                                                                        while(!(_loc19_ && param3))
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           loop110:
                                                                                                                           while(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 §§push(b2Settings.b2_maxRotation);
                                                                                                                                 if(!(_loc19_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * param1.§9n§);
                                                                                                                                 }
                                                                                                                                 §§pop().m_angularVelocity = §§pop();
                                                                                                                                 loop111:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    loop62:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                          addr814:
                                                                                                                                          loop64:
                                                                                                                                          while(!(_loc19_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                             loop65:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                   loop67:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().a0 = §§pop();
                                                                                                                                                      addr803:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue loop111;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         loop69:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            addr776:
                                                                                                                                                            addr686:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               addr778:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  addr779:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     addr780:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§;J§);
                                                                                                                                                                        addr782:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.§"!_§);
                                                                                                                                                                           addr784:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              addr785:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr786:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    addr787:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       break loop83;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc18_ || param3))
                                                                                                                                                               {
                                                                                                                                                                  continue loop69;
                                                                                                                                                               }
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     if(!(_loc19_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(_loc18_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§;J§);
                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.§"!_§);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr754:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr757:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                break loop84;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr780);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr782);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr785);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr784);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr786);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr754);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr787);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr757);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr779);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr778);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr779);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr776);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                               if(!(_loc19_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§;J§);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               if(_loc19_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop67;
                                                                                                                                                               }
                                                                                                                                                               §§pop().a = §§pop();
                                                                                                                                                               loop82:
                                                                                                                                                               while(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop83;
                                                                                                                                                                  }
                                                                                                                                                                  loop99:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.§"!_§);
                                                                                                                                                                     while(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.§"!_§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1030:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                              addr1032:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§9n§);
                                                                                                                                                                                 addr1034:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr1035:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       addr1036:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                          break loop82;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc6_.§"!_§);
                                                                                                                                                                        if(_loc19_ && param3)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc6_.§"!_§);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(_loc18_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§9n§);
                                                                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1003:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1006:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1030);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr840:
                                                                                                                                                                                                loop109:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1.§;J§);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr853:
                                                                                                                                                                                                               if(_loc18_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop113;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr863:
                                                                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     if(_loc19_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop113;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop110;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc11_ = §§pop();
                                                                                                                                                                                                                        if(!(_loc19_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr917:
                                                                                                                                                                                                                                 §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr921:
                                                                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop114;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop62;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop110;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop113;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1054:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr921);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1061:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                                                                    break loop110;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1061:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1070:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_.§"!_§);
                                                                                                                                                                                                                                    addr1072:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       addr1073:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          addr1074:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             addr1075:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                                                                                                                addr1076:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                   break loop109;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr853);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1070:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr863);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1059:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop110;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1059);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1073);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr921);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1074);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr917);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         break loop113;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1052:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop110;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr940:
                                                                                                                                                                                                §§goto(addr1075);
                                                                                                                                                                                                addr940:
                                                                                                                                                                                                while(!(_loc19_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * param1.§9n§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                      break loop64;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1036);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1035);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1034);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1032);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1003);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1006);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1029);
                                                                                                                                                                     }
                                                                                                                                                                     addr1066:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                        continue loop99;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1044);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  §§goto(addr1036);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1066);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop65;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop111;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop62;
                                                                                                                                             §§goto(addr814);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr940);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr1064);
                                                                                                                              }
                                                                                                                              §§goto(addr840);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1054);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr678);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  if(_loc18_ || param3)
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§goto(addr771);
                                                                                                                     }
                                                                                                                     §§goto(addr1076);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr814);
                                                                                                            }
                                                                                                            §§goto(addr940);
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§goto(addr686);
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                      }
                                                                                                      §§goto(addr803);
                                                                                                   }
                                                                                                   §§goto(addr621);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1064);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(param1.§;J§);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(_loc6_.§"!_§);
                                                                                                if(!(_loc19_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc18_ || param3)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            if(_loc18_ || param1)
                                                                                                            {
                                                                                                               §§goto(addr1070);
                                                                                                               §§push(param1.§;J§);
                                                                                                            }
                                                                                                            §§goto(addr947);
                                                                                                         }
                                                                                                         §§goto(addr1070);
                                                                                                      }
                                                                                                      §§goto(addr1061);
                                                                                                   }
                                                                                                   §§goto(addr1052);
                                                                                                }
                                                                                                §§goto(addr1072);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1061);
                                                                                       }
                                                                                    }
                                                                                    addr1089:
                                                                                 }
                                                                                 §§goto(addr1732);
                                                                                 continue loop145;
                                                                              }
                                                                              addr1085:
                                                                           }
                                                                           §§goto(addr1118);
                                                                        }
                                                                     }
                                                                     §§goto(addr1121);
                                                                  }
                                                                  §§goto(addr1764);
                                                               }
                                                               §§goto(addr1089);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr1728);
                                                      }
                                                      §§goto(addr1108);
                                                   }
                                                   §§goto(addr1085);
                                                }
                                             }
                                             §§goto(addr1265);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§<!y§);
                                          if(_loc18_ || param3)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc18_ || param1)
                                                {
                                                   _loc8_.§,t§();
                                                   if(_loc18_ || param2)
                                                   {
                                                      §§goto(addr547);
                                                   }
                                                   §§goto(addr1291);
                                                }
                                                §§goto(addr1761);
                                             }
                                             else
                                             {
                                                (_loc7_ = this.§,!f§[_loc4_]).§,t§();
                                                if(!(_loc19_ && param2))
                                                {
                                                   _loc4_++;
                                                }
                                                §§goto(addr518);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr1089);
                                       addr521:
                                    }
                                    §§goto(addr1400);
                                 }
                                 §§goto(addr521);
                              }
                              §§goto(addr1165);
                           }
                           §§goto(addr1430);
                        }
                        break;
                     }
                     addr1100:
                     _loc4_ = §§pop();
                     if(!(_loc19_ && param3))
                     {
                        §§goto(addr1108);
                     }
                     §§goto(addr1121);
                  }
                  §§goto(addr500);
               }
               §§goto(addr1100);
            }
            §§goto(addr1369);
         }
         §§goto(addr340);
      }
      
      public function §7!_§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         if(_loc14_ || _loc3_)
         {
            §§push(this.§,"V§);
            if(_loc14_ || this)
            {
               §§pop().§6!Q§(param1,this.§=p§,this.§%!0§,this.§>!`§);
               addr60:
               §§push(this.§,"V§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!(_loc13_ && _loc3_))
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc14_ || param1)
               {
                  §§push(this.§<!y§);
                  if(!_loc13_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(0);
                           loop2:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc13_)
                                    {
                                       if(_loc14_ || _loc2_)
                                       {
                                          if(!_loc13_)
                                          {
                                             §§push(param1.§;N§);
                                             if(_loc14_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!(_loc13_ && this))
                                                   {
                                                      if(_loc14_ || this)
                                                      {
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            §§push(0);
                                                            if(_loc14_)
                                                            {
                                                               addr114:
                                                               if(!_loc13_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc13_ && _loc2_))
                                                                  {
                                                                     addr124:
                                                                     if(_loc14_ || _loc2_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr135:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§<!y§);
                                                                                 if(_loc13_ && _loc2_)
                                                                                 {
                                                                                    addr759:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       if((_loc6_ = this.§;"[§[_loc2_]).§>!f§() == b2Body.b2_staticBody)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr290:
                                                                                             _loc2_++;
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      addr302:
                                                                                                      _loc6_.§+!q§();
                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc13_ && param1))
                                                                                                         {
                                                                                                            if(_loc14_ || _loc2_)
                                                                                                            {
                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr290);
                                                                                                               }
                                                                                                               addr485:
                                                                                                               if(!(_loc13_ && this))
                                                                                                               {
                                                                                                                  addr466:
                                                                                                                  _loc6_.m_sweep.c.x += param1.§;J§ * _loc6_.§"!_§.x;
                                                                                                                  addr377:
                                                                                                                  addr465:
                                                                                                                  addr464:
                                                                                                                  addr463:
                                                                                                                  addr461:
                                                                                                                  addr459:
                                                                                                                  addr458:
                                                                                                                  addr457:
                                                                                                                  addr455:
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        if(!(_loc13_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!(_loc13_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§;J§);
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§"!_§);
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                addr428:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   addr431:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      addr439:
                                                                                                                                                      if(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc14_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc13_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().a);
                                                                                                                                                                           if(_loc14_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§;J§);
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                              addr371:
                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr373:
                                                                                                                                                                                 §§goto(addr302);
                                                                                                                                                                              }
                                                                                                                                                                              addr496:
                                                                                                                                                                              _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                              addr501:
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr484:
                                                                                                                                                                                 _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                                                                                 §§goto(addr485);
                                                                                                                                                                                 addr503:
                                                                                                                                                                              }
                                                                                                                                                                              addr722:
                                                                                                                                                                              addr708:
                                                                                                                                                                              addr706:
                                                                                                                                                                              §§push(_loc6_.§"!_§);
                                                                                                                                                                              §§push(_loc6_.§"!_§.x);
                                                                                                                                                                              if(!(_loc13_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr718:
                                                                                                                                                                                 §§push(§§pop() * (b2Settings.b2_maxTranslation * param1.§9n§));
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              addr645:
                                                                                                                                                                              addr746:
                                                                                                                                                                              addr493:
                                                                                                                                                                              §§push(_loc6_.§"!_§);
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.§"!_§);
                                                                                                                                                                                    if(!(_loc13_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1.§9n§);
                                                                                                                                                                                                   if(!(_loc13_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr701:
                                                                                                                                                                                                         §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                         addr522:
                                                                                                                                                                                                         §§push(param1.§;J§);
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                            if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc14_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!(_loc13_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr551:
                                                                                                                                                                                                                     if(_loc14_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr575:
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr589:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr597:
                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr626:
                                                                                                                                                                                                                                                            addr625:
                                                                                                                                                                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr631:
                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                        §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * param1.§9n§);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                        §§goto(addr645);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     _loc6_.§"!_§.Normalize();
                                                                                                                                                                                                                                                                     addr743:
                                                                                                                                                                                                                                                                     §§goto(addr746);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr645);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                               §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * param1.§9n§);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                               addr521:
                                                                                                                                                                                                                                                               §§goto(addr493);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr735:
                                                                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr738:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr742:
                                                                                                                                                                                                                                                                  if(§§pop() > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr743);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr522);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr754:
                                                                                                                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr730:
                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr734:
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc8_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr735);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr730);
                                                                                                                                                                                                                                                               addr755:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr754);
                                                                                                                                                                                                                                                            §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr631);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr645);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr730);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr626);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr625);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr626);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr734);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr626);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr730);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr738);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr597);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr626);
                                                                                                                                                                                                                     §§push(_loc6_.§"!_§.y);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr597);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr742);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr626);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr551);
                                                                                                                                                                                                         addr702:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr718);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr693);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr722);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr701);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr708);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr631);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr706);
                                                                                                                                                                              addr723:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr484);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr496);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr484);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr377);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr755);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr521);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr501);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr466);
                                                                                                                                                }
                                                                                                                                                §§goto(addr465);
                                                                                                                                             }
                                                                                                                                             §§goto(addr464);
                                                                                                                                          }
                                                                                                                                          §§goto(addr463);
                                                                                                                                       }
                                                                                                                                       §§goto(addr461);
                                                                                                                                    }
                                                                                                                                    §§goto(addr428);
                                                                                                                                 }
                                                                                                                                 §§goto(addr459);
                                                                                                                              }
                                                                                                                              §§goto(addr431);
                                                                                                                           }
                                                                                                                           §§goto(addr458);
                                                                                                                        }
                                                                                                                        §§goto(addr457);
                                                                                                                     }
                                                                                                                     §§goto(addr455);
                                                                                                                  }
                                                                                                                  addr454:
                                                                                                                  §§goto(addr454);
                                                                                                                  addr467:
                                                                                                               }
                                                                                                               §§goto(addr702);
                                                                                                            }
                                                                                                            §§goto(addr467);
                                                                                                         }
                                                                                                         §§goto(addr439);
                                                                                                      }
                                                                                                      §§goto(addr371);
                                                                                                   }
                                                                                                   addr756:
                                                                                                   §§goto(addr759);
                                                                                                   §§push(_loc2_);
                                                                                                   §§push(this.§;0§);
                                                                                                }
                                                                                                §§goto(addr723);
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§goto(addr503);
                                                                                       }
                                                                                       §§push(param1.§;J§);
                                                                                       if(!(_loc13_ && this))
                                                                                       {
                                                                                          §§push(_loc6_.§"!_§);
                                                                                          if(_loc14_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      if(!(_loc13_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr551);
                                                                                                         §§push(param1.§;J§);
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   §§goto(addr730);
                                                                                                }
                                                                                                §§goto(addr575);
                                                                                             }
                                                                                             §§goto(addr589);
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§goto(addr742);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr759:
                                                                                 }
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc13_ && param1))
                                                                                       {
                                                                                          _loc2_++;
                                                                                          while(_loc13_)
                                                                                          {
                                                                                             while(!(_loc13_ && this))
                                                                                             {
                                                                                                if(_loc13_ && this)
                                                                                                {
                                                                                                   _loc2_++;
                                                                                                   break;
                                                                                                   addr233:
                                                                                                }
                                                                                                §§push(0);
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop3;
                                                                                          addr153:
                                                                                       }
                                                                                       addr160:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    addr145:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr163:
                                                                                    this.§,!f§[_loc3_].SolveVelocityConstraints(param1);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc14_ || _loc3_)
                                                                                       {
                                                                                          _loc3_++;
                                                                                          §§goto(addr160);
                                                                                       }
                                                                                       §§goto(addr163);
                                                                                    }
                                                                                    addr170:
                                                                                 }
                                                                                 while(!_loc13_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr756);
                                                                     }
                                                                     §§goto(addr145);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr756);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr124);
                                                }
                                                else
                                                {
                                                   _loc4_.SolveVelocityConstraints();
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr759);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr114);
                                 }
                                 §§push(0.75);
                                 if(_loc14_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc13_)
                                 {
                                    addr974:
                                    _loc2_ = 0;
                                    addr777:
                                    addr975:
                                    §§push(_loc2_);
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       §§push(param1.§="W§);
                                       if(_loc14_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc13_)
                                             {
                                                if(_loc14_)
                                                {
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               addr808:
                                                               this.§""Q§(_loc4_.§6o§);
                                                               if(!_loc13_)
                                                               {
                                                                  if(!(_loc14_ || _loc3_))
                                                                  {
                                                                     addr963:
                                                                     §§push(0);
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        addr864:
                                                                        addr959:
                                                                        §§push(_loc3_);
                                                                        if(_loc14_)
                                                                        {
                                                                           addr870:
                                                                           if(§§pop() >= this.§<!y§)
                                                                           {
                                                                              addr871:
                                                                              if(_loc14_ || _loc3_)
                                                                              {
                                                                                 addr879:
                                                                                 §§push(Boolean(_loc10_));
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr888:
                                                                                             §§pop();
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(_loc14_ || param1)
                                                                                                {
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr841:
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc13_ && this))
                                                                                                                  {
                                                                                                                     addr855:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr857:
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              addr861:
                                                                                                                              §§goto(addr808);
                                                                                                                           }
                                                                                                                           addr962:
                                                                                                                           _loc11_ = true;
                                                                                                                           §§goto(addr963);
                                                                                                                           addr972:
                                                                                                                        }
                                                                                                                        addr930:
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              addr902:
                                                                                                                              addr904:
                                                                                                                              addr903:
                                                                                                                              §§push(Boolean(Boolean(§§pop())));
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 addr907:
                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    _loc3_++;
                                                                                                                                    addr894:
                                                                                                                                    §§goto(addr864);
                                                                                                                                 }
                                                                                                                                 §§goto(addr959);
                                                                                                                              }
                                                                                                                              addr952:
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 addr920:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(Boolean(§§pop()))
                                                                                                                                 {
                                                                                                                                    addr922:
                                                                                                                                    if(_loc14_ || param1)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§goto(addr930);
                                                                                                                                    }
                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                    §§goto(addr972);
                                                                                                                                 }
                                                                                                                                 §§goto(addr902);
                                                                                                                              }
                                                                                                                              §§goto(addr962);
                                                                                                                              addr953:
                                                                                                                           }
                                                                                                                           §§goto(addr922);
                                                                                                                        }
                                                                                                                        §§goto(addr904);
                                                                                                                     }
                                                                                                                     _loc2_++;
                                                                                                                     §§goto(addr777);
                                                                                                                  }
                                                                                                                  addr970:
                                                                                                                  §§goto(addr922);
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr903);
                                                                                                            }
                                                                                                            §§goto(addr920);
                                                                                                         }
                                                                                                         §§goto(addr902);
                                                                                                      }
                                                                                                      §§goto(addr879);
                                                                                                   }
                                                                                                   §§goto(addr888);
                                                                                                }
                                                                                                §§goto(addr841);
                                                                                             }
                                                                                             §§goto(addr894);
                                                                                          }
                                                                                          §§goto(addr855);
                                                                                       }
                                                                                       §§goto(addr920);
                                                                                    }
                                                                                    §§goto(addr902);
                                                                                 }
                                                                                 §§goto(addr888);
                                                                              }
                                                                              §§goto(addr907);
                                                                           }
                                                                           §§goto(addr952);
                                                                           §§push(Boolean(this.§,!f§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                        }
                                                                        §§goto(addr963);
                                                                     }
                                                                     §§goto(addr974);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr888);
                                                            }
                                                            §§goto(addr975);
                                                         }
                                                         §§goto(addr953);
                                                      }
                                                      §§goto(addr871);
                                                   }
                                                   §§goto(addr857);
                                                }
                                                §§goto(addr855);
                                             }
                                             §§goto(addr808);
                                          }
                                          §§goto(addr970);
                                          §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                       }
                                       §§goto(addr870);
                                    }
                                    §§goto(addr864);
                                 }
                                 §§goto(addr861);
                              }
                           }
                        }
                     }
                     else
                     {
                        this.§,!f§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr759);
               }
               §§goto(addr756);
            }
         }
         §§goto(addr60);
      }
      
      public function §""Q§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            if(this.§,"1§ == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < this.§%!0§)
            {
               _loc3_ = this.§=p§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!(_loc6_ && this))
               {
                  §§push(0);
                  while(true)
                  {
                     _loc5_ = §§pop();
                  }
                  addr146:
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc6_)
                     {
                        break;
                     }
                     if(§§pop() >= _loc4_.§=!7§)
                     {
                        if(_loc7_ || _loc2_)
                        {
                           this.§,"1§.PostSolve(_loc3_,§@!_§);
                        }
                        loop4:
                        while(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              _loc2_++;
                              if(_loc7_)
                              {
                                 if(false)
                                 {
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              continue;
                              continue;
                           }
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 _loc5_++;
                                 break loop4;
                              }
                              break;
                              addr111:
                              §§pop().§%!O§[_loc5_] = _loc4_.§]!@§[_loc5_].tangentImpulse;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              continue loop3;
                           }
                           loop6:
                           while(true)
                           {
                              §§push(§@!_§);
                              if(!(_loc6_ && param1))
                              {
                                 break;
                              }
                              addr136:
                              while(true)
                              {
                                 §§pop().§'5§[_loc5_] = _loc4_.§]!@§[_loc5_].normalImpulse;
                                 continue loop6;
                              }
                           }
                           §§goto(addr111);
                        }
                     }
                     else
                     {
                        §§push(§@!_§);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr146);
               }
            }
            return;
         }
         addr33:
      }
      
      public function §'!$§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            param1.§3"R§ = this.§;0§;
         }
         var _loc2_:* = this.§;0§++;
         this.§;"[§[_loc2_] = param1;
      }
      
      public function §87§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§%!0§++;
         this.§=p§[_loc2_] = param1;
      }
      
      public function §@"9§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§<!y§++;
         this.§,!f§[_loc2_] = param1;
      }
   }
}
