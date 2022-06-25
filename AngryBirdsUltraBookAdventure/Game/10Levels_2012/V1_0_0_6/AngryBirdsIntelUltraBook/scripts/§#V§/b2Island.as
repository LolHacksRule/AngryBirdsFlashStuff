package §#V§
{
   import §&a§.*;
   import §,G§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §]Q§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §]Q§ = new b2ContactImpulse();
         }
      }
      
      private var §7!a§;
      
      private var §>e§:b2ContactListener;
      
      private var §@d§:b2ContactSolver;
      
      b2internal var §[_§:Vector.<b2Body>;
      
      b2internal var §!!f§:Vector.<b2Contact>;
      
      b2internal var §-E§:Vector.<b2Joint>;
      
      b2internal var §2R§:int;
      
      b2internal var §+i§:int;
      
      b2internal var §?o§:int;
      
      private var §3X§:int;
      
      b2internal var §2!l§:int;
      
      b2internal var §]!S§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§[_§ = new Vector.<b2Body>();
               while(true)
               {
                  this.§!!f§ = new Vector.<b2Contact>();
                  §§goto(addr74);
               }
            }
         }
         addr74:
         while(true)
         {
            this.§-E§ = new Vector.<b2Joint>();
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §'K§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_ || this)
         {
            this.§3X§ = param1;
            while(true)
            {
               this.§2!l§ = param2;
               loop1:
               while(true)
               {
                  this.§]!S§ = param3;
                  while(true)
                  {
                     this.§2R§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§?o§ = 0;
                        addr260:
                        while(true)
                        {
                           this.§+i§ = 0;
                           while(true)
                           {
                              this.§7!a§ = param4;
                              continue loop1;
                              addr179:
                              if(!(_loc9_ && this))
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     if(!(_loc8_ || param1))
                     {
                        continue;
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
                                 loop13:
                                 while(true)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(int(this.§!!f§.length));
                                       loop14:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             loop16:
                                             do
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(param2);
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         this.§!!f§[_loc7_] = null;
                                                         break;
                                                         addr92:
                                                      }
                                                      while(!_loc9_)
                                                      {
                                                         §§push(int(this.§-E§.length));
                                                      }
                                                      continue loop10;
                                                      addr35:
                                                      §§push(param3);
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               addr73:
                                                               if(_loc8_ || param3)
                                                               {
                                                                  _loc7_++;
                                                                  addr62:
                                                                  if(_loc8_)
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc8_ || this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!(_loc8_ || this))
                                                                                 {
                                                                                    addr108:
                                                                                    break;
                                                                                    addr108:
                                                                                 }
                                                                                 _loc7_ = §§pop();
                                                                                 while(_loc8_)
                                                                                 {
                                                                                    continue loop21;
                                                                                    §§goto(addr73);
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           continue loop11;
                                                                           addr98:
                                                                        }
                                                                        §§goto(addr35);
                                                                        §§goto(addr108);
                                                                     }
                                                                  }
                                                                  §§goto(addr92);
                                                               }
                                                               §§goto(addr108);
                                                            }
                                                            if(_loc8_ || param1)
                                                            {
                                                               return;
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr62);
                                                      }
                                                      this.§-E§[_loc7_] = null;
                                                      §§goto(addr73);
                                                   }
                                                   _loc7_++;
                                                   §§goto(addr108);
                                                }
                                                §§goto(addr98);
                                             }
                                             while(!_loc9_);
                                             
                                             continue loop13;
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 this.§[_§[_loc7_] = null;
                              }
                              _loc7_++;
                              continue loop10;
                           }
                        }
                     }
                  }
               }
               if(!(_loc8_ || param1))
               {
                  continue;
               }
               this.§>e§ = param5;
               §§goto(addr212);
            }
         }
         §§goto(addr221);
      }
      
      public function §-6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§2R§ = 0;
            while(true)
            {
               this.§?o§ = 0;
               while(!_loc2_)
               {
                  this.§+i§ = 0;
                  if(!_loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §-,§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(_loc18_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§2R§)
         {
            if((_loc6_ = this.§[_§[_loc4_]).§'!_§() != b2Body.b2_dynamicBody)
            {
               if(!_loc19_)
               {
                  loop18:
                  while(true)
                  {
                     _loc4_++;
                     if(!(_loc19_ && this))
                     {
                        addr154:
                        if(!_loc19_)
                        {
                           while(false)
                           {
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(!(_loc19_ && param2))
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§&!'§);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * _loc6_.§7!1§);
                                    }
                                    §§push(§§pop() * §§pop().§]!M§(§§pop() - §§pop(),0,1));
                                 }
                                 §§pop().m_angularVelocity = §§pop();
                                 addr184:
                                 while(true)
                                 {
                                    continue loop18;
                                 }
                                 §§goto(addr154);
                              }
                           }
                           continue loop0;
                           addr156:
                        }
                        while(true)
                        {
                           §§push(_loc18_ || param2);
                        }
                        addr213:
                        §§goto(addr158);
                        addr206:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr213);
                           }
                           else
                           {
                              loop9:
                              while(!(_loc19_ && param3))
                              {
                                 §§push(_loc6_.§%!V§);
                                 if(!_loc19_)
                                 {
                                    while(true)
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§&!'§);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() * _loc6_.§-!G§);
                                       }
                                       §§push(§§pop().§]!M§(§§pop() - §§pop(),0,1));
                                       if(!_loc19_)
                                       {
                                          addr205:
                                          while(true)
                                          {
                                             §§pop().§%G§(§§pop());
                                             continue loop9;
                                          }
                                          addr205:
                                       }
                                    }
                                    addr190:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(_loc6_.§%!V§);
                                       addr258:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          if(_loc18_)
                                          {
                                             §§push(param1.§&!'§);
                                             if(!(_loc19_ && param2))
                                             {
                                                addr270:
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(param2.y);
                                                   if(_loc18_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.§-7§);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(_loc6_.§^!L§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y);
                                                               addr286:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            addr285:
                                                         }
                                                         addr287:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         continue loop15;
                                                      }
                                                      addr279:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      continue loop15;
                                                   }
                                                }
                                                addr270:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr256:
                                 }
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    break loop9;
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(!(_loc19_ && this))
                                 {
                                    §§push(param1.§&!'§);
                                    if(_loc18_)
                                    {
                                       §§push(_loc6_.§,!o§);
                                       if(_loc18_ || this)
                                       {
                                          addr244:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc19_)
                                          {
                                             §§push(_loc6_.§%&§);
                                          }
                                          §§pop().m_angularVelocity = §§pop() + §§pop();
                                          §§goto(addr246);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 §§goto(addr244);
                              }
                              addr246:
                           }
                           §§goto(addr206);
                        }
                     }
                  }
               }
               §§goto(addr184);
            }
            else
            {
               §§push(_loc6_.§%!V§);
               if(!_loc19_)
               {
                  §§push(_loc6_.§%!V§);
                  if(_loc18_)
                  {
                     §§push(§§pop().x);
                     if(_loc18_ || param2)
                     {
                        §§push(param1.§&!'§);
                        if(!(_loc19_ && this))
                        {
                           §§push(param2.x);
                           if(!_loc19_)
                           {
                              §§push(_loc6_.§-7§);
                              if(!(_loc19_ && param3))
                              {
                                 §§push(_loc6_.§^!L§);
                                 if(_loc18_ || param2)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc19_ && param3))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc19_)
                                          {
                                             addr125:
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_ || param3)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc18_ || this)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      §§goto(addr256);
                                                      §§push(_loc6_.§%!V§);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr270);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr287);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr285);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr270);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr258);
               }
            }
            §§goto(addr190);
         }
         if(!_loc19_)
         {
            §§push(this.§@d§);
            if(_loc18_ || param3)
            {
               §§pop().§'K§(param1,this.§!!f§,this.§?o§,this.§7!a§);
               addr315:
               §§push(this.§@d§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc18_ || param2)
            {
               §§push(0);
               if(!(_loc19_ && param2))
               {
                  _loc4_ = §§pop();
                  if(_loc18_)
                  {
                     loop21:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!(_loc19_ && this))
                        {
                           §§push(this.§+i§);
                           if(!(_loc19_ && this))
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§-E§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc18_ || param3)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!(_loc19_ && param2))
                              {
                                 §§push(0);
                                 if(_loc18_ || param3)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc19_ && this))
                                    {
                                       addr400:
                                       loop82:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc18_ || param1)
                                          {
                                             §§push(param1.§,!v§);
                                             if(_loc18_ || this)
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(0);
                                                      if(!_loc19_)
                                                      {
                                                         loop152:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(this.§+i§);
                                                                     if(_loc19_ && this)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        (_loc7_ = this.§-E§[_loc5_]).SolveVelocityConstraints(param1);
                                                                        if(!_loc19_)
                                                                        {
                                                                           _loc5_++;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        _loc8_.SolveVelocityConstraints();
                                                                        if(!_loc18_)
                                                                        {
                                                                           addr451:
                                                                           break loop152;
                                                                        }
                                                                        addr451:
                                                                        _loc4_++;
                                                                        if(_loc19_)
                                                                        {
                                                                           break loop152;
                                                                        }
                                                                        continue loop82;
                                                                     }
                                                                     §§goto(addr451);
                                                                  }
                                                                  §§goto(addr1098);
                                                               }
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr1374);
                                                         addr405:
                                                      }
                                                      break;
                                                   }
                                                   if(_loc18_ || param3)
                                                   {
                                                      addr1098:
                                                      §§push(0);
                                                      if(!_loc19_)
                                                      {
                                                         break loop82;
                                                      }
                                                      loop147:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc19_)
                                                         {
                                                            if(true)
                                                            {
                                                               loop32:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc19_ && param2))
                                                                  {
                                                                     §§push(this.§+i§);
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr1225:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              addr1276:
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 loop84:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc18_ || param2)
                                                                                       {
                                                                                          loop85:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   loop86:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc19_ && param3))
                                                                                                      {
                                                                                                         addr1414:
                                                                                                         §§push(_loc13_);
                                                                                                         loop29:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr1415:
                                                                                                            addr1416:
                                                                                                            loop30:
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               _loc4_++;
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr1394:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr1712:
                                                                                                                        §§push(param1.§-!x§);
                                                                                                                        if(_loc18_ || param2)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop85;
                                                                                                                              }
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop85;
                                                                                                                              }
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              if(!(_loc18_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop84;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr1103:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(true);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       continue loop86;
                                                                                                                                    }
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc18_ || this))
                                                                                                                                          {
                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                             if(!(_loc19_ && param1))
                                                                                                                                             {
                                                                                                                                                break loop32;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1770:
                                                                                                                                             addr1744:
                                                                                                                                          }
                                                                                                                                          continue loop147;
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       addr1115:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc19_ && param3))
                                                                                                                                          {
                                                                                                                                             break loop21;
                                                                                                                                          }
                                                                                                                                          addr1767:
                                                                                                                                          loop80:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§2R§);
                                                                                                                                             addr1769:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1770);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   (_loc6_ = this.§[_§[_loc4_]).SetAwake(false);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      _loc4_++;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop80;
                                                                                                                                                   }
                                                                                                                                                   addr1766:
                                                                                                                                                }
                                                                                                                                                continue loop80;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1323:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1770);
                                                                                                                                 }
                                                                                                                                 continue loop86;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr1408:
                                                                                                                              loop27:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§,!A§(_loc8_.§#!8§);
                                                                                                                                 addr1412:
                                                                                                                                 loop28:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param3);
                                                                                                                                    if(_loc19_ && param3)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          addr1374:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(Number.MAX_VALUE));
                                                                                                                                             addr1377:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1374:
                                                                                                                                       }
                                                                                                                                       loop26:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc19_ && param3)
                                                                                                                                          {
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                          if(!(_loc18_ || param3))
                                                                                                                                          {
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                if(_loc18_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc19_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1377);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         break loop32;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc18_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr1721:
                                                                                                                                                                  §§push(b2Settings.b2_timeToSleep);
                                                                                                                                                                  break loop26;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1354);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1721);
                                                                                                                                                         }
                                                                                                                                                         break loop26;
                                                                                                                                                      }
                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1323);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr1354:
                                                                                                                                                   addr1720:
                                                                                                                                                   §§goto(addr1721);
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   addr1278:
                                                                                                                                                }
                                                                                                                                                break loop26;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1721);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1744);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1767);
                                                                                                                                          }
                                                                                                                                          break loop32;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1407:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc19_ && param3))
                                                                                                                              {
                                                                                                                                 §§goto(addr1720);
                                                                                                                              }
                                                                                                                              §§goto(addr1770);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push((_loc6_ = this.§[_§[_loc4_]).§'!_§());
                                                                                                                              if(!(_loc19_ && this))
                                                                                                                              {
                                                                                                                                 §§push(b2Body.b2_staticBody);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          loop74:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_++;
                                                                                                                                             if(!(_loc19_ && param1))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      loop52:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Math.§=!@§(_loc15_,_loc6_.§3!T§));
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc19_ && param3))
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               loop53:
                                                                                                                                                               while(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr1533:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     loop54:
                                                                                                                                                                     for(; _loc19_ && this; _loc15_ = §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        loop55:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop49:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                          loop50:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1673:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.§]!p§);
                                                                                                                                                                                                addr1675:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(b2Body.§<!O§);
                                                                                                                                                                                                   addr1677:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() & §§pop());
                                                                                                                                                                                                      addr1678:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         addr1679:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            loop63:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               loop64:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1682:
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     loop56:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop50;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                        if(_loc18_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr1597:
                                                                                                                                                                                                                              if(!(_loc18_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1604:
                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                              if(!(_loc19_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop61:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       §§push(_loc6_.§3!T§);
                                                                                                                                                                                                                                       if(_loc18_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + param1.§&!'§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().§3!T§ = §§pop();
                                                                                                                                                                                                                                       break loop53;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc19_ && param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc6_.§3!T§ = 0;
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1671:
                                                                                                                                                                                                                                    addr1652:
                                                                                                                                                                                                                                    loop62:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(b2Math.§+!1§(_loc6_.§%!V§,_loc6_.§%!V§));
                                                                                                                                                                                                                                       addr1580:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc19_ && this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop62;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1597);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop62;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop61;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop64;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop56;
                                                                                                                                                                                                                                                            addr1665:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop63;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop62;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1653:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1692:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1653);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 §§goto(addr1671);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1652);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1683:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1665);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1562:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1580);
                                                                                                                                                                              }
                                                                                                                                                                              addr1554:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1683);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop74;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop52;
                                                                                                                                                               }
                                                                                                                                                               addr1524:
                                                                                                                                                               addr1551:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1554);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1562);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         if(_loc18_ || param3)
                                                                                                                                                         {
                                                                                                                                                            break loop22;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1770);
                                                                                                                                                      }
                                                                                                                                                      addr1695:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr1503:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1524);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1503);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§]!p§);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(b2Body.§<!O§);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() & §§pop());
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         _loc6_.§3!T§ = 0;
                                                                                                                                                         if(_loc18_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1692);
                                                                                                                                                            §§push(0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1551);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1533);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1673);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1679);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1678);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1675);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1677);
                                                                                                                              }
                                                                                                                              §§goto(addr1675);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1712:
                                                                                                                     }
                                                                                                                     §§goto(addr1767);
                                                                                                                  }
                                                                                                                  addr1425:
                                                                                                               }
                                                                                                               §§goto(addr1770);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr1407);
                                                                                                            }
                                                                                                         }
                                                                                                         addr1414:
                                                                                                      }
                                                                                                      §§goto(addr1392);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1414);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1415);
                                                                                    }
                                                                                    §§goto(addr1414);
                                                                                 }
                                                                              }
                                                                              while(false)
                                                                              {
                                                                                 §§goto(addr1278);
                                                                              }
                                                                              §§goto(addr1695);
                                                                              addr1276:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push((_loc7_ = this.§-E§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc19_ && param3))
                                                                                 {
                                                                                    _loc14_ = §§pop();
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop41:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   loop42:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(!(_loc18_ || param1))
                                                                                                            {
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc18_ || param2)
                                                                                                            {
                                                                                                               addr1194:
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  continue loop41;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr1197:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc18_ || param2)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop42;
                                                                                                               }
                                                                                                               continue loop42;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1194);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr1211:
                                                                                             }
                                                                                             §§goto(addr1196);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1171);
                                                                                 }
                                                                                 §§goto(addr1197);
                                                                              }
                                                                              §§goto(addr1211);
                                                                           }
                                                                        }
                                                                        addr1225:
                                                                     }
                                                                     §§goto(addr1712);
                                                                  }
                                                                  break loop21;
                                                               }
                                                               addr1752:
                                                               §§goto(addr1766);
                                                            }
                                                            §§goto(addr1103);
                                                         }
                                                         §§goto(addr1412);
                                                      }
                                                      addr1098:
                                                   }
                                                   §§goto(addr1276);
                                                   §§goto(addr1374);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§2R§);
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§goto(addr1712);
                                                   }
                                                   §§goto(addr1769);
                                                }
                                                addr471:
                                             }
                                             §§goto(addr1225);
                                          }
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc19_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc19_)
                                             {
                                                §§push(this.§+i§);
                                                if(_loc18_ || this)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      (_loc7_ = this.§-E§[_loc4_]).§32§();
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         _loc4_++;
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc18_ || param2)
                                                   {
                                                      _loc8_.§32§();
                                                      if(!_loc19_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc19_ && this))
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc18_)
                                                            {
                                                               loop90:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(this.§2R§);
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§goto(addr1394);
                                                                                 }
                                                                                 §§goto(addr1412);
                                                                              }
                                                                              §§goto(addr1770);
                                                                           }
                                                                           §§goto(addr1408);
                                                                        }
                                                                        else if((_loc6_ = this.§[_§[_loc4_]).§'!_§() == b2Body.b2_staticBody)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              loop144:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr605:
                                                                                             if(false)
                                                                                             {
                                                                                                loop116:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_.§#3§();
                                                                                                   addr610:
                                                                                                   while(_loc18_ || param3)
                                                                                                   {
                                                                                                      continue loop144;
                                                                                                   }
                                                                                                   loop96:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop97:
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
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  addr795:
                                                                                                                  addr747:
                                                                                                                  loop104:
                                                                                                                  for(; _loc18_ || param3; if(_loc19_ && this)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },§§push(_loc6_.m_sweep),if(!(_loc19_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr652:
                                                                                                                           §§push(param1.§&!'§);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                           }
                                                                                                                           §§pop().a = §§pop() + §§pop();
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                        §§goto(addr796);
                                                                                                                     }
                                                                                                                     §§goto(addr652);
                                                                                                                  },§§goto(addr795))
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        continue loop98;
                                                                                                                     }
                                                                                                                     §§push(§§pop().c);
                                                                                                                     loop105:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        addr759:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           addr760:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr771:
                                                                                                                                 §§push(param1.§&!'§);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§%!V§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       addr770:
                                                                                                                                       addr705:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       §§push(_loc6_.§%!V§);
                                                                                                                                       if(!(_loc18_ || this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(!(_loc19_ && param3))
                                                                                                                                       {
                                                                                                                                          addr723:
                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             loop114:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr743:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop104;
                                                                                                                                                            }
                                                                                                                                                            continue loop105;
                                                                                                                                                         }
                                                                                                                                                         addr743:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         loop93:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            loop94:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr1026:
                                                                                                                                                                     loop140:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        if(_loc18_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                           loop134:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop135:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 loop138:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                       loop133:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.§%!V§);
                                                                                                                                                                                                addr1044:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().Normalize();
                                                                                                                                                                                                   break loop114;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1042:
                                                                                                                                                                                          }
                                                                                                                                                                                          loop130:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1.§&!'§);
                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop140;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc18_ || param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop138;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop134;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc11_ = §§pop();
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc18_ || param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop94;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr901:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_ && param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop135;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop97;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                       break loop130;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr901:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop130;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr890:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop130;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop94;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * param1.§-!i§);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                           continue loop96;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                              §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr940:
                                                                                                                                                                                                                                    §§push(§§pop() * param1.§-!i§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop97;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1042);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr944:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr940);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr991:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop130;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop133;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr901);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop130;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr851:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr901);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.§%!V§);
                                                                                                                                                                                                      addr1050:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         addr1051:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1060:
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                                                                                  continue loop93;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1060:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1060);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1048:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr890);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr912);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1041:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1060);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1041);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1025:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1051);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1061:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr773:
                                                                                                                                                while(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         continue loop105;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr909);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr920);
                                                                                                                                                }
                                                                                                                                                §§goto(addr944);
                                                                                                                                                addr653:
                                                                                                                                                §§goto(addr920);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop116;
                                                                                                                                                   }
                                                                                                                                                   continue loop114;
                                                                                                                                                }
                                                                                                                                                continue loop99;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.§%!V§);
                                                                                                                                                loop123:
                                                                                                                                                for(; _loc18_; while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.§%!V§);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      continue loop123;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc6_.§%!V§);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc18_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                         if(_loc18_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§-!i§);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr987:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr990:
                                                                                                                                                                     §§pop().y = §§pop() * §§pop();
                                                                                                                                                                     §§goto(addr991);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1009);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1011);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1012);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr987);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr990);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr999);
                                                                                                                                                   }
                                                                                                                                                })
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.§%!V§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc18_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr1009:
                                                                                                                                                         §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§-!i§);
                                                                                                                                                            addr1011:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr1012:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1009:
                                                                                                                                                      }
                                                                                                                                                      addr1013:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         continue loop123;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1044);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr772:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                             }
                                                                                                                                             addr772:
                                                                                                                                          }
                                                                                                                                          §§goto(addr773);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr770);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr771:
                                                                                                                              }
                                                                                                                              §§goto(addr772);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     addr796:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().a0 = §§pop();
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop90;
                                                                                          }
                                                                                          §§goto(addr1014);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr747);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr653);
                                                                                 }
                                                                                 §§goto(addr610);
                                                                              }
                                                                           }
                                                                           §§goto(addr743);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param1.§&!'§);
                                                                           if(!(_loc19_ && param3))
                                                                           {
                                                                              §§push(_loc6_.§%!V§);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc19_ && param3))
                                                                                       {
                                                                                          addr581:
                                                                                          _loc9_ = §§pop();
                                                                                          if(_loc18_ || param2)
                                                                                          {
                                                                                             §§goto(addr1048);
                                                                                             §§push(param1.§&!'§);
                                                                                          }
                                                                                          §§goto(addr1014);
                                                                                       }
                                                                                       §§goto(addr851);
                                                                                    }
                                                                                    §§goto(addr1026);
                                                                                 }
                                                                                 §§goto(addr1025);
                                                                              }
                                                                              §§goto(addr1050);
                                                                           }
                                                                           §§goto(addr581);
                                                                        }
                                                                     }
                                                                     §§goto(addr1225);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr1098);
                                                            }
                                                            §§goto(addr1408);
                                                         }
                                                         §§goto(addr1767);
                                                      }
                                                      §§goto(addr1374);
                                                   }
                                                   §§goto(addr1425);
                                                }
                                                §§goto(addr1225);
                                             }
                                             break loop21;
                                          }
                                       }
                                       §§goto(addr1135);
                                    }
                                    §§goto(addr1115);
                                 }
                                 §§goto(addr1767);
                              }
                              §§goto(addr400);
                           }
                           §§goto(addr471);
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(_loc18_)
                        {
                           if(!_loc19_)
                           {
                              break;
                           }
                           §§goto(addr1416);
                        }
                        §§goto(addr1752);
                     }
                     §§goto(addr1276);
                  }
                  §§goto(addr1098);
               }
               §§goto(addr405);
            }
            §§goto(addr1752);
         }
         §§goto(addr315);
      }
      
      public function §0!-§(param1:b2TimeStep) : void
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
         if(!(_loc14_ && _loc2_))
         {
            §§push(this.§@d§);
            if(_loc13_)
            {
               §§pop().§'K§(param1,this.§!!f§,this.§?o§,this.§7!a§);
               addr54:
               §§push(this.§@d§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!_loc14_)
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
                  §§push(this.§+i§);
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
                                    if(_loc13_)
                                    {
                                       if(_loc13_)
                                       {
                                          if(!_loc13_)
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc13_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(param1.§,!v§);
                                          if(_loc13_)
                                          {
                                             if(_loc13_ || this)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc13_ || _loc2_)
                                                   {
                                                      §§push(0);
                                                      if(_loc13_ || param1)
                                                      {
                                                         if(_loc13_ || this)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!(_loc14_ && this))
                                                            {
                                                               addr113:
                                                               if(!_loc14_)
                                                               {
                                                                  if(!(_loc13_ || this))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc13_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     addr740:
                                                                     §§push(_loc2_);
                                                                     break;
                                                                  }
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr128:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§+i§);
                                                                        addr130:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              this.§-E§[_loc3_].SolveVelocityConstraints(param1);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc3_++;
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr169:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                          }
                                                                                       }
                                                                                       addr176:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                              addr160:
                                                                           }
                                                                           if(_loc14_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(!(_loc13_ || _loc3_))
                                                                              {
                                                                                 _loc2_++;
                                                                                 continue loop0;
                                                                                 addr197:
                                                                              }
                                                                              _loc2_++;
                                                                              if(!_loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr744:
                                                                              §§push(0.75);
                                                                              if(!(_loc14_ && _loc2_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc5_:* = §§pop();
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr1008:
                                                                                 _loc2_ = 0;
                                                                                 addr1009:
                                                                                 §§push(_loc2_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(param1.§-!x§);
                                                                                    if(!(_loc14_ && _loc2_))
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   if(!(_loc14_ && this))
                                                                                                   {
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            addr986:
                                                                                                            if(_loc13_ || param1)
                                                                                                            {
                                                                                                               addr858:
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  addr864:
                                                                                                                  if(§§pop() >= this.§+i§)
                                                                                                                  {
                                                                                                                     addr865:
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc13_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr889:
                                                                                                                                       if(_loc13_ || this)
                                                                                                                                       {
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr906:
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr825:
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      if(_loc13_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr839:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr841:
                                                                                                                                                               if(_loc13_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc13_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     addr946:
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     if(!(_loc14_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr954:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(Boolean(§§pop()))
                                                                                                                                                                        {
                                                                                                                                                                           addr956:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr957:
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr926:
                                                                                                                                                                                 §§push(Boolean(Boolean(§§pop())));
                                                                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                                                                    addr936:
                                                                                                                                                                                    if(_loc13_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_++;
                                                                                                                                                                                       addr909:
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr858);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr957);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr936);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr996:
                                                                                                                                                                                    _loc11_ = true;
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                       §§goto(addr986);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1008);
                                                                                                                                                                                    addr1006:
                                                                                                                                                                                    addr997:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr956);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr946);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr954);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr926);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr996);
                                                                                                                                                                     addr980:
                                                                                                                                                                  }
                                                                                                                                                                  addr807:
                                                                                                                                                                  this.§,!A§(_loc4_.§#!8§);
                                                                                                                                                                  return;
                                                                                                                                                                  addr812:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr906);
                                                                                                                                                            }
                                                                                                                                                            _loc2_++;
                                                                                                                                                            §§goto(addr1008);
                                                                                                                                                         }
                                                                                                                                                         addr979:
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         §§goto(addr980);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr889);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr926);
                                                                                                                                                }
                                                                                                                                                §§goto(addr825);
                                                                                                                                             }
                                                                                                                                             addr1004:
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                          }
                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                          §§goto(addr1006);
                                                                                                                                       }
                                                                                                                                       §§goto(addr926);
                                                                                                                                    }
                                                                                                                                    §§goto(addr839);
                                                                                                                                 }
                                                                                                                                 §§goto(addr954);
                                                                                                                              }
                                                                                                                              §§goto(addr889);
                                                                                                                           }
                                                                                                                           §§goto(addr956);
                                                                                                                        }
                                                                                                                        §§goto(addr889);
                                                                                                                     }
                                                                                                                     §§goto(addr997);
                                                                                                                  }
                                                                                                                  §§goto(addr979);
                                                                                                                  §§push(Boolean(this.§-E§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                               }
                                                                                                               §§goto(addr996);
                                                                                                            }
                                                                                                            §§goto(addr1009);
                                                                                                         }
                                                                                                         §§goto(addr807);
                                                                                                      }
                                                                                                      §§goto(addr909);
                                                                                                   }
                                                                                                   §§goto(addr865);
                                                                                                }
                                                                                                §§goto(addr841);
                                                                                             }
                                                                                             §§goto(addr839);
                                                                                          }
                                                                                          §§goto(addr812);
                                                                                       }
                                                                                       §§goto(addr1004);
                                                                                       §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                    }
                                                                                    §§goto(addr864);
                                                                                 }
                                                                                 §§goto(addr858);
                                                                              }
                                                                              §§goto(addr996);
                                                                           }
                                                                           §§goto(addr150);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr160);
                                                            }
                                                            §§goto(addr744);
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr113);
                                                }
                                                else
                                                {
                                                   _loc4_.SolveVelocityConstraints();
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr130);
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             if((_loc6_ = this.§[_§[_loc2_]).§'!_§() == b2Body.b2_staticBody)
                                             {
                                                if(!_loc14_)
                                                {
                                                   addr264:
                                                   _loc2_++;
                                                   if(_loc13_)
                                                   {
                                                      if(false)
                                                      {
                                                         addr269:
                                                         _loc6_.§#3§();
                                                         if(!(_loc14_ && this))
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  §§goto(addr264);
                                                               }
                                                               addr423:
                                                               §§push(_loc6_.m_sweep);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     §§push(_loc6_.m_sweep);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc13_)
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(param1.§&!'§);
                                                                                 if(_loc13_ || this)
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(_loc6_.§%!V§);
                                                                                       if(_loc13_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             addr393:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                addr396:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   addr404:
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         if(_loc13_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                            if(_loc13_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop().a);
                                                                                                               if(!(_loc14_ && this))
                                                                                                               {
                                                                                                                  if(!(_loc14_ && this))
                                                                                                                  {
                                                                                                                     addr333:
                                                                                                                     §§push(param1.§&!'§);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                     }
                                                                                                                     §§pop().a = §§pop() + §§pop();
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           §§goto(addr269);
                                                                                                                        }
                                                                                                                        addr722:
                                                                                                                        _loc6_.§%!V§.Normalize();
                                                                                                                        addr723:
                                                                                                                        addr720:
                                                                                                                        §§push(_loc6_.§%!V§);
                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                        {
                                                                                                                           addr691:
                                                                                                                           §§pop().x = _loc6_.§%!V§.x * (b2Settings.b2_maxTranslation * param1.§-!i§);
                                                                                                                           addr692:
                                                                                                                           addr685:
                                                                                                                           addr687:
                                                                                                                           addr690:
                                                                                                                           addr689:
                                                                                                                           addr684:
                                                                                                                           §§push(_loc6_.§%!V§);
                                                                                                                           if(_loc13_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§%!V§);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§push(b2Settings.b2_maxTranslation);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§-!i§);
                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr656:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                {
                                                                                                                                                   addr666:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      addr669:
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         addr486:
                                                                                                                                                         §§push(param1.§&!'§);
                                                                                                                                                         if(!(_loc14_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              addr527:
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr551:
                                                                                                                                                                                       if(!(_loc14_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc14_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                if(_loc13_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr585:
                                                                                                                                                                                                         §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(_loc13_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                     §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * param1.§-!i§);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                     addr446:
                                                                                                                                                                                                                     _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                     addr451:
                                                                                                                                                                                                                     addr617:
                                                                                                                                                                                                                     if(_loc13_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr427:
                                                                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr432:
                                                                                                                                                                                                                                 §§pop().a0 = _loc6_.m_sweep.a;
                                                                                                                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr422:
                                                                                                                                                                                                                                       _loc6_.m_sweep.c.x += param1.§&!'§ * _loc6_.§%!V§.x;
                                                                                                                                                                                                                                       §§goto(addr423);
                                                                                                                                                                                                                                       addr442:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr585);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr451);
                                                                                                                                                                                                                                 addr431:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr446);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr723);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr617);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr443:
                                                                                                                                                                                                                     §§goto(addr443);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr739:
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr706:
                                                                                                                                                                                                                        addr705:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc13_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr716:
                                                                                                                                                                                                                           if(§§pop() + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr720);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr486);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                        addr737:
                                                                                                                                                                                                                        §§goto(addr739);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr736:
                                                                                                                                                                                                                     §§goto(addr737);
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr716);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr446);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * param1.§-!i§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                            §§goto(addr443);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr716);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr443);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr716);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr585);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr706);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr585);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr716);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr585);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr716);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr551);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr739);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr585);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr706);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr716);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr585);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr692);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr685);
                                                                                                                                                }
                                                                                                                                                §§goto(addr687);
                                                                                                                                             }
                                                                                                                                             §§goto(addr690);
                                                                                                                                          }
                                                                                                                                          §§goto(addr689);
                                                                                                                                       }
                                                                                                                                       §§goto(addr656);
                                                                                                                                    }
                                                                                                                                    §§goto(addr691);
                                                                                                                                 }
                                                                                                                                 §§goto(addr666);
                                                                                                                              }
                                                                                                                              §§goto(addr684);
                                                                                                                           }
                                                                                                                           §§goto(addr723);
                                                                                                                        }
                                                                                                                        §§goto(addr722);
                                                                                                                     }
                                                                                                                     §§goto(addr669);
                                                                                                                  }
                                                                                                                  §§goto(addr432);
                                                                                                               }
                                                                                                               §§goto(addr333);
                                                                                                            }
                                                                                                            §§goto(addr431);
                                                                                                         }
                                                                                                         §§goto(addr427);
                                                                                                      }
                                                                                                      §§goto(addr423);
                                                                                                   }
                                                                                                   §§goto(addr432);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           §§goto(addr396);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr422);
                                                            }
                                                            §§goto(addr404);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr740);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr691);
                                             }
                                             §§push(param1.§&!'§);
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                §§push(_loc6_.§%!V§);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_ || param1)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc13_ || _loc2_)
                                                            {
                                                               §§push(param1.§&!'§);
                                                               if(_loc13_ || param1)
                                                               {
                                                                  addr735:
                                                                  §§goto(addr736);
                                                                  §§push(_loc6_.§%!V§.y);
                                                               }
                                                               §§goto(addr706);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr706);
                                                      }
                                                      §§goto(addr585);
                                                   }
                                                   §§goto(addr705);
                                                }
                                                §§goto(addr735);
                                             }
                                             §§goto(addr527);
                                          }
                                          §§goto(addr744);
                                       }
                                       §§goto(addr169);
                                    }
                                    break;
                                 }
                                 §§goto(addr743);
                              }
                           }
                        }
                     }
                     else
                     {
                        this.§-E§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr197);
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §,!A§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_ || _loc2_)
         {
            if(this.§>e§ == null)
            {
               if(_loc7_)
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < this.§?o§)
            {
               _loc3_ = this.§!!f§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!_loc6_)
               {
                  §§push(0);
                  while(true)
                  {
                     _loc5_ = §§pop();
                  }
                  addr161:
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc6_)
                        {
                           if(§§pop() < _loc4_.§@!#§)
                           {
                              §§push(§]Q§);
                              break;
                           }
                           if(!(_loc6_ && param1))
                           {
                              if(!(_loc7_ || this))
                              {
                                 for(; _loc7_; break loop4)
                                 {
                                    §§push(§]Q§);
                                    if(_loc6_ && this)
                                    {
                                       continue;
                                    }
                                    §§pop().§'l§[_loc5_] = _loc4_.§7!4§[_loc5_].tangentImpulse;
                                 }
                                 continue loop2;
                                 addr157:
                              }
                              this.§>e§.PostSolve(_loc3_,§]Q§);
                              for(; _loc7_ || param1; _loc2_++,if(_loc7_ || param1)
                              {
                                 if(false)
                                 {
                                    continue loop4;
                                 }
                                 continue loop0;
                              })
                              {
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                              }
                              continue loop3;
                              addr104:
                              _loc5_++;
                              continue loop3;
                           }
                           §§goto(addr104);
                        }
                        else
                        {
                           §§goto(addr161);
                        }
                     }
                     while(true)
                     {
                        §§pop().§^-§[_loc5_] = _loc4_.§7!4§[_loc5_].normalImpulse;
                        §§goto(addr157);
                     }
                  }
               }
            }
            return;
         }
         addr38:
      }
      
      public function §@O§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc2_))
         {
            param1.§"R§ = this.§2R§;
         }
         var _loc2_:* = this.§2R§++;
         this.§[_§[_loc2_] = param1;
      }
      
      public function §6w§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§?o§++;
         this.§!!f§[_loc2_] = param1;
      }
      
      public function §5q§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§+i§++;
         this.§-E§[_loc2_] = param1;
      }
   }
}
