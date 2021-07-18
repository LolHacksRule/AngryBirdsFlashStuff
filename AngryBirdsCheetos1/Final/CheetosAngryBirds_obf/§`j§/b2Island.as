package §`j§
{
   import §0!G§.*;
   import §2!F§.*;
   import §8Y§.*;
   import §9"§.*;
   import §[!8§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §&!T§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&!T§ = new b2ContactImpulse();
         }
      }
      
      private var §,]§;
      
      private var §!!<§:b2ContactListener;
      
      private var §%P§:b2ContactSolver;
      
      b2internal var §+]§:Vector.<b2Body>;
      
      b2internal var §3h§:Vector.<b2Contact>;
      
      b2internal var §8e§:Vector.<b2Joint>;
      
      b2internal var §,z§:int;
      
      b2internal var §!![§:int;
      
      b2internal var §7M§:int;
      
      private var §3C§:int;
      
      b2internal var §+D§:int;
      
      b2internal var §5=§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§+]§ = new Vector.<b2Body>();
               while(_loc1_ || _loc1_)
               {
                  this.§3h§ = new Vector.<b2Contact>();
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        this.§8e§ = new Vector.<b2Joint>();
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §>b§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            this.§3C§ = param1;
            while(true)
            {
               this.§+D§ = param2;
               while(_loc8_)
               {
                  this.§5=§ = param3;
                  loop2:
                  while(!(_loc9_ && this))
                  {
                     this.§,z§ = 0;
                     while(true)
                     {
                        this.§7M§ = 0;
                        loop4:
                        while(_loc8_ || param3)
                        {
                           this.§!![§ = 0;
                           loop5:
                           while(true)
                           {
                              this.§,]§ = param4;
                              loop6:
                              while(true)
                              {
                                 this.§!!<§ = param5;
                                 while(!_loc9_)
                                 {
                                    this.§%P§ = param6;
                                    loop8:
                                    while(_loc8_ || this)
                                    {
                                       if(_loc8_)
                                       {
                                          while(true)
                                          {
                                             _loc7_ = int(this.§+]§.length);
                                             if(!(_loc9_ && param1))
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             continue loop8;
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
                                                   if(§§pop() < §§pop())
                                                   {
                                                      this.§+]§[_loc7_] = null;
                                                      break;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      §§push(int(this.§3h§.length));
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         addr30:
                                                         if(!(_loc8_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(param3);
                                                         if(_loc8_)
                                                         {
                                                            if(_loc9_ && this)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  loop19:
                                                                  for(; _loc9_ && param2; _loc7_++)
                                                                  {
                                                                     loop20:
                                                                     while(_loc8_)
                                                                     {
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        addr159:
                                                                        addr81:
                                                                        addr118:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!(_loc9_ && param3))
                                                                           {
                                                                              §§push(param2);
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(int(this.§8e§.length));
                                                                                    }
                                                                                    break loop20;
                                                                                 }
                                                                                 this.§3h§[_loc7_] = null;
                                                                                 break;
                                                                              }
                                                                              addr137:
                                                                              if(!(_loc8_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc7_++;
                                                                              continue;
                                                                              addr91:
                                                                           }
                                                                           addr98:
                                                                           while(!_loc9_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              break loop20;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc9_)
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           if(!(_loc8_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§goto(addr30);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr98);
                                                                        }
                                                                        §§goto(addr137);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr81);
                                                                     }
                                                                  }
                                                                  §§goto(addr21);
                                                               }
                                                               return;
                                                            }
                                                            this.§8e§[_loc7_] = null;
                                                            §§goto(addr71);
                                                         }
                                                         §§goto(addr91);
                                                      }
                                                   }
                                                   §§goto(addr156);
                                                }
                                                _loc7_++;
                                                §§goto(addr159);
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr202);
      }
      
      public function § C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§,z§ = 0;
            while(true)
            {
               this.§7M§ = 0;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§!![§ = 0;
            if(_loc2_ || _loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §9G§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(!_loc18_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§,z§)
         {
            if((_loc6_ = this.§+]§[_loc4_]).§"!M§() != b2Body.b2_dynamicBody)
            {
               if(_loc19_)
               {
                  loop19:
                  while(true)
                  {
                     _loc4_++;
                     if(_loc19_)
                     {
                        if(!_loc18_)
                        {
                           if(!_loc18_)
                           {
                              if(false)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push(_loc6_.m_angularVelocity);
                                    if(_loc19_ || param3)
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§7!?§);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() * _loc6_.§3p§);
                                       }
                                       §§push(§§pop() * §§pop().§-!1§(§§pop() - §§pop(),0,1));
                                    }
                                    §§pop().m_angularVelocity = §§pop();
                                    addr182:
                                    while(_loc19_)
                                    {
                                       while(true)
                                       {
                                          continue loop19;
                                       }
                                    }
                                    addr251:
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc6_.§,?§);
                                       if(_loc19_)
                                       {
                                          while(true)
                                          {
                                             §§push(b2Math);
                                             §§push(1);
                                             §§push(param1.§7!?§);
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(§§pop() * _loc6_.§-Z§);
                                             }
                                             §§push(§§pop().§-!1§(§§pop() - §§pop(),0,1));
                                             if(!_loc18_)
                                             {
                                                if(_loc18_)
                                                {
                                                   break loop11;
                                                }
                                                while(true)
                                                {
                                                   §§pop().§@-§(§§pop());
                                                   addr213:
                                                   while(true)
                                                   {
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                             addr281:
                                             while(true)
                                             {
                                                §§pop().y = §§pop();
                                             }
                                          }
                                          addr190:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_.§,?§);
                                             addr256:
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                                break loop11;
                                             }
                                          }
                                          addr254:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(param1.§7!?§);
                                       if(!_loc18_)
                                       {
                                          while(true)
                                          {
                                             §§push(param2.y);
                                             if(!_loc18_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc6_.§#!D§);
                                                   if(_loc19_ || this)
                                                   {
                                                      addr274:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.§1!1§);
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
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                }
                                                addr265:
                                             }
                                             addr279:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          addr261:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr281);
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(_loc6_.m_angularVelocity);
                              if(!(_loc18_ && param2))
                              {
                                 §§push(param1.§7!?§);
                                 if(_loc19_ || param1)
                                 {
                                    §§push(_loc6_.§?8§);
                                    if(!(_loc18_ && param1))
                                    {
                                       addr249:
                                       §§push(§§pop() * §§pop());
                                       if(_loc19_)
                                       {
                                          §§push(_loc6_.§3!S§);
                                       }
                                       §§pop().m_angularVelocity = §§pop() + §§pop();
                                       §§goto(addr251);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                              §§goto(addr249);
                           }
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr182);
                  }
               }
               §§goto(addr184);
            }
            else
            {
               §§push(_loc6_.§,?§);
               if(_loc19_)
               {
                  §§push(_loc6_.§,?§);
                  if(!_loc18_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc18_ && param2))
                     {
                        §§push(param1.§7!?§);
                        if(_loc19_ || param2)
                        {
                           §§push(param2.x);
                           if(!(_loc18_ && param3))
                           {
                              §§push(_loc6_.§#!D§);
                              if(_loc19_ || param2)
                              {
                                 §§push(_loc6_.§1!1§);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc18_ && param2))
                                             {
                                                addr134:
                                                §§push(§§pop() + §§pop());
                                                if(_loc19_ || this)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc19_)
                                                   {
                                                      §§goto(addr254);
                                                      §§push(_loc6_.§,?§);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr274);
                           }
                           §§goto(addr279);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr256);
               }
            }
            §§goto(addr190);
         }
         if(_loc19_)
         {
            §§push(this.§%P§);
            if(_loc19_ || param1)
            {
               §§pop().§>b§(param1,this.§3h§,this.§7M§,this.§,]§);
               addr306:
               §§push(this.§%P§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!(_loc18_ && param3))
            {
               §§push(0);
               if(!_loc18_)
               {
                  _loc4_ = §§pop();
                  if(_loc19_)
                  {
                     addr326:
                     loop24:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_ || param1)
                        {
                           §§push(this.§!![§);
                           if(!_loc18_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§8e§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!(_loc18_ && this))
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!(_loc18_ && param1))
                              {
                                 §§push(0);
                                 if(_loc19_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc19_)
                                    {
                                       loop25:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_ || param1)
                                          {
                                             §§push(param1.§7!I§);
                                             if(!_loc18_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc19_ || param2)
                                                   {
                                                      §§push(0);
                                                      if(_loc19_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!(_loc18_ && param2))
                                                         {
                                                            loop145:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc18_ && param3))
                                                               {
                                                                  addr477:
                                                                  §§push(this.§!![§);
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     addr486:
                                                                     loop142:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§8e§[_loc4_]).§+!U§();
                                                                           if(_loc19_)
                                                                           {
                                                                              _loc4_++;
                                                                           }
                                                                           continue loop145;
                                                                        }
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           _loc8_.§+!U§();
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc19_ || param2)
                                                                              {
                                                                                 break loop25;
                                                                              }
                                                                              break;
                                                                           }
                                                                           loop72:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          addr1244:
                                                                                          §§pop();
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             loop78:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr1406:
                                                                                                addr1703:
                                                                                                loop77:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      _loc4_++;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!(_loc18_ && param3))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§>C§);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                     {
                                                                                                                        if(_loc19_ || this)
                                                                                                                        {
                                                                                                                           loop75:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§!E§(_loc8_.§<w§);
                                                                                                                              addr1403:
                                                                                                                              addr1362:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param3);
                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && param2))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop78;
                                                                                                                                 }
                                                                                                                                 continue loop77;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1372:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(Number.MAX_VALUE));
                                                                                                                                             loop86:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                loop87:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr1339:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr1338:
                                                                                                                                                   }
                                                                                                                                                   loop83:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      addr1341:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue loop87;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            loop143:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr1274:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                        if(_loc19_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc18_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop83;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc19_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1320:
                                                                                                                                                                                    if(_loc18_ && param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop86;
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop142;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1700:
                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop77;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1736:
                                                                                                                                                                                       return;
                                                                                                                                                                                       addr1330:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1736);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1687:
                                                                                                                                                                              §§push(b2Settings.b2_timeToSleep);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1338);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr1697:
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1700);
                                                                                                                                                                              }
                                                                                                                                                                              loop22:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§,z§);
                                                                                                                                                                                 addr1735:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop22;
                                                                                                                                                                                    }
                                                                                                                                                                                    (_loc6_ = this.§+]§[_loc4_]).SetAwake(false);
                                                                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_++;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1700);
                                                                                                                                                                              addr1733:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1700);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1339);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1320);
                                                                                                                                                                  continue loop143;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1345:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1403);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1372:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1407:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop75;
                                                                                                                                          }
                                                                                                                                          addr1407:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1697);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1700);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break loop77;
                                                                                                                     }
                                                                                                                     §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!(_loc18_ && param3))
                                                                                                                        {
                                                                                                                           _loc12_ = §§pop();
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              continue loop72;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(_loc18_ && param3)
                                                                                                                              {
                                                                                                                                 continue loop78;
                                                                                                                              }
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1274);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr1666:
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(!(_loc18_ && param2))
                                                                                                                                    {
                                                                                                                                       addr1674:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§,z§);
                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                          {
                                                                                                                                             addr1683:
                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr1686:
                                                                                                                                                   §§goto(addr1687);
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1700);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push((_loc6_ = this.§+]§[_loc4_]).§"!M§());
                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Body.b2_staticBody);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_ || param3)
                                                                                                                                                         {
                                                                                                                                                            loop51:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc4_++;
                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc18_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     if(true)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     loop43:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Math.§[S§(_loc15_,_loc6_.§&Q§));
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1511:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                    addr1514:
                                                                                                                                                                                    while(!(_loc18_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop51;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop42:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop43;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1665:
                                                                                                                                                                                             addr1665:
                                                                                                                                                                                             loop32:
                                                                                                                                                                                             while(!(_loc18_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                   loop33:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         break loop43;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1628:
                                                                                                                                                                                                      loop35:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                         loop36:
                                                                                                                                                                                                         while(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop37:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc19_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        break loop42;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1641:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop41:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        §§push(_loc6_.§&Q§);
                                                                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + param1.§7!?§);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().§&Q§ = §§pop();
                                                                                                                                                                                                                        continue loop42;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc6_.§&Q§ = 0;
                                                                                                                                                                                                                        addr1599:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           addr1553:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1579:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_ && param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1651:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       break loop37;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1641);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop35;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop36;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1631);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1631:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1644:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.§@x§);
                                                                                                                                                                                                   addr1646:
                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(b2Body.§&!?§);
                                                                                                                                                                                                      addr1648:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() & §§pop());
                                                                                                                                                                                                         addr1649:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            addr1650:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1651);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop59;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1564);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1514:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1579);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1553);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1563);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1511);
                                                                                                                                                                     }
                                                                                                                                                                     loop34:
                                                                                                                                                                     while(_loc19_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1628);
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              break loop34;
                                                                                                                                                                           }
                                                                                                                                                                           addr1663:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                        §§goto(addr1665);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1599);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1514);
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1661);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.§@x§);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(b2Body.§&!?§);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr1450:
                                                                                                                                                               §§push(§§pop() & §§pop());
                                                                                                                                                               if(_loc19_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc6_.§&Q§ = 0;
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1663);
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              addr1474:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1665);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1474);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1644);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1650);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1649);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1648);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1646);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1450);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1646);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1735);
                                                                                                                                       addr1674:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1733);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1104);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       loop90:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             addr1217:
                                                                                                                                             §§push(this.§!![§);
                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         continue loop72;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1686);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push((_loc7_ = this.§8e§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               loop69:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  loop70:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        loop68:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           loop65:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop63:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                 if(!(_loc18_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop69;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1188:
                                                                                                                                                                                       if(!(_loc19_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop70;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1196:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                          while(_loc18_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop65;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc5_++;
                                                                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop63;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop90;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1200);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1200:
                                                                                                                                                                                          continue loop90;
                                                                                                                                                                                          addr1207:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop68;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1188);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1195);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1209:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1207);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1196);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1209);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr1226:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1683);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1697);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1372);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1700);
                                                                                                                              }
                                                                                                                              §§goto(addr1697);
                                                                                                                              §§goto(addr1113);
                                                                                                                           }
                                                                                                                           addr1104:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1362);
                                                                                                                     §§goto(addr1362);
                                                                                                                  }
                                                                                                                  §§goto(addr1735);
                                                                                                               }
                                                                                                               addr1386:
                                                                                                            }
                                                                                                            §§goto(addr1700);
                                                                                                         }
                                                                                                         addr1378:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1732);
                                                                                             }
                                                                                             addr1405:
                                                                                          }
                                                                                          §§goto(addr1407);
                                                                                       }
                                                                                       §§goto(addr1362);
                                                                                    }
                                                                                    §§goto(addr1406);
                                                                                 }
                                                                                 §§goto(addr1244);
                                                                              }
                                                                              §§goto(addr1405);
                                                                           }
                                                                        }
                                                                        §§goto(addr1345);
                                                                        §§goto(addr477);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§goto(addr1272);
                                                                           }
                                                                           §§goto(addr1341);
                                                                        }
                                                                        §§goto(addr1703);
                                                                        §§goto(addr1330);
                                                                     }
                                                                     addr1262:
                                                                     addr486:
                                                                  }
                                                                  loop144:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           addr1083:
                                                                           §§push(0);
                                                                           if(_loc19_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§goto(addr1378);
                                                                              }
                                                                              §§goto(addr1407);
                                                                           }
                                                                           §§goto(addr1700);
                                                                        }
                                                                        §§goto(addr1703);
                                                                     }
                                                                     else
                                                                     {
                                                                        if((_loc6_ = this.§+]§[_loc4_]).§"!M§() == b2Body.b2_staticBody)
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              loop140:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       addr1068:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_.§=!Y§();
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(this.§,z§);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                continue loop144;
                                                                                             }
                                                                                             §§goto(addr1683);
                                                                                          }
                                                                                          §§goto(addr1700);
                                                                                       }
                                                                                       addr1068:
                                                                                       addr577:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1068);
                                                                                    }
                                                                                    §§goto(addr1700);
                                                                                 }
                                                                                 loop95:
                                                                                 while(_loc19_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             continue loop140;
                                                                                          }
                                                                                          loop118:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.§,?§);
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(_loc6_.§,?§);
                                                                                                   if(!(_loc18_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc19_ || param2)
                                                                                                      {
                                                                                                         if(!(_loc19_ || param3))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(b2Settings.b2_maxTranslation);
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     §§push(param1.§-#§);
                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                     {
                                                                                                                        addr1012:
                                                                                                                        §§pop().y = §§pop() * (§§pop() * §§pop());
                                                                                                                        addr1011:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop120:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param1.§7!?§);
                                                                                                                              if(_loc19_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.m_angularVelocity);
                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ && param3))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr883:
                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc18_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr898:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr902:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop120;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      addr914:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr915:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc19_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * param1.§-#§);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                  loop123:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr763:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                        loop98:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                           loop99:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc19_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop123;
                                                                                                                                                                                                                              }
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
                                                                                                                                                                                                                                       loop103:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                          loop104:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop100;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc18_ && param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop().c);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                addr735:
                                                                                                                                                                                                                                                addr645:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                                                                                                                   addr736:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                      addr737:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param1.§7!?§);
                                                                                                                                                                                                                                                         addr739:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_.§,?§);
                                                                                                                                                                                                                                                            addr741:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                               addr742:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  addr743:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     addr744:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                        addr745:
                                                                                                                                                                                                                                                                        while(_loc19_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                              continue loop104;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1043:
                                                                                                                                                                                                                                                                           addr1041:
                                                                                                                                                                                                                                                                           §§push(_loc6_.§,?§);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().Normalize();
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop99;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                                                                if(_loc18_ && param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                if(_loc19_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param1.§7!?§);
                                                                                                                                                                                                                                                            if(_loc19_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc19_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_.§,?§);
                                                                                                                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr706:
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                       addr719:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                    if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().a);
                                                                                                                                                                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc18_ && param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop102;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(param1.§7!?§);
                                                                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                          break loop95;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop101;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop104;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop103;
                                                                                                                                                                                                                                                                              addr710:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr737);
                                                                                                                                                                                                                                                                           §§goto(addr745);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr742);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr739);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr743);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr706);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr744);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr706);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr736);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr735);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr736);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop98;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop123;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(!(_loc19_ || param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           addr1034:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                              addr1035:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                                                                 addr1036:
                                                                                                                                                                                                                                 loop135:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr1037:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr1038:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                                                                          addr1040:
                                                                                                                                                                                                                                          while(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1041);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop120;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop135;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1033:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1034);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1024:
                                                                                                                                                                                                               continue loop118;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr915:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr781:
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * param1.§-#§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr781);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr791:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr915);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr763);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                addr1065:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr1066:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                                                                      §§goto(addr1067);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1064:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1067);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1033);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr902:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr914);
                                                                                                                                                                              }
                                                                                                                                                                              addr898:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr913);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1035);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr902);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1036);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr883);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1065);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1066);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1034);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr898);
                                                                                                                                             }
                                                                                                                                             addr827:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1037);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1040);
                                                                                                                                    }
                                                                                                                                    §§goto(addr902);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1038);
                                                                                                                              }
                                                                                                                              §§goto(addr898);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1024);
                                                                                                            }
                                                                                                            §§goto(addr1011);
                                                                                                         }
                                                                                                         §§goto(addr1024);
                                                                                                      }
                                                                                                      §§goto(addr1012);
                                                                                                   }
                                                                                                   §§goto(addr1024);
                                                                                                }
                                                                                                §§goto(addr1043);
                                                                                             }
                                                                                             §§goto(addr1024);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr915);
                                                                                    }
                                                                                    §§goto(addr791);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr577);
                                                                                       }
                                                                                       addr634:
                                                                                    }
                                                                                    §§goto(addr710);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1067);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param1.§7!?§);
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              §§push(_loc6_.§,?§);
                                                                              if(_loc19_ || param2)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          if(_loc19_ || param3)
                                                                                          {
                                                                                             §§push(param1.§7!?§);
                                                                                             if(_loc19_ || param3)
                                                                                             {
                                                                                                addr1063:
                                                                                                §§goto(addr1064);
                                                                                                §§push(_loc6_.§,?§.y);
                                                                                             }
                                                                                             §§goto(addr1065);
                                                                                          }
                                                                                          §§goto(addr634);
                                                                                       }
                                                                                       §§goto(addr1065);
                                                                                    }
                                                                                    §§goto(addr1034);
                                                                                 }
                                                                                 §§goto(addr827);
                                                                              }
                                                                              §§goto(addr1063);
                                                                           }
                                                                        }
                                                                        §§goto(addr1034);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1697);
                                                      }
                                                      §§goto(addr1262);
                                                   }
                                                   addr514:
                                                   §§goto(addr1068);
                                                }
                                                else
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
                                                            if(_loc19_)
                                                            {
                                                               break loop24;
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr1674);
                                                         addr398:
                                                      }
                                                      §§goto(addr514);
                                                   }
                                                }
                                                §§goto(addr1674);
                                             }
                                             §§goto(addr1226);
                                          }
                                          break;
                                          addr417:
                                          _loc4_++;
                                          if(_loc19_ || param1)
                                          {
                                             continue;
                                          }
                                          §§goto(addr1083);
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc18_ && param3))
                                       {
                                          §§goto(addr514);
                                       }
                                       §§goto(addr1403);
                                    }
                                    §§goto(addr1372);
                                 }
                                 §§goto(addr1386);
                              }
                              §§goto(addr1372);
                           }
                           §§goto(addr486);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§!![§);
                        if(!(_loc18_ && param1))
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc19_)
                              {
                                 _loc8_.SolveVelocityConstraints();
                                 if(_loc19_)
                                 {
                                    §§goto(addr417);
                                 }
                                 §§goto(addr1083);
                              }
                              §§goto(addr1121);
                           }
                           else
                           {
                              (_loc7_ = this.§8e§[_loc5_]).SolveVelocityConstraints(param1);
                              if(_loc19_ || this)
                              {
                                 _loc5_++;
                              }
                           }
                           §§goto(addr398);
                        }
                        break;
                     }
                     §§goto(addr486);
                  }
                  §§goto(addr1697);
               }
               §§goto(addr1700);
            }
            §§goto(addr326);
         }
         §§goto(addr306);
      }
      
      public function §,!%§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:Boolean = false;
         if(!(_loc14_ && this))
         {
            §§push(this.§%P§);
            if(_loc13_)
            {
               §§pop().§>b§(param1,this.§3h§,this.§7M§,this.§,]§);
               addr54:
               §§push(this.§%P§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc13_)
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
                  §§push(this.§!![§);
                  if(_loc13_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              §§push(0);
                              if(!(_loc14_ && _loc3_))
                              {
                                 _loc2_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc14_ && _loc3_))
                                       {
                                          §§push(param1.§7!I§);
                                          if(!_loc14_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc14_)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         §§push(0);
                                                         if(_loc13_)
                                                         {
                                                            if(!(_loc14_ && _loc3_))
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc2_ = §§pop();
                                                               if(!(_loc14_ && this))
                                                               {
                                                                  addr106:
                                                                  if(!(_loc13_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc14_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(this.§!![§);
                                                                           if(!(_loc14_ && param1))
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 do
                                                                                 {
                                                                                    if(!(_loc13_ || this))
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                                 while(!_loc13_);
                                                                                 
                                                                                 continue loop3;
                                                                                 addr131:
                                                                              }
                                                                              this.§8e§[_loc3_].SolveVelocityConstraints(param1);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc14_ && _loc2_))
                                                                                 {
                                                                                    _loc3_++;
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr172:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr733:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if((_loc6_ = this.§+]§[_loc2_]).§"!M§() == b2Body.b2_staticBody)
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr274:
                                                                                       _loc2_++;
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   addr288:
                                                                                                   _loc6_.§=!Y§();
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§goto(addr274);
                                                                                                         }
                                                                                                         addr553:
                                                                                                         if(!(_loc14_ && param1))
                                                                                                         {
                                                                                                            addr562:
                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                            if(_loc13_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc13_ || _loc3_)
                                                                                                               {
                                                                                                                  addr577:
                                                                                                                  if(§§pop() < 0)
                                                                                                                  {
                                                                                                                     addr578:
                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        §§push(b2Settings.b2_maxRotation);
                                                                                                                        if(!(_loc14_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              addr598:
                                                                                                                              §§push(§§pop() * param1.§-#§);
                                                                                                                           }
                                                                                                                           §§pop().m_angularVelocity = §§pop();
                                                                                                                           addr446:
                                                                                                                           _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                           addr451:
                                                                                                                           addr602:
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              addr434:
                                                                                                                              _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                              addr433:
                                                                                                                              addr431:
                                                                                                                              if(_loc13_ || param1)
                                                                                                                              {
                                                                                                                                 addr410:
                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       addr426:
                                                                                                                                       §§pop().c.x = _loc6_.m_sweep.c.x + param1.§7!?§ * _loc6_.§,?§.x;
                                                                                                                                       addr337:
                                                                                                                                       addr421:
                                                                                                                                       addr425:
                                                                                                                                       addr424:
                                                                                                                                       addr423:
                                                                                                                                       addr419:
                                                                                                                                       addr418:
                                                                                                                                       addr417:
                                                                                                                                       §§push(_loc6_.m_sweep.c);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().c);
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§7!?§);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.§,?§);
                                                                                                                                                         if(_loc13_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               addr374:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr384:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        addr392:
                                                                                                                                                                        if(!(_loc14_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().a);
                                                                                                                                                                                       if(_loc13_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr332:
                                                                                                                                                                                             §§push(param1.§7!?§);
                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                             §§goto(addr288);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr434);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr332);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr433);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr410);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr337);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr451);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr434);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr426);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr421);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr425);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr424);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr423);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr374);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr419);
                                                                                                                                                }
                                                                                                                                                §§goto(addr384);
                                                                                                                                             }
                                                                                                                                             §§goto(addr418);
                                                                                                                                          }
                                                                                                                                          §§goto(addr417);
                                                                                                                                       }
                                                                                                                                       addr415:
                                                                                                                                       §§goto(addr415);
                                                                                                                                       addr427:
                                                                                                                                    }
                                                                                                                                    §§goto(addr446);
                                                                                                                                 }
                                                                                                                                 §§goto(addr431);
                                                                                                                                 addr442:
                                                                                                                              }
                                                                                                                              §§goto(addr602);
                                                                                                                           }
                                                                                                                           §§goto(addr578);
                                                                                                                           addr443:
                                                                                                                        }
                                                                                                                        §§goto(addr598);
                                                                                                                     }
                                                                                                                     addr657:
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr467:
                                                                                                                        §§push(param1.§7!?§);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 addr476:
                                                                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc13_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc14_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                   if(!(_loc14_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr527:
                                                                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr546:
                                                                                                                                                                  §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     addr550:
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr553);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr443);
                                                                                                                                                                     }
                                                                                                                                                                     addr705:
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           addr710:
                                                                                                                                                                           _loc6_.§,?§.Normalize();
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              addr668:
                                                                                                                                                                              §§push(_loc6_.§,?§);
                                                                                                                                                                              if(!(_loc14_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr691:
                                                                                                                                                                                 addr677:
                                                                                                                                                                                 §§push(_loc6_.§,?§.x);
                                                                                                                                                                                 if(!(_loc14_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr690:
                                                                                                                                                                                    §§push(§§pop() * (b2Settings.b2_maxTranslation * param1.§-#§));
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 §§push(_loc6_.§,?§);
                                                                                                                                                                                 if(_loc13_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.§,?§);
                                                                                                                                                                                    if(_loc13_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                             if(!(_loc14_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc13_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1.§-#§);
                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr653:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr656:
                                                                                                                                                                                                         §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                         §§goto(addr657);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr690);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr653);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr691);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr656);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr677);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr668);
                                                                                                                                                                                 addr692:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr710);
                                                                                                                                                                           }
                                                                                                                                                                           addr728:
                                                                                                                                                                           §§push(_loc7_ * _loc7_ + _loc8_ * _loc8_);
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr705);
                                                                                                                                                                              §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                           }
                                                                                                                                                                           _loc8_ = §§pop();
                                                                                                                                                                           addr729:
                                                                                                                                                                           §§goto(addr729);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr710);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr467);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr577);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr562);
                                                                                                                                                            }
                                                                                                                                                            addr727:
                                                                                                                                                            §§goto(addr728);
                                                                                                                                                            §§push(Number(§§pop() * §§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr728);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr550);
                                                                                                                                                }
                                                                                                                                                §§goto(addr728);
                                                                                                                                             }
                                                                                                                                             §§goto(addr527);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr546);
                                                                                                                                    }
                                                                                                                                    §§goto(addr728);
                                                                                                                                 }
                                                                                                                                 §§goto(addr527);
                                                                                                                              }
                                                                                                                              §§goto(addr727);
                                                                                                                           }
                                                                                                                           §§goto(addr728);
                                                                                                                        }
                                                                                                                        §§goto(addr546);
                                                                                                                     }
                                                                                                                     §§goto(addr692);
                                                                                                                  }
                                                                                                                  §§push(_loc6_);
                                                                                                                  §§push(b2Settings.b2_maxRotation);
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * param1.§-#§);
                                                                                                                  }
                                                                                                                  §§pop().m_angularVelocity = §§pop();
                                                                                                                  addr466:
                                                                                                                  §§goto(addr446);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr728);
                                                                                                         }
                                                                                                         §§goto(addr710);
                                                                                                      }
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                                addr730:
                                                                                                §§push(_loc2_);
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr427);
                                                                                          }
                                                                                          §§goto(addr392);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    §§goto(addr442);
                                                                                 }
                                                                                 §§push(param1.§7!?§);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§push(_loc6_.§,?§);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc13_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc13_ || this)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   §§push(param1.§7!?§);
                                                                                                   if(_loc13_ || param1)
                                                                                                   {
                                                                                                      addr725:
                                                                                                      §§goto(addr727);
                                                                                                      §§push(_loc6_.§,?§.y);
                                                                                                   }
                                                                                                   §§goto(addr728);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                          §§goto(addr728);
                                                                                       }
                                                                                       §§goto(addr550);
                                                                                    }
                                                                                    §§goto(addr725);
                                                                                 }
                                                                                 §§goto(addr577);
                                                                              }
                                                                              §§push(0.75);
                                                                              if(!(_loc14_ && this))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc5_:* = §§pop();
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr983:
                                                                                 _loc2_ = 0;
                                                                                 addr751:
                                                                                 addr984:
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc14_ && _loc2_))
                                                                                 {
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§push(param1.§>C§);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(_loc13_ || this)
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      addr783:
                                                                                                      this.§!E§(_loc4_.§<w§);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(_loc13_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr930:
                                                                                                                     addr954:
                                                                                                                     §§push(Boolean(_loc11_));
                                                                                                                     if(Boolean(_loc11_))
                                                                                                                     {
                                                                                                                        addr931:
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           if(!(_loc14_ && param1))
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr915:
                                                                                                                              addr941:
                                                                                                                              §§push(Boolean(Boolean(_loc12_)));
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    _loc3_++;
                                                                                                                                    addr839:
                                                                                                                                    if(_loc3_ >= this.§!![§)
                                                                                                                                    {
                                                                                                                                       addr844:
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          if(!(_loc14_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc14_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!(_loc14_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr882:
                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr897:
                                                                                                                                                                     if(_loc13_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr882);
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr828:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr830:
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr783);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr844);
                                                                                                                                                                              }
                                                                                                                                                                              _loc2_++;
                                                                                                                                                                              addr834:
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr838:
                                                                                                                                                                                    §§goto(addr751);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr961:
                                                                                                                                                                                 _loc11_ = true;
                                                                                                                                                                                 _loc3_ = 0;
                                                                                                                                                                                 addr962:
                                                                                                                                                                                 addr981:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr839);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr931);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr984);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr962);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr961);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr915);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr828);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr930);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr915);
                                                                                                                                                }
                                                                                                                                                §§goto(addr882);
                                                                                                                                             }
                                                                                                                                             §§goto(addr930);
                                                                                                                                          }
                                                                                                                                          §§goto(addr882);
                                                                                                                                       }
                                                                                                                                       §§goto(addr941);
                                                                                                                                    }
                                                                                                                                    addr953:
                                                                                                                                    _loc12_ = this.§8e§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                                                                                                                                    §§goto(addr954);
                                                                                                                                    addr925:
                                                                                                                                    addr909:
                                                                                                                                 }
                                                                                                                                 addr980:
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 §§goto(addr981);
                                                                                                                              }
                                                                                                                              §§goto(addr930);
                                                                                                                           }
                                                                                                                           addr979:
                                                                                                                           §§goto(addr980);
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr953);
                                                                                                                     }
                                                                                                                     §§goto(addr915);
                                                                                                                  }
                                                                                                                  return;
                                                                                                               }
                                                                                                               §§goto(addr925);
                                                                                                            }
                                                                                                            §§goto(addr909);
                                                                                                         }
                                                                                                         §§goto(addr897);
                                                                                                      }
                                                                                                      §§goto(addr830);
                                                                                                   }
                                                                                                   §§goto(addr834);
                                                                                                }
                                                                                                §§goto(addr783);
                                                                                             }
                                                                                             §§goto(addr979);
                                                                                             §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                          }
                                                                                          §§goto(addr839);
                                                                                       }
                                                                                       §§goto(addr983);
                                                                                    }
                                                                                    §§goto(addr961);
                                                                                 }
                                                                                 §§goto(addr839);
                                                                              }
                                                                              §§goto(addr838);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr731:
                                                                     §§goto(addr733);
                                                                     §§push(this.§,z§);
                                                                  }
                                                                  §§goto(addr730);
                                                               }
                                                               §§goto(addr733);
                                                            }
                                                            else
                                                            {
                                                               addr171:
                                                               _loc3_ = §§pop();
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         §§goto(addr731);
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         addr178:
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                §§goto(addr106);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr733);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr731);
                           }
                           else
                           {
                              _loc2_++;
                              if(!(_loc14_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              addr217:
                           }
                           §§goto(addr733);
                        }
                     }
                     else
                     {
                        this.§8e§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr733);
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §!E§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_)
         {
            if(this.§!!<§ == null)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < this.§7M§)
            {
               _loc3_ = this.§3h§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!_loc6_)
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
               §§goto(addr154);
               if(true)
               {
                  continue;
               }
               §§goto(addr82);
            }
            return;
         }
         addr38:
      }
      
      public function §>6§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            param1.§^V§ = this.§,z§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§,z§ + 1;
         _loc3_.§,z§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§,z§;
         this.§+]§[_loc2_] = param1;
      }
      
      public function §%!=§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§7M§ + 1;
         _loc3_.§7M§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§7M§;
         this.§3h§[_loc2_] = param1;
      }
      
      public function §,q§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§!![§ + 1;
         _loc3_.§!![§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§!![§;
         this.§8e§[_loc2_] = param1;
      }
   }
}
