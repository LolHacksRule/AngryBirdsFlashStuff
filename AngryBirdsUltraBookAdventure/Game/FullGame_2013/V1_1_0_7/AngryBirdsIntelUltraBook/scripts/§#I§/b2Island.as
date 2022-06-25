package §#I§
{
   import §&H§.*;
   import §2!'§.*;
   import §4]§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §for§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §for§ = new b2ContactImpulse();
         }
      }
      
      private var §'!H§;
      
      private var §02§:b2ContactListener;
      
      private var §[!§:b2ContactSolver;
      
      b2internal var §?m§:Vector.<b2Body>;
      
      b2internal var §"!V§:Vector.<b2Contact>;
      
      b2internal var §"!2§:Vector.<b2Joint>;
      
      b2internal var §=!t§:int;
      
      b2internal var §9f§:int;
      
      b2internal var §,l§:int;
      
      private var §2! §:int;
      
      b2internal var §6%§:int;
      
      b2internal var § !3§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            while(true)
            {
               this.§?m§ = new Vector.<b2Body>();
               §§goto(addr82);
            }
         }
         addr82:
         while(true)
         {
            this.§"!V§ = new Vector.<b2Contact>();
            do
            {
               this.§"!2§ = new Vector.<b2Joint>();
            }
            while(_loc2_ && this);
            
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §`!D§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(_loc9_)
         {
            this.§2! § = param1;
            while(true)
            {
               this.§6%§ = param2;
            }
            addr270:
         }
         while(true)
         {
            this.§ !3§ = param3;
            loop2:
            while(!_loc8_)
            {
               this.§=!t§ = 0;
               loop3:
               while(true)
               {
                  this.§,l§ = 0;
                  while(_loc9_)
                  {
                     this.§9f§ = 0;
                     loop5:
                     while(true)
                     {
                        this.§'!H§ = param4;
                        do
                        {
                           this.§02§ = param5;
                           do
                           {
                              this.§[!§ = param6;
                              continue loop5;
                           }
                           while(!(_loc9_ || param2));
                           
                        }
                        while(_loc8_);
                        
                        continue loop3;
                     }
                     if(!(_loc9_ || param3))
                     {
                        continue;
                     }
                     §§goto(addr217);
                  }
                  continue loop2;
               }
            }
            §§goto(addr270);
            if(_loc8_ && param3)
            {
               continue;
            }
            addr138:
            §§push(_loc7_);
            if(!_loc8_)
            {
               addr143:
               if(§§pop() >= param1)
               {
                  addr148:
                  _loc7_ = this.§"!V§.length;
                  addr149:
                  addr144:
                  if(_loc7_ >= param2)
                  {
                     addr112:
                     _loc7_ = this.§"!2§.length;
                     addr22:
                     addr113:
                     addr108:
                     §§push(_loc7_);
                     if(_loc9_ || param1)
                     {
                        if(!(_loc8_ && param3))
                        {
                           if(_loc9_ || this)
                           {
                              §§push(param3);
                              if(!_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc9_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr149);
                                                   }
                                                   return;
                                                }
                                                addr135:
                                                if(_loc9_)
                                                {
                                                   _loc7_++;
                                                   addr116:
                                                   §§goto(addr149);
                                                }
                                                _loc7_++;
                                                addr152:
                                                §§goto(addr138);
                                                addr161:
                                             }
                                             §§goto(addr116);
                                          }
                                          addr92:
                                          if(!_loc8_)
                                          {
                                             if(_loc9_ || param2)
                                             {
                                                if(_loc9_)
                                                {
                                                   _loc7_++;
                                                   addr76:
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      §§goto(addr22);
                                                   }
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr76);
                                    }
                                    this.§"!2§[_loc7_] = null;
                                    §§goto(addr92);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr112);
                  }
                  this.§"!V§[_loc7_] = null;
                  §§goto(addr135);
               }
               this.§?m§[_loc7_] = null;
               §§goto(addr161);
            }
            §§goto(addr148);
         }
      }
      
      public function §6!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=!t§ = 0;
            while(true)
            {
               this.§,l§ = 0;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§9f§ = 0;
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §,!&§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         if(_loc19_ || param3)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§=!t§)
         {
            if((_loc6_ = this.§?m§[_loc4_]).§ 5§() != b2Body.b2_dynamicBody)
            {
               if(_loc19_)
               {
                  loop18:
                  while(true)
                  {
                     _loc4_++;
                     if(!(_loc18_ && param2))
                     {
                        if(_loc19_)
                        {
                           while(true)
                           {
                              if(false)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push(_loc6_.m_angularVelocity);
                                    if(_loc19_)
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§?!C§);
                                       if(_loc19_ || param3)
                                       {
                                          §§push(§§pop() * _loc6_.§[!7§);
                                       }
                                       §§push(§§pop() * §§pop().§?!?§(§§pop() - §§pop(),0,1));
                                    }
                                    §§pop().m_angularVelocity = §§pop();
                                    addr165:
                                    while(!_loc18_)
                                    {
                                       continue loop18;
                                    }
                                    addr196:
                                    loop14:
                                    while(_loc18_ && param3)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(_loc6_.§%!<§);
                                          if(!_loc18_)
                                          {
                                             while(true)
                                             {
                                                §§push(b2Math);
                                                §§push(1);
                                                §§push(param1.§?!C§);
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop() * _loc6_.§];§);
                                                }
                                                §§push(§§pop().§?!?§(§§pop() - §§pop(),0,1));
                                                if(_loc19_)
                                                {
                                                   if(!(_loc19_ || param2))
                                                   {
                                                      break loop13;
                                                   }
                                                   §§pop().§9""§(§§pop());
                                                   continue loop14;
                                                }
                                                addr266:
                                                while(true)
                                                {
                                                   §§pop().y = §§pop();
                                                }
                                             }
                                             addr173:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_.§%!<§);
                                                addr241:
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   break loop13;
                                                }
                                             }
                                             addr239:
                                          }
                                          continue loop14;
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§?!C§);
                                          if(!_loc18_)
                                          {
                                             while(true)
                                             {
                                                §§push(param2.y);
                                                if(!_loc18_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.§3!q§);
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         §§push(_loc6_.§76§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            addr262:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                         addr261:
                                                      }
                                                      addr263:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   addr250:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                             addr246:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr266);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop10;
                                       §§goto(addr196);
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           addr137:
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.m_angularVelocity);
                           if(_loc19_)
                           {
                              §§push(param1.§?!C§);
                              if(!_loc18_)
                              {
                                 §§push(_loc6_.§2!1§);
                                 if(!(_loc18_ && param1))
                                 {
                                    addr235:
                                    §§push(§§pop() * §§pop());
                                    if(_loc19_ || param2)
                                    {
                                       addr233:
                                       §§push(§§pop() * _loc6_.§5n§);
                                    }
                                    §§pop().m_angularVelocity = §§pop() + §§pop();
                                    §§goto(addr236);
                                 }
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr235);
                           §§goto(addr266);
                        }
                     }
                     §§goto(addr165);
                  }
               }
               §§goto(addr137);
            }
            else
            {
               §§push(_loc6_.§%!<§);
               if(_loc19_)
               {
                  §§push(_loc6_.§%!<§);
                  if(_loc19_)
                  {
                     §§push(§§pop().x);
                     if(_loc19_)
                     {
                        §§push(param1.§?!C§);
                        if(_loc19_)
                        {
                           §§push(param2.x);
                           if(!_loc18_)
                           {
                              §§push(_loc6_.§3!q§);
                              if(_loc19_ || param1)
                              {
                                 §§push(_loc6_.§76§);
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc19_)
                                          {
                                             addr111:
                                             §§push(§§pop() * §§pop());
                                             if(!_loc18_)
                                             {
                                                addr114:
                                                §§push(§§pop() + §§pop());
                                                if(_loc19_ || this)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!_loc18_)
                                                   {
                                                      §§goto(addr239);
                                                      §§push(_loc6_.§%!<§);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr261);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr266);
                  }
                  §§goto(addr241);
               }
            }
            §§goto(addr173);
         }
         if(!(_loc18_ && this))
         {
            §§push(this.§[!§);
            if(!(_loc18_ && this))
            {
               §§pop().§`!D§(param1,this.§"!V§,this.§,l§,this.§'!H§);
               addr296:
               §§push(this.§[!§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!(_loc18_ && param3))
            {
               §§push(0);
               if(_loc19_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc18_ && param2))
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_)
                        {
                           §§push(this.§9f§);
                           if(_loc19_ || param1)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§"!2§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc19_)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(_loc19_)
                              {
                                 addr1279:
                                 §§push(0);
                                 if(_loc19_)
                                 {
                                    break;
                                 }
                                 loop34:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc18_)
                                    {
                                       if(_loc19_ || param3)
                                       {
                                          addr1289:
                                          if(false)
                                          {
                                             loop29:
                                             while(true)
                                             {
                                                §§push(b2Settings.b2_angularSleepTolerance);
                                                if(_loc19_ || param1)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      addr1303:
                                                      if(_loc19_ || param1)
                                                      {
                                                         §§push(b2Settings.b2_angularSleepTolerance);
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               addr1322:
                                                               if(_loc19_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     addr1332:
                                                                     _loc17_ = §§pop();
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              addr1354:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       continue loop34;
                                                                                    }
                                                                                    addr1399:
                                                                                    addr1399:
                                                                                    loop145:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§7!?§);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          loop146:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc18_ && param3))
                                                                                                   {
                                                                                                      _loc12_ = §§pop();
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr1094:
                                                                                                            loop135:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(_loc19_ || param3)
                                                                                                               {
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  addr1390:
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc19_ || this))
                                                                                                                     {
                                                                                                                        continue loop145;
                                                                                                                     }
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr1679:
                                                                                                                        loop136:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc18_ && this)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(this.§9f§);
                                                                                                                           if(_loc18_ && param3)
                                                                                                                           {
                                                                                                                              continue loop146;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1249:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          break loop135;
                                                                                                                                       }
                                                                                                                                       break loop146;
                                                                                                                                    }
                                                                                                                                    addr1249:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1407);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push((_loc7_ = this.§"!2§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                    {
                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                          {
                                                                                                                                             addr1212:
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                             {
                                                                                                                                                addr1220:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop140:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop141:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr1181:
                                                                                                                                                         addr1179:
                                                                                                                                                         loop138:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop140;
                                                                                                                                                               }
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(_loc19_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr1201:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1200:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                  do
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_++;
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc18_ && param1);
                                                                                                                                                                  
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     break loop138;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop141;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1201);
                                                                                                                                                         }
                                                                                                                                                         while(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1181);
                                                                                                                                                            §§goto(addr1202);
                                                                                                                                                         }
                                                                                                                                                         continue loop136;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1222:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1200);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1222);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1220);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1179);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1212);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1220);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop132:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§=!t§);
                                                                                                                           if(_loc19_ || param3)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr1691:
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    break loop29;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1741);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push((_loc6_ = this.§?m§[_loc4_]).§ 5§());
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(b2Body.b2_staticBody);
                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             loop61:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_++;
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               loop41:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Math.§;!t§(_loc15_,_loc6_.§+0§));
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           loop56:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop57:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1580:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop61;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop132;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1715:
                                                                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                                                                   addr1583:
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1718);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1741);
                                                                                                                                                                                                   addr1583:
                                                                                                                                                                                                   addr1500:
                                                                                                                                                                                                   addr1676:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop51:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                         loop52:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            addr1637:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               loop43:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(!(_loc19_ || param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1670);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                           addr1669:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop49:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              addr1657:
                                                                                                                                                                                                                              loop54:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(b2Math.§#D§(_loc6_.§%!<§,_loc6_.§%!<§));
                                                                                                                                                                                                                                 addr1591:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                    if(_loc18_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                    if(!(_loc19_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc18_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1670:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          addr1671:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1670:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop52;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1656:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc6_.§+0§ = 0;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop57;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           §§push(_loc6_.§+0§);
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + param1.§?!C§);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§+0§ = §§pop();
                                                                                                                                                                                                                           continue loop56;
                                                                                                                                                                                                                           §§goto(addr1609);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1583);
                                                                                                                                                                                                                        §§goto(addr1670);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1656);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop52;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            addr1674:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                                                                               addr1675:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1659:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.§[B§);
                                                                                                                                                                                                                     addr1661:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(b2Body.§6T§);
                                                                                                                                                                                                                        addr1663:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                                                                                                                           addr1664:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              addr1665:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1669);
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1673:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1670);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1583);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1580:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1674);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1591);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1580);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1583);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1500);
                                                                                                                                                                        }
                                                                                                                                                                        addr1541:
                                                                                                                                                                        addr1543:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1637);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1580);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1676);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1715);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1675);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1671);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1657);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1541);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1657);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§[B§);
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(b2Body.§6T§);
                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() & §§pop());
                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_ || param3)
                                                                                                                                                         {
                                                                                                                                                            _loc6_.§+0§ = 0;
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1673);
                                                                                                                                                               §§push(0);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1675);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1543);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1659);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1665);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1664);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1661);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1663);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1661);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1740);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1249);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(Number.MAX_VALUE));
                                                                                                                     addr1393:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc15_ = §§pop();
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                           if(!(_loc18_ && this))
                                                                                                                           {
                                                                                                                              §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr1370:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr1371:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                       if(_loc18_ && param1)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1741);
                                                                                                                                    §§goto(addr1303);
                                                                                                                                 }
                                                                                                                                 addr1370:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr1694:
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1741);
                                                                                                                              }
                                                                                                                              §§goto(addr1741);
                                                                                                                           }
                                                                                                                           §§goto(addr1370);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                     {
                                                                                                                        §§goto(addr1715);
                                                                                                                     }
                                                                                                                     §§goto(addr1738);
                                                                                                                  }
                                                                                                                  addr1390:
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc19_ || param1)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           addr1272:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              §§goto(addr1418);
                                                                                                                           }
                                                                                                                           addr1272:
                                                                                                                        }
                                                                                                                        §§goto(addr1390);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1418);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1418);
                                                                                                               }
                                                                                                               §§goto(addr1094);
                                                                                                            }
                                                                                                         }
                                                                                                         addr1131:
                                                                                                      }
                                                                                                      §§goto(addr1272);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                loop66:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr1407:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§7=§(_loc8_.§;!d§);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr1413:
                                                                                                         §§push(param3);
                                                                                                         if(!(_loc18_ && param2))
                                                                                                         {
                                                                                                            break loop146;
                                                                                                         }
                                                                                                         addr1418:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr1419:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop66;
                                                                                                               }
                                                                                                               addr1419:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc4_++;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr1398:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop145;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1421:
                                                                                                            }
                                                                                                            §§goto(addr1413);
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr1718:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                addr1738:
                                                                                                loop130:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§=!t§);
                                                                                                   addr1740:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         §§goto(addr1741);
                                                                                                      }
                                                                                                      (_loc6_ = this.§?m§[_loc4_]).SetAwake(false);
                                                                                                      if(_loc19_ || param2)
                                                                                                      {
                                                                                                         _loc4_++;
                                                                                                      }
                                                                                                      continue loop130;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1418);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr1390);
                                                                                             }
                                                                                             §§goto(addr1741);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1740);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1738);
                                                                              }
                                                                              addr1354:
                                                                           }
                                                                           §§goto(addr1421);
                                                                        }
                                                                        §§goto(addr1390);
                                                                     }
                                                                     §§goto(addr1691);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr1393);
                                                            }
                                                            §§goto(addr1332);
                                                         }
                                                         §§goto(addr1694);
                                                      }
                                                      §§goto(addr1370);
                                                   }
                                                   §§goto(addr1371);
                                                }
                                                §§goto(addr1322);
                                             }
                                             §§goto(addr1694);
                                             §§push(b2Settings.b2_timeToSleep);
                                          }
                                          §§goto(addr1715);
                                       }
                                       §§goto(addr1419);
                                    }
                                    §§goto(addr1741);
                                 }
                                 addr1279:
                              }
                              §§goto(addr1419);
                           }
                           loop68:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(0);
                                 if(!_loc18_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc19_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc19_ || param2))
                                          {
                                             break loop68;
                                          }
                                       }
                                       addr378:
                                    }
                                    §§goto(addr1272);
                                 }
                                 loop70:
                                 while(true)
                                 {
                                    §§push(this.§9f§);
                                    if(!(_loc19_ || this))
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc19_ || param2)
                                       {
                                          _loc8_.SolveVelocityConstraints();
                                          if(_loc19_)
                                          {
                                             _loc4_++;
                                             if(!(_loc18_ && param3))
                                             {
                                                addr415:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc18_ && param2))
                                                   {
                                                      §§push(param1.§7q§);
                                                      if(_loc19_ || param1)
                                                      {
                                                         break loop70;
                                                      }
                                                      §§goto(addr1241);
                                                   }
                                                   §§goto(addr1715);
                                                }
                                                addr415:
                                             }
                                             §§goto(addr1272);
                                          }
                                          addr1741:
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       (_loc7_ = this.§"!2§[_loc5_]).SolveVelocityConstraints(param1);
                                       if(!_loc18_)
                                       {
                                          _loc5_++;
                                       }
                                       §§goto(addr378);
                                    }
                                 }
                                 continue;
                              }
                              if(_loc19_ || param3)
                              {
                                 §§push(0);
                                 if(_loc19_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc19_)
                                    {
                                       addr464:
                                       §§push(_loc4_);
                                       if(!_loc18_)
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc18_)
                                       {
                                          §§goto(addr1398);
                                          addr1079:
                                       }
                                       §§goto(addr1354);
                                    }
                                    §§goto(addr1691);
                                 }
                                 §§goto(addr1279);
                              }
                              §§goto(addr1289);
                              §§goto(addr1272);
                           }
                           loop71:
                           while(true)
                           {
                              §§push(this.§9f§);
                              if(_loc19_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!(_loc18_ && param2))
                                    {
                                       _loc8_.§@!O§();
                                       if(_loc19_ || param3)
                                       {
                                          §§push(0);
                                          if(!(_loc18_ && param1))
                                          {
                                             _loc4_ = §§pop();
                                             if(_loc19_ || this)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc19_)
                                                   {
                                                      §§push(this.§=!t§);
                                                      if(_loc19_)
                                                      {
                                                         break loop71;
                                                      }
                                                      §§goto(addr1241);
                                                   }
                                                   §§goto(addr1399);
                                                }
                                                addr1058:
                                             }
                                             §§goto(addr1718);
                                          }
                                          §§goto(addr1279);
                                       }
                                       §§goto(addr1718);
                                    }
                                    §§goto(addr1079);
                                 }
                                 else
                                 {
                                    (_loc7_ = this.§"!2§[_loc4_]).§@!O§();
                                    if(_loc19_ || param1)
                                    {
                                       _loc4_++;
                                    }
                                    §§goto(addr464);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc18_)
                                 {
                                    §§push(0);
                                    if(!(_loc18_ && param1))
                                    {
                                       §§goto(addr464);
                                    }
                                    §§goto(addr1679);
                                 }
                                 §§goto(addr1131);
                              }
                              else
                              {
                                 if((_loc6_ = this.§?m§[_loc4_]).§ 5§() == b2Body.b2_staticBody)
                                 {
                                    if(!(_loc18_ && param2))
                                    {
                                       loop125:
                                       while(true)
                                       {
                                          _loc4_++;
                                          if(_loc19_ || param2)
                                          {
                                             addr575:
                                             if(_loc19_ || param1)
                                             {
                                                if(!(_loc18_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      if(false)
                                                      {
                                                         loop117:
                                                         while(true)
                                                         {
                                                            _loc6_.§@!1§();
                                                            addr594:
                                                            loop118:
                                                            while(_loc19_ || param3)
                                                            {
                                                               if(_loc19_)
                                                               {
                                                                  continue loop125;
                                                               }
                                                               addr934:
                                                               while(true)
                                                               {
                                                                  addr795:
                                                                  loop97:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_.m_sweep);
                                                                     addr798:
                                                                     addr823:
                                                                     while(true)
                                                                     {
                                                                        §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                        break loop118;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop97;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            loop99:
                                                            while(_loc19_ || param3)
                                                            {
                                                               §§push(_loc6_.m_sweep);
                                                               loop100:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_.m_sweep);
                                                                  loop101:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().a);
                                                                     loop102:
                                                                     while(true)
                                                                     {
                                                                        §§pop().a0 = §§pop();
                                                                        addr783:
                                                                        loop103:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(_loc6_.m_sweep);
                                                                                    continue loop100;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_.§%!<§);
                                                                                    addr1009:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_.§%!<§);
                                                                                       addr1011:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1012:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                             addr1014:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§!!<§);
                                                                                                addr1016:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr1017:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr1018:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         break loop103;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break loop103;
                                                                                    }
                                                                                 }
                                                                                 addr1041:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr909:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_.m_angularVelocity);
                                                                              addr911:
                                                                              loop127:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 addr912:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       §§push(b2Settings.b2_maxRotation);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() * param1.§!!<§);
                                                                                       }
                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                       break loop99;
                                                                                    }
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          §§push(b2Settings.b2_maxRotation);
                                                                                          if(_loc19_ || param1)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr930:
                                                                                                §§push(§§pop() * param1.§!!<§);
                                                                                             }
                                                                                             §§pop().m_angularVelocity = §§pop();
                                                                                             §§goto(addr934);
                                                                                          }
                                                                                          §§goto(addr930);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.§%!<§);
                                                                                             addr1040:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().Normalize();
                                                                                                §§goto(addr1041);
                                                                                             }
                                                                                          }
                                                                                          addr1038:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr934);
                                                                                    continue loop127;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.§%!<§);
                                                                           if(_loc19_)
                                                                           {
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 §§push(_loc6_.§%!<§);
                                                                                 if(!(_loc18_ && param3))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          §§push(b2Settings.b2_maxTranslation);
                                                                                          if(_loc19_ || param3)
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(param1.§!!<§);
                                                                                                if(!(_loc18_ && param3))
                                                                                                {
                                                                                                   addr987:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      addr990:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         loop93:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               loop94:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§?!C§);
                                                                                                                  if(_loc19_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_angularVelocity);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                          {
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr902:
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr908:
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr909);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr795);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                        break loop94;
                                                                                                                                                                     }
                                                                                                                                                                     addr1035:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr911);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr912);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc18_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr1034:
                                                                                                                                                               }
                                                                                                                                                               break loop94;
                                                                                                                                                            }
                                                                                                                                                            addr1026:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1035);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr908);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         addr1023:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr1024:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               addr1025:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr1022:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1026);
                                                                                                                                                }
                                                                                                                                                §§goto(addr911);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr1056:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                   break loop93;
                                                                                                                                                }
                                                                                                                                                addr1056:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr902);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr1055:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1054:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1056);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1023);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1025);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr908);
                                                                                                                        }
                                                                                                                        §§goto(addr1055);
                                                                                                                     }
                                                                                                                     §§goto(addr1024);
                                                                                                                  }
                                                                                                                  §§goto(addr911);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr824);
                                                                                                                  }
                                                                                                                  §§goto(addr1038);
                                                                                                               }
                                                                                                               addr824:
                                                                                                            }
                                                                                                            break;
                                                                                                            loop115:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc18_ && param3)
                                                                                                               {
                                                                                                                  continue loop93;
                                                                                                               }
                                                                                                               addr744:
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               if(_loc19_ || param2)
                                                                                                               {
                                                                                                                  addr614:
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                     if(!(_loc19_ || param2))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§pop().a);
                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc18_ && this)
                                                                                                                        {
                                                                                                                           continue loop102;
                                                                                                                        }
                                                                                                                        §§push(param1.§?!C§);
                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     §§pop().a = §§pop();
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop100;
                                                                                                               }
                                                                                                               addr677:
                                                                                                               loop114:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     addr679:
                                                                                                                     §§push(§§pop().c);
                                                                                                                     if(_loc19_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!(_loc18_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(param1.§?!C§);
                                                                                                                                 if(_loc19_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§%!<§);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(!(_loc18_ && param3))
                                                                                                                                       {
                                                                                                                                          addr724:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr729:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc18_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   continue loop115;
                                                                                                                                                }
                                                                                                                                                addr774:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   break loop117;
                                                                                                                                                }
                                                                                                                                                addr774:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.§%!<§);
                                                                                                                                                   addr771:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      addr772:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         break loop114;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr769:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr772);
                                                                                                                                    }
                                                                                                                                    §§goto(addr771);
                                                                                                                                 }
                                                                                                                                 §§goto(addr724);
                                                                                                                              }
                                                                                                                              §§goto(addr729);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                 {
                                                                                                                                    §§goto(addr769);
                                                                                                                                    §§push(param1.§?!C§);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr759:
                                                                                                                           }
                                                                                                                           §§goto(addr774);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr758:
                                                                                                                        }
                                                                                                                        §§goto(addr759);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr679);
                                                                                                                        }
                                                                                                                        addr756:
                                                                                                                     }
                                                                                                                     §§goto(addr758);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr798);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr774);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop101;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr1022);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1012);
                                                                                                   }
                                                                                                   §§goto(addr1014);
                                                                                                }
                                                                                                §§goto(addr1016);
                                                                                             }
                                                                                             §§goto(addr1017);
                                                                                          }
                                                                                          §§goto(addr987);
                                                                                       }
                                                                                       §§goto(addr1018);
                                                                                    }
                                                                                    §§goto(addr990);
                                                                                 }
                                                                                 §§goto(addr1011);
                                                                              }
                                                                              §§goto(addr1040);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr1009);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr823);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr1058);
                                                      }
                                                   }
                                                   addr589:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr677);
                                                }
                                             }
                                             §§goto(addr659);
                                          }
                                          §§goto(addr594);
                                       }
                                    }
                                    §§goto(addr673);
                                 }
                                 else
                                 {
                                    §§push(param1.§?!C§);
                                    if(!(_loc18_ && param3))
                                    {
                                       §§push(_loc6_.§%!<§);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc18_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc19_ || param1)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc18_)
                                                {
                                                   addr557:
                                                   _loc9_ = §§pop();
                                                   if(!(_loc18_ && param2))
                                                   {
                                                      §§push(param1.§?!C§);
                                                      if(_loc19_ || param1)
                                                      {
                                                         addr1053:
                                                         §§goto(addr1054);
                                                         §§push(_loc6_.§%!<§.y);
                                                      }
                                                      §§goto(addr1056);
                                                   }
                                                   §§goto(addr589);
                                                }
                                                §§goto(addr1055);
                                             }
                                             §§goto(addr557);
                                          }
                                          §§goto(addr1034);
                                       }
                                       §§goto(addr1053);
                                    }
                                 }
                                 §§goto(addr911);
                              }
                           }
                        }
                        break;
                     }
                     _loc4_ = §§pop();
                     if(_loc19_)
                     {
                        §§goto(addr415);
                     }
                     §§goto(addr1249);
                  }
                  §§goto(addr415);
               }
               §§goto(addr1399);
            }
            §§goto(addr415);
         }
         §§goto(addr296);
      }
      
      public function §%!@§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         if(_loc13_)
         {
            §§push(this.§[!§);
            if(!(_loc14_ && _loc2_))
            {
               §§pop().§`!D§(param1,this.§"!V§,this.§,l§,this.§'!H§);
               addr54:
               §§push(this.§[!§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc13_ || this)
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
                  §§push(this.§9f§);
                  if(_loc13_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(0);
                           if(!_loc14_)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(!(_loc14_ && param1))
                              {
                                 loop4:
                                 do
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc14_ && this))
                                    {
                                       if(_loc13_)
                                       {
                                          if(_loc14_ && _loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(param1.§7q§);
                                          if(_loc13_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      §§push(0);
                                                      if(_loc13_)
                                                      {
                                                         addr101:
                                                         if(!_loc14_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               addr111:
                                                               if(!_loc13_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr124:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9f§);
                                                                           if(!(_loc14_ && _loc2_))
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 while(!_loc13_)
                                                                                 {
                                                                                 }
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    _loc2_++;
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop3;
                                                                                 addr134:
                                                                              }
                                                                              this.§"!2§[_loc3_].SolveVelocityConstraints(param1);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc13_ || this)
                                                                                 {
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          _loc2_++;
                                                                                          break loop3;
                                                                                          addr212:
                                                                                       }
                                                                                       _loc3_++;
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr173:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                          }
                                                                                       }
                                                                                       addr180:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                              }
                                                                              addr768:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              §§push(0.75);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc5_:* = §§pop();
                                                                              if(_loc13_ || _loc3_)
                                                                              {
                                                                                 addr1043:
                                                                                 _loc2_ = 0;
                                                                                 addr786:
                                                                                 addr1044:
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc14_ && this))
                                                                                 {
                                                                                    if(_loc13_ || param1)
                                                                                    {
                                                                                       §§push(param1.§7!?§);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   addr811:
                                                                                                   this.§7=§(_loc4_.§;!d§);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      if(!(_loc13_ || param1))
                                                                                                      {
                                                                                                         addr877:
                                                                                                         addr941:
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc13_ || param1)
                                                                                                         {
                                                                                                            addr888:
                                                                                                            if(§§pop() >= this.§9f§)
                                                                                                            {
                                                                                                               addr889:
                                                                                                               if(!(_loc14_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!(_loc14_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr905:
                                                                                                                     §§push(Boolean(_loc10_));
                                                                                                                     if(_loc13_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc14_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr921:
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc14_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc14_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          if(_loc13_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr838:
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(_loc13_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         addr856:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc14_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr874:
                                                                                                                                                                     §§goto(addr811);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr877);
                                                                                                                                                                  addr1021:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr889);
                                                                                                                                                            }
                                                                                                                                                            addr876:
                                                                                                                                                            §§goto(addr786);
                                                                                                                                                         }
                                                                                                                                                         _loc2_++;
                                                                                                                                                         §§goto(addr876);
                                                                                                                                                      }
                                                                                                                                                      addr986:
                                                                                                                                                      §§pop();
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr952:
                                                                                                                                                         §§push(Boolean(Boolean(§§pop())));
                                                                                                                                                      }
                                                                                                                                                      addr987:
                                                                                                                                                   }
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc14_ && param1))
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                         _loc3_++;
                                                                                                                                                         §§goto(addr941);
                                                                                                                                                         addr964:
                                                                                                                                                      }
                                                                                                                                                      addr1040:
                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                      §§push(true);
                                                                                                                                                      addr1041:
                                                                                                                                                   }
                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                   addr1020:
                                                                                                                                                   _loc3_ = 0;
                                                                                                                                                   §§goto(addr1021);
                                                                                                                                                   addr1025:
                                                                                                                                                }
                                                                                                                                                §§goto(addr905);
                                                                                                                                             }
                                                                                                                                             §§goto(addr921);
                                                                                                                                          }
                                                                                                                                          §§goto(addr905);
                                                                                                                                       }
                                                                                                                                       §§goto(addr838);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1041);
                                                                                                                                 }
                                                                                                                                 addr1000:
                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(!(_loc14_ && param1))
                                                                                                                                          {
                                                                                                                                             addr985:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr986);
                                                                                                                                             }
                                                                                                                                             §§goto(addr952);
                                                                                                                                          }
                                                                                                                                          §§goto(addr986);
                                                                                                                                       }
                                                                                                                                       addr999:
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       §§goto(addr1000);
                                                                                                                                    }
                                                                                                                                    §§goto(addr986);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1025);
                                                                                                                              }
                                                                                                                              §§goto(addr987);
                                                                                                                           }
                                                                                                                           §§goto(addr856);
                                                                                                                        }
                                                                                                                        §§goto(addr985);
                                                                                                                     }
                                                                                                                     §§goto(addr952);
                                                                                                                  }
                                                                                                                  §§goto(addr1044);
                                                                                                               }
                                                                                                               §§goto(addr964);
                                                                                                            }
                                                                                                            §§goto(addr999);
                                                                                                            §§push(Boolean(this.§"!2§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                         }
                                                                                                         §§goto(addr1020);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr921);
                                                                                                }
                                                                                                §§goto(addr876);
                                                                                             }
                                                                                             §§goto(addr811);
                                                                                          }
                                                                                          §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          §§goto(addr1040);
                                                                                       }
                                                                                       §§goto(addr888);
                                                                                    }
                                                                                    §§goto(addr1043);
                                                                                 }
                                                                                 §§goto(addr877);
                                                                              }
                                                                              §§goto(addr874);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr768);
                                                                           }
                                                                        }
                                                                     }
                                                                     if((_loc6_ = this.§?m§[_loc2_]).§ 5§() == b2Body.b2_staticBody)
                                                                     {
                                                                        if(_loc13_ || _loc2_)
                                                                        {
                                                                           addr269:
                                                                           _loc2_++;
                                                                           if(!(_loc14_ && param1))
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          addr285:
                                                                                          _loc6_.§@!1§();
                                                                                          addr288:
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             §§goto(addr269);
                                                                                          }
                                                                                          addr448:
                                                                                          _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                          addr460:
                                                                                          addr447:
                                                                                          addr445:
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             addr440:
                                                                                             _loc6_.m_sweep.c.x += param1.§?!C§ * _loc6_.§%!<§.x;
                                                                                             addr441:
                                                                                             addr428:
                                                                                             addr433:
                                                                                             addr435:
                                                                                             addr438:
                                                                                             addr437:
                                                                                             addr439:
                                                                                             addr432:
                                                                                             addr431:
                                                                                             addr429:
                                                                                             §§push(_loc6_.m_sweep);
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         if(!(_loc14_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(param1.§?!C§);
                                                                                                               if(!(_loc14_ && param1))
                                                                                                               {
                                                                                                                  if(_loc13_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.§%!<§);
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           addr407:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc14_ && this))
                                                                                                                           {
                                                                                                                              addr415:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr420:
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr325:
                                                                                                                                                         §§push(param1.§?!C§);
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                         }
                                                                                                                                                         §§pop().a = §§pop() + §§pop();
                                                                                                                                                         if(!(_loc14_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc14_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr285);
                                                                                                                                                               }
                                                                                                                                                               addr703:
                                                                                                                                                               §§push(param1.§?!C§);
                                                                                                                                                               if(_loc13_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                  if(_loc13_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc14_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr506:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           addr519:
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc13_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr574:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc13_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr582:
                                                                                                                                                                                                               §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                               if(_loc13_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr591:
                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr603:
                                                                                                                                                                                                                           §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr608:
                                                                                                                                                                                                                                 if(§§pop() < 0)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr609:
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                    if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                                                                       if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr627:
                                                                                                                                                                                                                                          §§push(§§pop() * param1.§!!<§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                       addr455:
                                                                                                                                                                                                                                       _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                                       addr452:
                                                                                                                                                                                                                                       §§goto(addr460);
                                                                                                                                                                                                                                       addr631:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr627);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * param1.§!!<§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                 §§goto(addr452);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr734:
                                                                                                                                                                                                                              §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop() + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr745:
                                                                                                                                                                                                                              _loc6_.§%!<§.Normalize();
                                                                                                                                                                                                                              addr743:
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr710:
                                                                                                                                                                                                                                 addr722:
                                                                                                                                                                                                                                 addr723:
                                                                                                                                                                                                                                 addr709:
                                                                                                                                                                                                                                 addr707:
                                                                                                                                                                                                                                 §§push(_loc6_.§%!<§);
                                                                                                                                                                                                                                 §§push(_loc6_.§%!<§.x);
                                                                                                                                                                                                                                 §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr721:
                                                                                                                                                                                                                                    §§push(§§pop() * param1.§!!<§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().x = §§pop() * §§pop();
                                                                                                                                                                                                                                 if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_.§%!<§);
                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc13_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc6_.§%!<§);
                                                                                                                                                                                                                                          if(_loc13_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                             if(!(_loc14_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                                   if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param1.§!!<§);
                                                                                                                                                                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr687:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr695:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc13_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                               §§goto(addr703);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr710);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr722);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr721);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr687);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr723);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr695);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr709);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr745);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr707);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr743);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr734);
                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                              addr764:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr703);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr745);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr631);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr608);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr603);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr591);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr603);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr754:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr763:
                                                                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                                                                      §§goto(addr764);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr763);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr734);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr603);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr574);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr751:
                                                                                                                                                                                 §§goto(addr754);
                                                                                                                                                                                 §§push(_loc6_.§%!<§.y);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr763);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr603);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr582);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr519);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr574);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr506);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr285);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr441);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr448);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr325);
                                                                                                                                                }
                                                                                                                                                §§goto(addr447);
                                                                                                                                             }
                                                                                                                                             §§goto(addr428);
                                                                                                                                          }
                                                                                                                                          §§goto(addr441);
                                                                                                                                       }
                                                                                                                                       §§goto(addr452);
                                                                                                                                    }
                                                                                                                                    §§goto(addr608);
                                                                                                                                 }
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                              §§goto(addr440);
                                                                                                                           }
                                                                                                                           §§goto(addr435);
                                                                                                                        }
                                                                                                                        §§goto(addr438);
                                                                                                                     }
                                                                                                                     §§goto(addr437);
                                                                                                                  }
                                                                                                                  §§goto(addr439);
                                                                                                               }
                                                                                                               §§goto(addr407);
                                                                                                            }
                                                                                                            §§goto(addr415);
                                                                                                         }
                                                                                                         §§goto(addr432);
                                                                                                      }
                                                                                                      §§goto(addr431);
                                                                                                   }
                                                                                                   §§goto(addr429);
                                                                                                }
                                                                                                §§goto(addr455);
                                                                                             }
                                                                                             §§goto(addr445);
                                                                                             addr451:
                                                                                          }
                                                                                          §§goto(addr609);
                                                                                       }
                                                                                       addr765:
                                                                                       §§goto(addr768);
                                                                                       §§push(_loc2_);
                                                                                       §§push(this.§=!t§);
                                                                                    }
                                                                                    §§goto(addr710);
                                                                                 }
                                                                                 §§goto(addr420);
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr451);
                                                                     }
                                                                     §§push(param1.§?!C§);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc6_.§%!<§);
                                                                        if(_loc13_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc14_ && _loc3_))
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§goto(addr751);
                                                                                       §§push(param1.§?!C§);
                                                                                    }
                                                                                    §§goto(addr609);
                                                                                 }
                                                                                 §§goto(addr582);
                                                                              }
                                                                              §§goto(addr603);
                                                                           }
                                                                           §§goto(addr574);
                                                                        }
                                                                        §§goto(addr751);
                                                                     }
                                                                     §§goto(addr763);
                                                                  }
                                                                  §§goto(addr765);
                                                               }
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr768);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      §§goto(addr765);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                §§goto(addr111);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr768);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr101);
                                 }
                                 while(!_loc14_);
                                 
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           §§goto(addr765);
                        }
                     }
                     else
                     {
                        this.§"!2§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr768);
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §7=§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_)
         {
            if(this.§02§ == null)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         for(; _loc2_ < this.§,l§; do
         {
            _loc2_++;
         }
         while(!_loc7_);
         ,if(true)
         {
            continue;
         },§§goto(addr74))
         {
            _loc3_ = this.§"!V§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(!(_loc6_ && this))
            {
               §§push(0);
               while(true)
               {
                  _loc5_ = §§pop();
               }
               addr151:
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  addr74:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        break;
                     }
                     if(§§pop() >= _loc4_.§%!3§)
                     {
                        if(_loc7_)
                        {
                           if(_loc7_ || param1)
                           {
                              if(!_loc6_)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    this.§02§.PostSolve(_loc3_,§for§);
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §§push(§for§);
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 §§pop().§5!K§[_loc5_] = _loc4_.§+"§[_loc5_].tangentImpulse;
                                 while(true)
                                 {
                                    _loc5_++;
                                 }
                              }
                           }
                           while(_loc6_ && _loc2_)
                           {
                              §§goto(addr136);
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     §§push(§for§);
                     §§goto(addr141);
                  }
                  §§goto(addr151);
               }
            }
         }
      }
      
      public function §`!n§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            param1.§-!_§ = this.§=!t§;
         }
         var _loc2_:* = this.§=!t§++;
         this.§?m§[_loc2_] = param1;
      }
      
      public function §4N§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§,l§++;
         this.§"!V§[_loc2_] = param1;
      }
      
      public function §8!c§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§9f§++;
         this.§"!2§[_loc2_] = param1;
      }
   }
}
