package § !t§
{
   import §#A§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   import §[h§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §'C§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'C§ = new b2ContactImpulse();
         }
      }
      
      private var §4!5§;
      
      private var §6,§:b2ContactListener;
      
      private var § !S§:b2ContactSolver;
      
      b2internal var §0!I§:Vector.<b2Body>;
      
      b2internal var §&Q§:Vector.<b2Contact>;
      
      b2internal var §9k§:Vector.<b2Joint>;
      
      b2internal var §[b§:int;
      
      b2internal var §3J§:int;
      
      b2internal var §"Z§:int;
      
      private var §7_§:int;
      
      b2internal var §`!B§:int;
      
      b2internal var §6S§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               this.§0!I§ = new Vector.<b2Body>();
               if(!_loc2_)
               {
                  this.§&Q§ = new Vector.<b2Contact>();
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr59);
               }
            }
            this.§9k§ = new Vector.<b2Joint>();
         }
         addr59:
      }
      
      public function §6!V§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!(_loc9_ && param1))
         {
            this.§7_§ = param1;
            if(!(_loc9_ && param1))
            {
               addr35:
               this.§`!B§ = param2;
               if(_loc8_)
               {
                  this.§6S§ = param3;
                  this.§[b§ = 0;
               }
               this.§"Z§ = 0;
               this.§3J§ = 0;
               if(!(_loc9_ && param3))
               {
                  this.§4!5§ = param4;
                  if(!_loc9_)
                  {
                     this.§6,§ = param5;
                     addr67:
                     this.§ !S§ = param6;
                     if(!(_loc9_ && param1))
                     {
                        _loc7_ = int(this.§0!I§.length);
                     }
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     if(_loc8_)
                     {
                        §§push(param1);
                        if(_loc8_ || this)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§push(int(this.§&Q§.length));
                                 if(!(_loc9_ && param1))
                                 {
                                    _loc7_ = §§pop();
                                    if(!(_loc9_ && param1))
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc8_ || param2)
                                          {
                                             §§push(param2);
                                             if(!_loc9_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      this.§&Q§[_loc7_] = null;
                                                      if(_loc9_ && param2)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(int(this.§9k§.length));
                                                      if(!_loc9_)
                                                      {
                                                         break loop1;
                                                      }
                                                      break loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      break loop0;
                                                   }
                                                }
                                                addr191:
                                                §§goto(addr201);
                                                addr176:
                                             }
                                             loop2:
                                             while(§§pop() < §§pop())
                                             {
                                                this.§9k§[_loc7_] = null;
                                                while(true)
                                                {
                                                   _loc7_++;
                                                   if(_loc9_)
                                                   {
                                                      break loop2;
                                                   }
                                                   §§goto(addr201);
                                                }
                                             }
                                             return;
                                             addr203:
                                          }
                                          break;
                                       }
                                       _loc7_ = §§pop();
                                       §§goto(addr191);
                                    }
                                    §§goto(addr198);
                                 }
                                 break;
                              }
                              §§goto(addr201);
                           }
                           else
                           {
                              this.§0!I§[_loc7_] = null;
                              if(_loc8_ || param3)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr176);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr203);
                  }
               }
            }
            §§goto(addr67);
         }
         §§goto(addr35);
      }
      
      public function §6N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§[b§ = 0;
            if(_loc1_ || this)
            {
               this.§"Z§ = 0;
               if(_loc1_ || _loc1_)
               {
                  addr53:
                  this.§3J§ = 0;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function static(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         if(!(_loc18_ && param1))
         {
            _loc4_ = 0;
         }
         for(; _loc4_ < this.§[b§; _loc4_++)
         {
            if((_loc6_ = this.§0!I§[_loc4_]).§"!j§() != b2Body.b2_dynamicBody)
            {
               if(!_loc18_)
               {
                  continue;
               }
               addr150:
               §§push(_loc6_.§<&§);
               if(_loc19_)
               {
                  addr156:
                  §§push(_loc6_.§<&§.y);
                  if(_loc19_ || this)
                  {
                     addr164:
                     §§push(param1.§>N§);
                     if(_loc19_ || param2)
                     {
                        addr173:
                        §§push(param2.y);
                        if(!_loc18_)
                        {
                           addr177:
                           §§push(_loc6_.§7!?§);
                           if(_loc19_ || param2)
                           {
                              addr186:
                              §§push(§§pop() * _loc6_.§"!F§.y);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc18_)
                     {
                        addr195:
                        §§pop().y = §§pop();
                        if(_loc19_)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.m_angularVelocity);
                           if(_loc19_ || param1)
                           {
                              §§push(param1.§>N§);
                              if(_loc19_)
                              {
                                 §§push(_loc6_.§`d§);
                                 if(_loc19_ || this)
                                 {
                                    addr232:
                                    addr233:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc18_ && param1))
                                    {
                                       §§push(_loc6_.§&a§);
                                    }
                                    §§pop().m_angularVelocity = §§pop() + §§pop();
                                    if(_loc19_ || param1)
                                    {
                                       addr241:
                                       §§push(_loc6_.§<&§);
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§>N§);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() * _loc6_.§+i§);
                                       }
                                       §§pop().§=!K§(§§pop().§%!j§(§§pop() - §§pop(),0,1));
                                       if(!(_loc19_ || this))
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(_loc6_);
                                    §§push(_loc6_.m_angularVelocity);
                                    if(!(_loc18_ && param2))
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§>N§);
                                       if(!(_loc18_ && param2))
                                       {
                                          §§push(§§pop() * _loc6_.§5!p§);
                                       }
                                       §§push(§§pop() * §§pop().§%!j§(§§pop() - §§pop(),0,1));
                                    }
                                    §§pop().m_angularVelocity = §§pop();
                                    continue;
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr233);
                        }
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr195);
               }
            }
            else
            {
               §§push(_loc6_.§<&§);
               if(_loc19_ || this)
               {
                  §§push(_loc6_.§<&§);
                  if(!(_loc18_ && param3))
                  {
                     §§push(§§pop().x);
                     if(_loc19_)
                     {
                        §§push(param1.§>N§);
                        if(!(_loc18_ && param2))
                        {
                           §§push(param2.x);
                           if(_loc19_)
                           {
                              §§push(_loc6_.§7!?§);
                              if(_loc19_ || param1)
                              {
                                 §§push(_loc6_.§"!F§);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc19_ || param1)
                                          {
                                             addr131:
                                             §§push(§§pop() * §§pop());
                                             if(_loc19_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc19_ || param3)
                                                {
                                                   addr142:
                                                   §§pop().x = §§pop();
                                                   if(_loc19_ || this)
                                                   {
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr156);
               }
            }
            §§goto(addr241);
         }
         if(_loc19_)
         {
            §§push(this.§ !S§);
            if(!_loc18_)
            {
               §§pop().§6!V§(param1,this.§&Q§,this.§"Z§,this.§4!5§);
               addr313:
               §§push(this.§ !S§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            _loc4_ = 0;
            loop1:
            while(true)
            {
               §§push(_loc4_);
               if(_loc19_ || param2)
               {
                  §§push(this.§3J§);
                  if(!(_loc18_ && param3))
                  {
                     if(§§pop() < §§pop())
                     {
                        (_loc7_ = this.§9k§[_loc4_]).InitVelocityConstraints(param1);
                        if(!(_loc18_ && param1))
                        {
                           _loc4_++;
                        }
                        continue;
                     }
                     if(!_loc18_)
                     {
                        §§push(0);
                        if(_loc19_)
                        {
                           _loc4_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(param1.§#!P§);
                              if(!_loc18_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(0);
                                    if(_loc19_ || param2)
                                    {
                                       _loc4_ = §§pop();
                                       addr442:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          break loop1;
                                       }
                                       loop16:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                                             if(!(_loc18_ && param1))
                                             {
                                                _loc13_ = true;
                                                _loc5_ = 0;
                                                while(_loc5_ < this.§3J§)
                                                {
                                                   §§push((_loc7_ = this.§9k§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                   if(_loc19_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc19_)
                                                      {
                                                         _loc14_ = §§pop();
                                                         if(_loc18_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc13_);
                                                         if(_loc19_ || this)
                                                         {
                                                         }
                                                         addr947:
                                                         if(§§pop())
                                                         {
                                                            if(_loc19_ || param3)
                                                            {
                                                               §§pop();
                                                               if(_loc19_ || this)
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr967:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc19_)
                                                                     {
                                                                        addr970:
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                  }
                                                                  _loc13_ = §§pop();
                                                                  if(_loc18_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc5_++;
                                                               continue;
                                                            }
                                                            §§goto(addr967);
                                                         }
                                                         §§goto(addr970);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc19_ || param2)
                                                      {
                                                         §§goto(addr947);
                                                      }
                                                      §§goto(addr970);
                                                   }
                                                   §§goto(addr947);
                                                }
                                                addr984:
                                                if(!(_loc18_ && param3))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc12_);
                                                      if(_loc19_ || this)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(Boolean(§§pop()))
                                                         {
                                                            §§pop();
                                                            if(_loc19_)
                                                            {
                                                               §§push(Boolean(_loc13_));
                                                               if(!_loc19_)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            addr1020:
                                                            §§push(param3);
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr1016:
                                                            this.§4;§(_loc8_.§1e§);
                                                            §§goto(addr1020);
                                                         }
                                                         else
                                                         {
                                                            _loc4_++;
                                                            addr1012:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr1013:
                                                               while(true)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               §§goto(addr1016);
                                                            }
                                                            addr1012:
                                                         }
                                                         §§goto(addr1016);
                                                      }
                                                      break;
                                                      §§goto(addr984);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc19_ || param2)
                                                      {
                                                         §§push(Number(Number.MAX_VALUE));
                                                         if(!_loc18_)
                                                         {
                                                            _loc15_ = §§pop();
                                                            addr1035:
                                                            §§push(b2Settings.b2_linearSleepTolerance);
                                                            §§push(b2Settings.b2_linearSleepTolerance);
                                                            if(!_loc18_)
                                                            {
                                                               _loc16_ = §§pop() * §§pop();
                                                               addr1044:
                                                               §§push(b2Settings.b2_angularSleepTolerance);
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  §§push(b2Settings.b2_angularSleepTolerance);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc18_ && param3))
                                                                     {
                                                                        addr1065:
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc18_)
                                                                        {
                                                                           _loc17_ = §§pop();
                                                                           if(_loc19_ || param3)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc19_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       §§push(this.§[b§);
                                                                                       break loop2;
                                                                                    }
                                                                                    addr1268:
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr1271:
                                                                                       if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                       {
                                                                                          if(_loc19_ || param2)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1318);
                                                                                    }
                                                                                    §§push(0);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr1294:
                                                                                       _loc4_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                       }
                                                                                       addr1318:
                                                                                       return;
                                                                                       addr1314:
                                                                                    }
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§[b§);
                                                                                       addr1317:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             (_loc6_ = this.§0!I§[_loc4_]).SetAwake(false);
                                                                                             if(!(_loc18_ && param2))
                                                                                             {
                                                                                                _loc4_++;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§goto(addr1318);
                                                                                       }
                                                                                    }
                                                                                    addr1315:
                                                                                    addr1264:
                                                                                 }
                                                                                 §§goto(addr1318);
                                                                              }
                                                                              §§goto(addr1294);
                                                                           }
                                                                           §§goto(addr1318);
                                                                        }
                                                                     }
                                                                     §§goto(addr1271);
                                                                  }
                                                               }
                                                               §§goto(addr1065);
                                                            }
                                                            §§goto(addr1271);
                                                         }
                                                         §§goto(addr1065);
                                                      }
                                                      §§goto(addr1044);
                                                   }
                                                   §§goto(addr1318);
                                                   addr991:
                                                }
                                                §§goto(addr1020);
                                             }
                                          }
                                          §§goto(addr1016);
                                       }
                                       addr460:
                                       addr1015:
                                    }
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(_loc19_ || this)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc19_ || param3)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc19_)
                                             {
                                                §§push(this.§3J§);
                                                if(!(_loc18_ && param2))
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      (_loc7_ = this.§9k§[_loc5_]).SolveVelocityConstraints(param1);
                                                      if(_loc19_ || param3)
                                                      {
                                                         _loc5_++;
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc19_ || param1)
                                                   {
                                                      _loc8_.SolveVelocityConstraints();
                                                      if(_loc19_)
                                                      {
                                                         _loc4_++;
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr1012);
                                                }
                                                §§goto(addr1317);
                                             }
                                             break;
                                          }
                                          §§goto(addr1315);
                                       }
                                       §§goto(addr991);
                                    }
                                 }
                                 §§goto(addr1294);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§goto(addr1268);
                              }
                              else
                              {
                                 §§push((_loc6_ = this.§0!I§[_loc4_]).§"!j§());
                                 if(!(_loc18_ && param1))
                                 {
                                    §§push(b2Body.b2_staticBody);
                                    if(_loc19_ || param3)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          §§push(_loc6_.§;!n§);
                                          if(!(_loc18_ && param2))
                                          {
                                             addr1119:
                                             §§push(b2Body.§!o§);
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop() & §§pop());
                                                if(_loc19_ || param2)
                                                {
                                                   §§push(0);
                                                   if(!_loc18_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc19_ || param2)
                                                         {
                                                            _loc6_.§0o§ = 0;
                                                         }
                                                         _loc15_ = Number(0);
                                                      }
                                                      addr1153:
                                                      §§push(_loc6_.§;!n§ & b2Body.§!o§);
                                                      §§push(0);
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc19_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc18_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               §§pop();
                                                               §§push(_loc6_.m_angularVelocity);
                                                               if(_loc19_ || this)
                                                               {
                                                                  §§push(_loc6_.m_angularVelocity);
                                                                  if(_loc19_ || param3)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc19_ || param3)
                                                                     {
                                                                        addr1195:
                                                                        §§push(_loc17_);
                                                                        if(_loc19_ || param3)
                                                                        {
                                                                           addr1203:
                                                                           §§push(§§pop() > §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              addr1206:
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!(_loc18_ && param2))
                                                                                 {
                                                                                    addr1215:
                                                                                    §§pop();
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr1226:
                                                                                       addr1225:
                                                                                       if(b2Math.§9!;§(_loc6_.§<&§,_loc6_.§<&§) > _loc16_)
                                                                                       {
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             _loc6_.§0o§ = 0;
                                                                                             if(_loc19_ || param2)
                                                                                             {
                                                                                                §§push(Number(0));
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   _loc15_ = §§pop();
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr1263:
                                                                                                      _loc4_++;
                                                                                                      addr1246:
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                addr1262:
                                                                                                _loc15_ = §§pop();
                                                                                                §§goto(addr1263);
                                                                                                §§goto(addr1263);
                                                                                             }
                                                                                             §§goto(addr1262);
                                                                                          }
                                                                                          §§goto(addr1246);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          §§push(_loc6_.§0o§);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(§§pop() + param1.§>N§);
                                                                                          }
                                                                                          §§pop().§0o§ = §§pop();
                                                                                       }
                                                                                       §§goto(addr1262);
                                                                                       §§push(Number(b2Math.§5!>§(_loc15_,_loc6_.§0o§)));
                                                                                    }
                                                                                    §§goto(addr1263);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1226);
                                                                        }
                                                                        §§goto(addr1225);
                                                                     }
                                                                     §§goto(addr1262);
                                                                  }
                                                                  §§goto(addr1203);
                                                               }
                                                               §§goto(addr1195);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1206);
                                                   }
                                                   §§goto(addr1215);
                                                }
                                             }
                                          }
                                          §§goto(addr1153);
                                       }
                                       §§goto(addr1263);
                                    }
                                    §§goto(addr1153);
                                 }
                                 §§goto(addr1119);
                              }
                           }
                        }
                        §§goto(addr1013);
                     }
                     §§goto(addr442);
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc19_)
                        {
                           _loc8_.§7!2§();
                           if(!_loc18_)
                           {
                              §§push(0);
                              if(_loc19_)
                              {
                                 _loc4_ = §§pop();
                                 if(!_loc18_)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr877:
                                       for(; §§pop() < this.§[b§; continue loop14)
                                       {
                                          if((_loc6_ = this.§0!I§[_loc4_]).§"!j§() == b2Body.b2_staticBody)
                                          {
                                             if(!_loc19_)
                                             {
                                                addr592:
                                                §§push(_loc6_.§<&§);
                                                if(_loc19_)
                                                {
                                                   §§push(_loc6_.§<&§);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc19_)
                                                      {
                                                         §§push(b2Settings.b2_maxTranslation);
                                                         if(_loc19_)
                                                         {
                                                            §§push(param1.§3-§);
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     addr627:
                                                                     §§pop().x = §§pop();
                                                                     if(_loc19_)
                                                                     {
                                                                        addr634:
                                                                        addr632:
                                                                        addr630:
                                                                        §§push(_loc6_.§<&§);
                                                                        §§push(_loc6_.§<&§.y);
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           addr642:
                                                                           §§push(b2Settings.b2_maxTranslation);
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr659:
                                                                              §§push(§§pop() * (§§pop() * param1.§3-§));
                                                                           }
                                                                           §§goto(addr659);
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        if(_loc19_)
                                                                        {
                                                                           addr663:
                                                                           §§push(param1.§>N§);
                                                                           §§push(_loc6_.m_angularVelocity);
                                                                           if(_loc19_ || param3)
                                                                           {
                                                                              addr675:
                                                                              §§push(Number(§§pop() * §§pop()));
                                                                              §§push(Number(§§pop() * §§pop()));
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 addr684:
                                                                                 §§push(§§pop() * (_loc11_ = §§pop()));
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr691:
                                                                                    if(§§pop() > b2Settings.b2_maxRotationSquared)
                                                                                    {
                                                                                       addr694:
                                                                                       if(_loc6_.m_angularVelocity < 0)
                                                                                       {
                                                                                          if(!(_loc18_ && this))
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             §§push(b2Settings.b2_maxRotation);
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(!(_loc18_ && param3))
                                                                                                {
                                                                                                   addr721:
                                                                                                   §§push(§§pop() * param1.§3-§);
                                                                                                }
                                                                                                §§pop().m_angularVelocity = §§pop();
                                                                                                addr735:
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      addr746:
                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop().a);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§pop().a0 = §§pop();
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr769:
                                                                                                                  §§push(§§pop().c);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(param1.§>N§);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.§<&§);
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr796:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             addr804:
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                addr807:
                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                if(_loc19_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr820:
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   §§push(_loc6_.m_sweep.c.y);
                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§>N§);
                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr842:
                                                                                                                                                         §§pop().y = §§pop() + §§pop() * _loc6_.§<&§.y;
                                                                                                                                                         addr841:
                                                                                                                                                         if(_loc18_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         addr850:
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr841);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr842);
                                                                                                                                                }
                                                                                                                                                addr854:
                                                                                                                                                §§push(_loc6_.m_sweep.a);
                                                                                                                                                if(!(_loc18_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr870:
                                                                                                                                                   §§push(param1.§>N§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                   }
                                                                                                                                                   §§pop().a = §§pop() + §§pop();
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      _loc6_.§<=§();
                                                                                                                                                      addr875:
                                                                                                                                                      _loc4_++;
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr870);
                                                                                                                                             }
                                                                                                                                             §§goto(addr850);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr842);
                                                                                                                              }
                                                                                                                              §§goto(addr796);
                                                                                                                           }
                                                                                                                           §§goto(addr804);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr820);
                                                                                                            }
                                                                                                            §§goto(addr870);
                                                                                                         }
                                                                                                         §§goto(addr854);
                                                                                                      }
                                                                                                      §§goto(addr769);
                                                                                                   }
                                                                                                   §§goto(addr850);
                                                                                                }
                                                                                                §§goto(addr769);
                                                                                                addr725:
                                                                                             }
                                                                                             §§goto(addr721);
                                                                                          }
                                                                                          §§goto(addr725);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          §§push(b2Settings.b2_maxRotation);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() * param1.§3-§);
                                                                                          }
                                                                                          §§pop().m_angularVelocity = §§pop();
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr735);
                                                                                 }
                                                                              }
                                                                              §§goto(addr694);
                                                                           }
                                                                           §§goto(addr691);
                                                                        }
                                                                        §§goto(addr746);
                                                                     }
                                                                     §§goto(addr735);
                                                                  }
                                                                  §§goto(addr642);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr659);
                                                      }
                                                      §§goto(addr627);
                                                   }
                                                   §§goto(addr634);
                                                }
                                                §§goto(addr632);
                                             }
                                             §§goto(addr875);
                                          }
                                          else
                                          {
                                             §§push(param1.§>N§);
                                             §§push(_loc6_.§<&§);
                                             if(!(_loc18_ && this))
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc18_)
                                                {
                                                   §§push(Number(§§pop() * §§pop()));
                                                   if(_loc19_ || param1)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(!(_loc18_ && param3))
                                                      {
                                                         §§push(param1.§>N§);
                                                         if(!_loc18_)
                                                         {
                                                            addr536:
                                                            §§push(Number(§§pop() * _loc6_.§<&§.y));
                                                         }
                                                         _loc10_ = §§pop();
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§push(_loc9_);
                                                            §§push(_loc9_);
                                                            if(_loc19_)
                                                            {
                                                               addr551:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(_loc10_);
                                                               §§push(_loc10_);
                                                               if(_loc19_ || param3)
                                                               {
                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§push(b2Settings.b2_maxTranslationSquared);
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           §§push(_loc6_.§<&§);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§pop().Normalize();
                                                                              if(!(_loc18_ && param2))
                                                                              {
                                                                                 §§goto(addr592);
                                                                              }
                                                                              §§goto(addr807);
                                                                           }
                                                                           §§goto(addr634);
                                                                        }
                                                                        §§goto(addr663);
                                                                     }
                                                                     §§goto(addr684);
                                                                  }
                                                                  §§goto(addr691);
                                                               }
                                                               §§goto(addr684);
                                                            }
                                                            §§goto(addr694);
                                                         }
                                                         §§goto(addr746);
                                                      }
                                                      §§goto(addr630);
                                                   }
                                                   §§goto(addr675);
                                                }
                                                §§goto(addr551);
                                             }
                                             §§goto(addr536);
                                          }
                                       }
                                       _loc4_ = 0;
                                       §§goto(addr1012);
                                    }
                                 }
                                 §§goto(addr1035);
                              }
                              §§goto(addr877);
                           }
                           §§goto(addr1318);
                        }
                        §§goto(addr1016);
                     }
                     else
                     {
                        (_loc7_ = this.§9k§[_loc4_]).§7!2§();
                        if(!(_loc18_ && param2))
                        {
                           _loc4_++;
                        }
                        §§goto(addr460);
                     }
                  }
                  addr470:
               }
               break;
            }
            while(true)
            {
               §§push(this.§3J§);
               if(_loc19_ || param2)
               {
                  §§goto(addr470);
               }
               §§goto(addr442);
            }
         }
         §§goto(addr313);
      }
      
      public function §&0§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         if(!_loc14_)
         {
            §§push(this.§ !S§);
            if(!_loc14_)
            {
               §§pop().§6!V§(param1,this.§&Q§,this.§"Z§,this.§4!5§);
               addr49:
               §§push(this.§ !S§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!(_loc14_ && _loc3_))
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc13_ || _loc2_)
               {
                  §§push(this.§3J§);
                  if(!_loc14_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(0);
                        if(_loc13_ || _loc2_)
                        {
                           _loc2_ = §§pop();
                           addr140:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc14_ && this))
                              {
                                 break loop0;
                              }
                              addr166:
                              _loc2_ = §§pop();
                              if(_loc13_ || this)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    §§push(this.§[b§);
                                    addr611:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          break loop3;
                                       }
                                       if((_loc6_ = this.§0!I§[_loc2_]).§"!j§() == b2Body.b2_staticBody)
                                       {
                                          if(_loc14_)
                                          {
                                             addr551:
                                             addr581:
                                             §§push(_loc6_.m_sweep);
                                             if(_loc13_)
                                             {
                                                addr576:
                                                addr559:
                                                addr558:
                                                addr556:
                                                addr555:
                                                §§push(§§pop().c);
                                                §§push(_loc6_.m_sweep.c.y);
                                                if(_loc13_)
                                                {
                                                   addr562:
                                                   §§push(param1.§>N§);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      addr571:
                                                      §§push(§§pop() * _loc6_.§<&§.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().y = §§pop();
                                                §§push(_loc6_.m_sweep);
                                             }
                                             §§push(_loc6_.m_sweep.a);
                                             if(!_loc14_)
                                             {
                                                addr584:
                                                §§push(param1.§>N§);
                                                if(!(_loc14_ && param1))
                                                {
                                                   §§push(§§pop() * _loc6_.m_angularVelocity);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().a = §§pop();
                                             _loc6_.§<=§();
                                             if(_loc14_ && _loc2_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc2_++;
                                          continue;
                                       }
                                       §§push(param1.§>N§);
                                       if(_loc13_)
                                       {
                                          §§push(_loc6_.§<&§);
                                          if(!_loc14_)
                                          {
                                             _loc7_ = §§pop() * §§pop().x;
                                             §§push(param1.§>N§);
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                addr213:
                                                §§push(Number(§§pop() * _loc6_.§<&§.y));
                                                if(_loc13_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      §§push(_loc7_);
                                                      §§push(_loc7_);
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc13_)
                                                         {
                                                            §§push(_loc8_);
                                                            §§push(_loc8_);
                                                            if(!(_loc14_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc14_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr248:
                                                                     §§push(b2Settings.b2_maxTranslationSquared);
                                                                     if(!(_loc14_ && _loc3_))
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc13_ || this)
                                                                           {
                                                                              §§push(_loc6_.§<&§);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§pop().Normalize();
                                                                                 §§push(_loc6_.§<&§);
                                                                                 if(_loc13_ || this)
                                                                                 {
                                                                                    §§push(_loc6_.§<&§);
                                                                                    if(!(_loc14_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§push(b2Settings.b2_maxTranslation);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(param1.§3-§);
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   addr307:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      addr310:
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                      {
                                                                                                         addr322:
                                                                                                         §§push(_loc6_.§<&§);
                                                                                                         §§push(_loc6_.§<&§.y);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            addr338:
                                                                                                            §§push(b2Settings.b2_maxTranslation);
                                                                                                            if(!(_loc14_ && this))
                                                                                                            {
                                                                                                               addr334:
                                                                                                               §§push(§§pop() * param1.§3-§);
                                                                                                            }
                                                                                                            §§pop().y = §§pop() * §§pop();
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr341:
                                                                                                            §§push(param1.§>N§);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr345:
                                                                                                               §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                               if(_loc13_ || this)
                                                                                                               {
                                                                                                                  addr355:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     addr360:
                                                                                                                     _loc9_ = §§pop();
                                                                                                                     addr359:
                                                                                                                     §§push(_loc9_);
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        addr363:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc13_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr371:
                                                                                                                           §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              addr375:
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc13_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr395:
                                                                                                                                    if(_loc6_.m_angularVelocity >= 0)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       §§push(b2Settings.b2_maxRotation);
                                                                                                                                       if(_loc13_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1.§3-§);
                                                                                                                                       }
                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                       addr441:
                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                          if(!(_loc14_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                             if(!(_loc14_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                   if(!(_loc14_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§pop().a0 = §§pop();
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            addr490:
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(_loc13_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§>N§);
                                                                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.§<&§);
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(!(_loc14_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc13_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       §§goto(addr551);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr562);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr571);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr576);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr559);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr558);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr556);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr555);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr576);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr584);
                                                                                                                                                }
                                                                                                                                                §§goto(addr581);
                                                                                                                                             }
                                                                                                                                             §§goto(addr490);
                                                                                                                                          }
                                                                                                                                          §§goto(addr576);
                                                                                                                                       }
                                                                                                                                       §§goto(addr490);
                                                                                                                                    }
                                                                                                                                    §§goto(addr441);
                                                                                                                                 }
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 §§push(b2Settings.b2_maxRotation);
                                                                                                                                 if(_loc13_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(_loc13_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * param1.§3-§);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§pop().m_angularVelocity = §§pop();
                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr441);
                                                                                                                                 }
                                                                                                                                 §§goto(addr551);
                                                                                                                              }
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr395);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr371);
                                                                                                            }
                                                                                                            §§goto(addr355);
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                   §§goto(addr338);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                          §§goto(addr307);
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr441);
                                                                        }
                                                                        §§goto(addr341);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr363);
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr395);
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr395);
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr360);
                                       §§goto(addr576);
                                    }
                                 }
                              }
                              §§goto(addr612);
                           }
                           addr140:
                        }
                        break;
                     }
                     continue;
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc13_ || _loc2_)
                        {
                           addr165:
                           break;
                        }
                        addr612:
                        §§push(0.75);
                        if(!_loc14_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(_loc13_ || param1)
                        {
                           §§push(0);
                           if(!(_loc14_ && _loc2_))
                           {
                              _loc2_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param1.§]S§);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc13_ || _loc3_)
                                          {
                                          }
                                          break;
                                       }
                                       §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                       if(!(_loc14_ && this))
                                       {
                                          _loc10_ = §§pop();
                                          §§push(true);
                                          if(_loc13_)
                                          {
                                             _loc11_ = §§pop();
                                             if(_loc13_)
                                             {
                                                §§push(0);
                                                if(!_loc14_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc14_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§3J§);
                                                         if(!(_loc13_ || this))
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc14_)
                                                            {
                                                            }
                                                            addr783:
                                                            this.§4;§(_loc4_.§1e§);
                                                            break loop6;
                                                         }
                                                         §§push(Boolean(this.§9k§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                         if(!(_loc13_ || param1))
                                                         {
                                                            continue loop7;
                                                         }
                                                         _loc12_ = §§pop();
                                                         §§push(_loc11_);
                                                         if(!(_loc14_ && param1))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc14_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§pop();
                                                                     §§push(Boolean(_loc12_));
                                                                     if(_loc13_)
                                                                     {
                                                                        addr702:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr739:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc14_ && param1))
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       addr762:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr761:
                                                                                 }
                                                                                 §§goto(addr762);
                                                                              }
                                                                              addr763:
                                                                              §§goto(addr783);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr738:
                                                                  }
                                                                  §§goto(addr762);
                                                               }
                                                               §§goto(addr702);
                                                            }
                                                            §§goto(addr739);
                                                         }
                                                         else
                                                         {
                                                            addr735:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc13_)
                                                               {
                                                                  §§goto(addr738);
                                                               }
                                                            }
                                                            addr735:
                                                         }
                                                         §§goto(addr761);
                                                         §§goto(addr735);
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr722);
                                             }
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr735);
                                       §§goto(addr783);
                                    }
                                    §§goto(addr787);
                                 }
                              }
                           }
                           §§goto(addr722);
                        }
                        addr787:
                        return;
                     }
                     _loc4_.SolveVelocityConstraints();
                     _loc3_ = 0;
                     if(_loc13_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(this.§3J§);
                           if(_loc13_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    _loc2_++;
                                    if(!(_loc14_ && _loc3_))
                                    {
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       §§goto(addr165);
                                    }
                                 }
                              }
                              else
                              {
                                 this.§9k§[_loc3_].SolveVelocityConstraints(param1);
                                 if(!(_loc13_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 _loc3_++;
                                 if(_loc13_ || this)
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr140);
                           }
                           break;
                        }
                        §§goto(addr611);
                     }
                     §§goto(addr140);
                     §§goto(addr165);
                     break loop0;
                  }
                  §§goto(addr166);
                  addr157:
               }
               break;
            }
            while(true)
            {
               §§push(param1.§#!P§);
               if(!(_loc14_ && _loc2_))
               {
                  §§goto(addr157);
               }
               §§goto(addr611);
            }
         }
         §§goto(addr49);
      }
      
      public function §4;§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_ || _loc2_)
         {
            if(this.§6,§ == null)
            {
               if(_loc7_ || this)
               {
                  §§goto(addr43);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < this.§"Z§)
            {
               _loc3_ = this.§&Q§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!(_loc6_ && _loc2_))
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     _loc5_ = §§pop();
                     if(_loc7_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           addr125:
                           while(true)
                           {
                              if(§§pop() >= _loc4_.§+6§)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(§'C§);
                                 if(!_loc6_)
                                 {
                                    §§pop().§&!8§[_loc5_] = _loc4_.§>!@§[_loc5_].normalImpulse;
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    addr98:
                                    §'C§.§#s§[_loc5_] = _loc4_.§>!@§[_loc5_].tangentImpulse;
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       break;
                                    }
                                    _loc5_++;
                                    continue loop2;
                                 }
                                 §§goto(addr98);
                              }
                              continue loop2;
                           }
                           this.§6,§.PostSolve(_loc3_,§'C§);
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                        }
                        addr124:
                     }
                     _loc2_++;
                     continue;
                  }
                  §§goto(addr125);
               }
               §§goto(addr124);
            }
            return;
         }
         addr43:
      }
      
      public function §2r§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            param1.§2d§ = this.§[b§;
         }
         var _loc2_:* = this.§[b§++;
         this.§0!I§[_loc2_] = param1;
      }
      
      public function §`!6§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§"Z§++;
         this.§&Q§[_loc2_] = param1;
      }
      
      public function §>!0§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§3J§++;
         this.§9k§[_loc2_] = param1;
      }
   }
}
