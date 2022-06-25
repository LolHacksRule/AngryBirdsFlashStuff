package §1%§
{
   import §5!_§.*;
   import §8!H§.*;
   import §>s§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §%!L§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2Island))
         {
            §%!L§ = new b2ContactImpulse();
         }
      }
      
      private var §5!X§;
      
      private var §9_§:b2ContactListener;
      
      private var §0W§:b2ContactSolver;
      
      b2internal var §6!#§:Vector.<b2Body>;
      
      b2internal var §+W§:Vector.<b2Contact>;
      
      b2internal var §4!I§:Vector.<b2Joint>;
      
      b2internal var §8y§:int;
      
      b2internal var §8%§:int;
      
      b2internal var §9!?§:int;
      
      private var §6-§:int;
      
      b2internal var §8p§:int;
      
      b2internal var §0H§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§6!#§ = new Vector.<b2Body>();
               while(true)
               {
                  this.§+W§ = new Vector.<b2Contact>();
                  loop2:
                  while(_loc1_ || this)
                  {
                     while(true)
                     {
                        this.§4!I§ = new Vector.<b2Joint>();
                        if(!(_loc2_ && this))
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §3!a§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_ || this)
         {
            this.§6-§ = param1;
            loop0:
            while(true)
            {
               this.§8p§ = param2;
               while(true)
               {
                  this.§0H§ = param3;
                  continue loop0;
                  loop5:
                  while(_loc8_)
                  {
                     this.§5!X§ = param4;
                     loop6:
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           if(_loc9_)
                           {
                              break;
                           }
                           this.§9_§ = param5;
                           loop7:
                           for(; !_loc9_; if(_loc8_ || param2)
                           {
                              continue loop6;
                           })
                           {
                              this.§0W§ = param6;
                              loop8:
                              while(_loc8_)
                              {
                                 while(true)
                                 {
                                    _loc7_ = int(this.§6!#§.length);
                                    if(!_loc9_)
                                    {
                                       continue loop7;
                                    }
                                    continue loop8;
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(!(_loc9_ && this))
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(param1);
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                this.§6!#§[_loc7_] = null;
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(int(this.§+W§.length));
                                                addr211:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   addr212:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr106:
                                                         addr217:
                                                         while(_loc8_ || param2)
                                                         {
                                                            §§push(param2);
                                                            continue loop11;
                                                         }
                                                         addr184:
                                                         _loc7_ = int(§§pop());
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr217);
                                       §§push(§§pop() + 1);
                                    }
                                    §§goto(addr211);
                                 }
                              }
                           }
                           continue loop5;
                        }
                        addr300:
                        while(true)
                        {
                           this.§9!?§ = 0;
                        }
                        while(true)
                        {
                           this.§8%§ = 0;
                           continue loop5;
                        }
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                        §§goto(addr250);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr257);
      }
      
      public function §^!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8y§ = 0;
         }
         do
         {
            this.§9!?§ = 0;
            do
            {
               this.§8%§ = 0;
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      public function § M§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(_loc19_)
         {
            §§push(0);
            if(!(_loc18_ && param3))
            {
               §§push(int(§§pop()));
            }
            _loc4_ = §§pop();
         }
         loop0:
         while(_loc4_ < this.§8y§)
         {
            _loc6_ = this.§6!#§[_loc4_];
            if(_loc19_ || param3)
            {
               if(_loc6_.§3r§() == b2Body.b2_dynamicBody)
               {
                  §§push(_loc6_.§69§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc6_.§69§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().x);
                        while(true)
                        {
                           §§push(param1.§?!>§);
                           if(!(_loc18_ && param3))
                           {
                              §§push(param2.x);
                              if(!_loc18_)
                              {
                                 §§push(_loc6_.§4s§);
                                 while(true)
                                 {
                                    §§push(_loc6_.§'<§);
                                    addr329:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr330:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr331:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                    }
                                    addr284:
                                    if(!(_loc19_ || this))
                                    {
                                       continue;
                                    }
                                    addr292:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc18_)
                                    {
                                       addr295:
                                       §§push(§§pop() + §§pop() * §§pop());
                                       loop13:
                                       while(true)
                                       {
                                          §§pop().y = §§pop();
                                          loop14:
                                          while(_loc19_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                §§push(_loc6_.m_angularVelocity);
                                                if(!_loc18_)
                                                {
                                                   §§push(param1.§?!>§);
                                                   if(_loc19_ || param1)
                                                   {
                                                      §§push(_loc6_.§[!F§);
                                                      if(!_loc18_)
                                                      {
                                                         addr216:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc19_)
                                                         {
                                                            addr214:
                                                            §§push(§§pop() * _loc6_.§46§);
                                                         }
                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_.§69§);
                                                            if(_loc19_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            addr333:
                                                            addr221:
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§69§);
                                                               if(!_loc19_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(§§pop().y);
                                                               if(_loc18_ && param2)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(param1.§?!>§);
                                                                  if(!(_loc18_ && param3))
                                                                  {
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        §§push(param2.y);
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(_loc6_.§4s§);
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              §§push(_loc6_.§'<§);
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr277:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_ || param1)
                                                                                    {
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       break loop12;
                                                                                    }
                                                                                    addr332:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 §§goto(addr331);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr329);
                                                                              }
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  break loop14;
                                                               }
                                                               continue loop20;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr334);
                                                            }
                                                         }
                                                         §§pop().§49§(§§pop());
                                                         loop18:
                                                         while(true)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               §§push(_loc6_.m_angularVelocity);
                                                               if(!(_loc18_ && this))
                                                               {
                                                                  §§push(b2Math);
                                                                  §§push(1);
                                                                  §§push(param1.§?!>§);
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     §§push(§§pop() * _loc6_.§3]§);
                                                                  }
                                                                  §§push(§§pop() * §§pop().§"J§(§§pop() - §§pop(),0,1));
                                                               }
                                                               §§pop().m_angularVelocity = §§pop();
                                                               addr137:
                                                               while(true)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr217);
                                                               }
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(_loc18_ && param2)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     addr96:
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     addr306:
                                                                     while(true)
                                                                     {
                                                                        continue loop16;
                                                                        §§goto(addr96);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr137);
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         addr217:
                                                      }
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr216);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr221);
                                          }
                                       }
                                    }
                                    §§goto(addr332);
                                 }
                              }
                              §§goto(addr277);
                           }
                           §§goto(addr333);
                        }
                     }
                  }
               }
               §§goto(addr306);
            }
            §§goto(addr299);
         }
         if(!(_loc18_ && param3))
         {
            §§push(this.§0W§);
            if(!(_loc18_ && param3))
            {
               §§pop().§3!a§(param1,this.§+W§,this.§9!?§,this.§5!X§);
               addr365:
               §§push(this.§0W§);
            }
            var _loc8_:b2ContactSolver = §§pop();
            if(_loc19_)
            {
               _loc8_.InitVelocityConstraints(param1);
               if(_loc19_)
               {
                  §§push(0);
                  if(_loc19_ || param2)
                  {
                     §§push(int(§§pop()));
                     if(_loc19_ || param3)
                     {
                        _loc4_ = §§pop();
                        if(_loc19_)
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc19_)
                              {
                                 §§push(this.§8%§);
                                 if(_loc19_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc7_ = this.§4!I§[_loc4_];
                                       if(!_loc18_)
                                       {
                                          _loc7_.InitVelocityConstraints(param1);
                                          if(!_loc18_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc19_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc18_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             _loc4_ = §§pop();
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc19_)
                                    {
                                       §§push(0);
                                       if(_loc19_)
                                       {
                                          break;
                                       }
                                       loop161:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc19_ || this)
                                          {
                                             addr1504:
                                             while(true)
                                             {
                                                if(false)
                                                {
                                                   loop119:
                                                   while(true)
                                                   {
                                                      §§push(b2Settings.b2_angularSleepTolerance);
                                                      if(_loc19_)
                                                      {
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            §§push(b2Settings.b2_angularSleepTolerance);
                                                            if(_loc19_ || this)
                                                            {
                                                               if(_loc19_ || param2)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc19_)
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc19_ || param3)
                                                                        {
                                                                           addr1549:
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              _loc17_ = §§pop();
                                                                              if(!_loc18_)
                                                                              {
                                                                                 if(_loc19_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr1488:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                continue loop161;
                                                                                             }
                                                                                             addr2089:
                                                                                             addr2089:
                                                                                             addr2089:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§8y§);
                                                                                             }
                                                                                          }
                                                                                          addr1488:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr2006:
                                                                                          §§push(this.§8y§);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             loop85:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(_loc19_ || param3)
                                                                                                   {
                                                                                                      addr2018:
                                                                                                      if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                                      {
                                                                                                         if(_loc18_ && param3)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr2092);
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr2033:
                                                                                                      §§push(int(§§pop()));
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr2089);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc6_ = this.§6!#§[_loc4_];
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      §§push(_loc6_.§3r§());
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(b2Body.b2_staticBody);
                                                                                                         if(!(_loc18_ && param3))
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               §§push(_loc6_.§8A§);
                                                                                                               loop115:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(b2Body.§3!+§);
                                                                                                                  addr1991:
                                                                                                                  loop114:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() & §§pop());
                                                                                                                     loop113:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        loop112:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              addr1994:
                                                                                                                              _loc6_.§6"§ = 0;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 addr1967:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr1968:
                                                                                                                                    loop103:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       addr1969:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop103;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1997:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§8A§);
                                                                                                                              if(!(_loc19_ || param2))
                                                                                                                              {
                                                                                                                                 continue loop115;
                                                                                                                              }
                                                                                                                              §§push(b2Body.§3!+§);
                                                                                                                              if(_loc18_ && param3)
                                                                                                                              {
                                                                                                                                 continue loop114;
                                                                                                                              }
                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                              loop111:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!(_loc19_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop112;
                                                                                                                                 }
                                                                                                                                 addr1954:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 loop90:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    loop91:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop92:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop93:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                loop99:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   loop94:
                                                                                                                                                   for(; !_loc18_; if(!(_loc19_ || param3))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   },if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1865);
                                                                                                                                                   },§§goto(addr1969))
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_angularVelocity);
                                                                                                                                                         loop104:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_angularVelocity);
                                                                                                                                                               if(_loc19_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                  }
                                                                                                                                                                  addr1886:
                                                                                                                                                               }
                                                                                                                                                               loop101:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     loop100:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc19_ || param3))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop91;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc18_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc18_ && param3)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop93;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop92;
                                                                                                                                                                           }
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr1923:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              loop108:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(b2Math.§6!F§(_loc6_.§69§,_loc6_.§69§));
                                                                                                                                                                                 loop89:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop104;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc18_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(_loc18_ && param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop101;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop90;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1923);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop100;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc19_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop99;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                §§push(_loc6_.§6"§);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + param1.§?!>§);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§6"§ = §§pop();
                                                                                                                                                                                                loop106:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc18_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1789:
                                                                                                                                                                                                      loop88:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(b2Math.§3G§(_loc15_,_loc6_.§6"§));
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1792:
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc19_ || param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc18_ && param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop89;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                                                                         loop109:
                                                                                                                                                                                                         while(_loc19_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc19_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1692:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop113;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + 1);
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1706:
                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop111;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop109;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc19_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop106;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop88;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1997);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1706);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(_loc18_ && this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop85;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2006);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1692:
                                                                                                                                                                                                               addr1998:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc6_.§6"§ = 0;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1846:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1692);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                      §§goto(addr1794);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop94;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop108;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1846);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1792);
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1967);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1886);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1844);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1968);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1923);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1968);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr1985:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1692);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1994);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1903);
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
                                                                                                               addr1988:
                                                                                                            }
                                                                                                            §§goto(addr1985);
                                                                                                         }
                                                                                                         §§goto(addr1991);
                                                                                                      }
                                                                                                      §§goto(addr1988);
                                                                                                   }
                                                                                                   §§goto(addr1994);
                                                                                                }
                                                                                             }
                                                                                             addr2036:
                                                                                             _loc4_ = §§pop();
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr2088:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr2089);
                                                                                                }
                                                                                                addr2088:
                                                                                             }
                                                                                             addr2092:
                                                                                             return;
                                                                                             addr2010:
                                                                                          }
                                                                                       }
                                                                                       addr2091:
                                                                                       while(§§pop() < §§pop())
                                                                                       {
                                                                                          _loc6_ = this.§6!#§[_loc4_];
                                                                                          if(!(_loc18_ && param2))
                                                                                          {
                                                                                             _loc6_.SetAwake(false);
                                                                                             if(_loc19_ || param2)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(_loc19_ || param3)
                                                                                                   {
                                                                                                      addr2086:
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   _loc4_ = §§pop();
                                                                                                   §§goto(addr2088);
                                                                                                }
                                                                                                §§goto(addr2086);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr2088);
                                                                                          §§goto(addr2089);
                                                                                       }
                                                                                       §§goto(addr2092);
                                                                                    }
                                                                                    addr1566:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop127:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(Number.MAX_VALUE));
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          loop128:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(b2Settings.b2_linearSleepTolerance);
                                                                                             addr1571:
                                                                                             loop120:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                addr1574:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr1575:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr1576:
                                                                                                      loop122:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc16_ = §§pop();
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            if(!(_loc19_ || param3))
                                                                                                            {
                                                                                                               continue loop128;
                                                                                                            }
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               addr1588:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop119;
                                                                                                               }
                                                                                                               addr1588:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop123:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param3);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop127;
                                                                                                                     }
                                                                                                                     §§goto(addr2092);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop124:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr1663:
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(_loc19_ || param1)
                                                                                                                              {
                                                                                                                                 loop125:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                          addr1675:
                                                                                                                                          loop126:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr1603:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(!(_loc18_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr1611:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§]Y§);
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         loop157:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc18_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  continue loop126;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2018);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                               if(_loc19_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  loop158:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     if(_loc19_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        loop159:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(true);
                                                                                                                                                                           if(!(_loc18_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(_loc19_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1300:
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop125;
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1444:
                                                                                                                                                                                             addr1335:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1435:
                                                                                                                                                                                                   §§push(this.§8%§);
                                                                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop157;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop125;
                                                                                                                                                                                                §§goto(addr1335);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ || param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop127;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                   if(!(_loc18_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop159;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc19_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop159;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1650:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop159;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1460:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(_loc18_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop159;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1650);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc7_ = this.§4!I§[_loc5_];
                                                                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               loop145:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop147:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr1423:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1376:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop147;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop145;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        continue loop145;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1423);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1435);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1432:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1659);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1488);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop122;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop158;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1460);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1300);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop124;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2092);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1650);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1620:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2010);
                                                                                                                                                   addr1611:
                                                                                                                                                }
                                                                                                                                                break loop126;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr2033);
                                                                                                                                       }
                                                                                                                                       addr1674:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr2006);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           addr1659:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr1635:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop123;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1659:
                                                                                                                        }
                                                                                                                        §§goto(addr2092);
                                                                                                                     }
                                                                                                                     §§goto(addr2089);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr2088);
                                                                                                   }
                                                                                                   continue loop120;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr2018);
                                                                                    }
                                                                                    addr1594:
                                                                                 }
                                                                              }
                                                                              §§goto(addr2018);
                                                                           }
                                                                           §§goto(addr1575);
                                                                        }
                                                                        §§goto(addr2018);
                                                                     }
                                                                     §§goto(addr1571);
                                                                  }
                                                                  §§goto(addr2018);
                                                               }
                                                               §§goto(addr1574);
                                                            }
                                                            §§goto(addr2018);
                                                         }
                                                         §§goto(addr1576);
                                                      }
                                                      §§goto(addr1549);
                                                   }
                                                }
                                                §§goto(addr1998);
                                             }
                                             addr1504:
                                          }
                                          §§goto(addr2088);
                                       }
                                       addr1496:
                                    }
                                    §§goto(addr2092);
                                 }
                                 loop162:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc19_ || param1)
                                       {
                                          loop163:
                                          while(true)
                                          {
                                             _loc8_.SolveVelocityConstraints();
                                             if(!_loc18_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc19_ || param2)
                                                {
                                                   loop164:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc19_ || this)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!_loc18_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(param1.§`!_§);
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr561:
                                                                              §§push(0);
                                                                              if(!(_loc18_ && param2))
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!(_loc18_ && param3))
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§push(this.§8%§);
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(_loc19_ || param2)
                                                                                                   {
                                                                                                      _loc8_.§#!0§();
                                                                                                      if(!(_loc18_ && param3))
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               if(!(_loc18_ && this))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc19_ || param1)
                                                                                                                     {
                                                                                                                        addr1239:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§8y§);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc19_ || this)
                                                                                                                                    {
                                                                                                                                       addr1259:
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(_loc19_ || this)
                                                                                                                                       {
                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1603);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1659);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2089);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1488);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1504);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 _loc6_ = this.§6!#§[_loc4_];
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_.§3r§() != b2Body.b2_staticBody)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§?!>§);
                                                                                                                                       loop25:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§69§);
                                                                                                                                          loop26:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop28:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc9_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§?!>§);
                                                                                                                                                         loop31:
                                                                                                                                                         for(; _loc19_ || param2; if(_loc18_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },§§goto(addr975),§§push(0))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.§69§);
                                                                                                                                                            if(_loc18_ && param1)
                                                                                                                                                            {
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            loop32:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop33:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop34:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc10_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        loop36:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           loop37:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(!(_loc18_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 loop39:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc10_);
                                                                                                                                                                                    loop40:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       loop41:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                          loop42:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop82:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.§69§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().Normalize());
                                                                                                                                                                                                      loop73:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr1190:
                                                                                                                                                                                                         §§push(_loc6_.§69§);
                                                                                                                                                                                                         loop74:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.§69§);
                                                                                                                                                                                                            addr1155:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               addr1156:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§finally§);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr1126:
                                                                                                                                                                                                                        §§push(param1.§finally§);
                                                                                                                                                                                                                        if(_loc18_ && param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!(_loc18_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1144:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              addr1147:
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop74;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(param1.§?!>§);
                                                                                                                                                                                                                                 if(!(_loc19_ || param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop46:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop46;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr965:
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1070:
                                                                                                                                                                                                                                                               while(!_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop33;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop41;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop36;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop46;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1190);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1147);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop82;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop73;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop73;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                 while(!(_loc18_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop42;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1164:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1164:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           continue loop74;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1163:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1164);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1186:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1039);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop28;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1221);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1186);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr2091);
                                                                                                                        addr1239:
                                                                                                                     }
                                                                                                                     §§goto(addr1259);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1566);
                                                                                                            }
                                                                                                            §§goto(addr1674);
                                                                                                         }
                                                                                                         §§goto(addr1611);
                                                                                                      }
                                                                                                      §§goto(addr1636);
                                                                                                   }
                                                                                                   §§goto(addr1594);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc7_ = this.§4!I§[_loc4_];
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   _loc7_.§#!0§();
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc4_);
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(_loc19_ || param3)
                                                                                                      {
                                                                                                         addr611:
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      _loc4_ = §§pop();
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1444);
                                                                                          }
                                                                                          §§goto(addr2036);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1588);
                                                                                 }
                                                                                 §§goto(addr2089);
                                                                              }
                                                                              §§goto(addr2033);
                                                                           }
                                                                           §§goto(addr1588);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc19_ || param2))
                                                                           {
                                                                              continue loop164;
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc18_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc18_ && param1)
                                                                                 {
                                                                                    continue loop163;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr499:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          continue loop162;
                                                                                       }
                                                                                       §§goto(addr2036);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr452:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1239);
                                                                           }
                                                                           §§goto(addr2089);
                                                                        }
                                                                     }
                                                                     §§goto(addr2036);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr1496);
                                                               addr546:
                                                            }
                                                            §§goto(addr1504);
                                                         }
                                                         §§goto(addr2033);
                                                      }
                                                      §§goto(addr2036);
                                                   }
                                                }
                                                §§goto(addr1663);
                                             }
                                             break;
                                          }
                                          §§goto(addr1675);
                                       }
                                       §§goto(addr1659);
                                    }
                                    else
                                    {
                                       _loc7_ = this.§4!I§[_loc5_];
                                       if(!(_loc18_ && param1))
                                       {
                                          _loc7_.SolveVelocityConstraints(param1);
                                          if(_loc19_ || this)
                                          {
                                          }
                                          §§goto(addr499);
                                       }
                                       §§push(_loc5_);
                                       if(_loc19_ || param2)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc19_)
                                          {
                                             addr497:
                                             §§push(int(§§pop()));
                                          }
                                          _loc5_ = §§pop();
                                          §§goto(addr499);
                                       }
                                       §§goto(addr497);
                                    }
                                 }
                              }
                              break;
                           }
                           §§push(int(§§pop()));
                           if(!_loc18_)
                           {
                              _loc4_ = §§pop();
                              if(!_loc18_)
                              {
                                 §§goto(addr546);
                              }
                              §§goto(addr561);
                           }
                           §§goto(addr1611);
                        }
                        §§goto(addr1636);
                     }
                     §§goto(addr502);
                  }
                  §§goto(addr452);
               }
               §§goto(addr460);
            }
            §§goto(addr2092);
         }
         §§goto(addr365);
      }
      
      public function §4!6§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:* = false;
         if(_loc14_ || _loc3_)
         {
            §§push(this.§0W§);
            if(!_loc13_)
            {
               §§pop().§3!a§(param1,this.§+W§,this.§9!?§,this.§5!X§);
               addr56:
               §§push(this.§0W§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!(_loc13_ && _loc2_))
            {
               §§push(0);
               if(_loc14_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§8%§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc14_)
                        {
                           §§push(0);
                           loop3:
                           while(true)
                           {
                              §§push(int(§§pop()));
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
                                       if(!_loc13_)
                                       {
                                          §§push(param1.§`!_§);
                                          if(!_loc13_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc14_ || _loc2_)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(0);
                                                         if(_loc14_)
                                                         {
                                                            addr96:
                                                            if(!(_loc13_ && this))
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  if(!(_loc13_ && param1))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr115:
                                                                        if(_loc13_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           addr125:
                                                                           if(_loc13_ && _loc2_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc14_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§8%§);
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc13_ && _loc2_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc14_ || this)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§push(§§pop() + 1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               addr178:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     addr883:
                                                                                                                     addr883:
                                                                                                                     §§push(0.75);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc5_:* = §§pop();
                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr1202:
                                                                                                                        _loc2_ = int(0);
                                                                                                                        addr900:
                                                                                                                        addr1203:
                                                                                                                        addr1201:
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc14_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              §§push(param1.§]Y§);
                                                                                                                              if(!(_loc13_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc14_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr944);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1176);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1126);
                                                                                                                                       }
                                                                                                                                       §§goto(addr992);
                                                                                                                                    }
                                                                                                                                    addr944:
                                                                                                                                    this.§8C§(_loc4_.§^!Y§);
                                                                                                                                    if(_loc13_ && this)
                                                                                                                                    {
                                                                                                                                       addr1014:
                                                                                                                                       if(_loc14_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr900);
                                                                                                                                             }
                                                                                                                                             addr1110:
                                                                                                                                             if(!(_loc13_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr1031:
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr1044:
                                                                                                                                                      if(§§pop() >= this.§8%§)
                                                                                                                                                      {
                                                                                                                                                         addr1046:
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         if(_loc14_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(!(_loc13_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc14_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc14_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr1086:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr1087:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              if(!(_loc13_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc14_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr977:
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1175:
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr990:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr992:
                                                                                                                                                                                                            §§goto(addr944);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr997:
                                                                                                                                                                                                            §§push(§§pop() + 1);
                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc14_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1011:
                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc2_ = §§pop();
                                                                                                                                                                                                                           §§goto(addr1014);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1180:
                                                                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1031);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1203);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1201);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1202);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1109:
                                                                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                                                                               §§goto(addr1110);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1031);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr997);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1186:
                                                                                                                                                                                                      addr1198:
                                                                                                                                                                                                      addr1197:
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1189:
                                                                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                                                                         §§goto(addr1180);
                                                                                                                                                                                                         §§push(int(0));
                                                                                                                                                                                                         addr1190:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                                                                      §§goto(addr1186);
                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                      addr1199:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      if(_loc14_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1147:
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr1150:
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1125:
                                                                                                                                                                                                               _loc11_ = Boolean(§§pop());
                                                                                                                                                                                                               §§push(_loc3_ + 1);
                                                                                                                                                                                                               if(_loc14_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1109);
                                                                                                                                                                                                               addr1124:
                                                                                                                                                                                                               addr1123:
                                                                                                                                                                                                               addr1126:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1124);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1190);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1189);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1145:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1147);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1123);
                                                                                                                                                                                                   addr1176:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1125);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1046);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1198);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1087);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr977);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1199);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1150);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr990);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1145);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1086);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1125);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1087);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1147);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1175);
                                                                                                                                                      §§push(Boolean(this.§4!I§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1189);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1125);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1180);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1046);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1087);
                                                                                                                                    }
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1197);
                                                                                                                                 §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                                                              }
                                                                                                                              §§goto(addr1044);
                                                                                                                           }
                                                                                                                           §§goto(addr997);
                                                                                                                        }
                                                                                                                        §§goto(addr1011);
                                                                                                                     }
                                                                                                                     §§goto(addr1046);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(_loc13_ && this)
                                                                                                               {
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               addr199:
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           if(_loc13_ && param1)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(int(§§pop()));
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr273:
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                     §§goto(addr199);
                                                                                                                  }
                                                                                                                  addr202:
                                                                                                               }
                                                                                                               _loc2_ = §§pop();
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            addr191:
                                                                                                         }
                                                                                                      }
                                                                                                      addr167:
                                                                                                   }
                                                                                                   break loop8;
                                                                                                }
                                                                                                addr236:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      break loop8;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   addr190:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr215:
                                                                                             }
                                                                                             §§goto(addr191);
                                                                                          }
                                                                                          addr155:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§4!I§[_loc3_].SolveVelocityConstraints(param1);
                                                                                       }
                                                                                       §§goto(addr215);
                                                                                    }
                                                                                    break loop6;
                                                                                 }
                                                                                 §§goto(addr167);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr879:
                                                                              §§push(_loc2_);
                                                                           }
                                                                        }
                                                                        §§goto(addr883);
                                                                     }
                                                                     §§push(this.§8y§);
                                                                     break;
                                                                  }
                                                                  §§goto(addr190);
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr115);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr125);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr236);
                                          }
                                          break;
                                       }
                                       §§goto(addr96);
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       _loc6_ = this.§6!#§[_loc2_];
                                       if(!_loc13_)
                                       {
                                          if(_loc6_.§3r§() == b2Body.b2_staticBody)
                                          {
                                             addr296:
                                             §§push(_loc2_);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc13_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             _loc2_ = §§pop();
                                             addr869:
                                             if(_loc14_)
                                             {
                                                if(!_loc13_)
                                                {
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      if(!(_loc13_ && _loc2_))
                                                      {
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            if(false)
                                                            {
                                                               addr332:
                                                               _loc6_.§`! §();
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr879);
                                                         }
                                                         addr878:
                                                         §§push(param1.§?!>§);
                                                         §§push(_loc6_.§69§);
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            addr859:
                                                            §§push(Number(§§pop() * §§pop().y));
                                                            if(_loc14_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr862:
                                                               §§push(_loc7_);
                                                               if(_loc14_ || param1)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     addr820:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(_loc8_);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop() * _loc8_);
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           addr833:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc14_)
                                                                           {
                                                                              addr838:
                                                                              if(§§pop() > b2Settings.b2_maxTranslationSquared)
                                                                              {
                                                                                 addr842:
                                                                                 _loc6_.§69§.Normalize();
                                                                                 addr843:
                                                                                 addr839:
                                                                                 §§push(_loc6_.§69§);
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    addr799:
                                                                                    addr791:
                                                                                    addr800:
                                                                                    addr790:
                                                                                    §§push(_loc6_.§69§.x);
                                                                                    §§push(b2Settings.b2_maxTranslation);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       addr798:
                                                                                       §§push(§§pop() * param1.§finally§);
                                                                                    }
                                                                                    §§pop().x = §§pop() * §§pop();
                                                                                    addr801:
                                                                                    §§push(_loc6_.§69§);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(_loc6_.§69§);
                                                                                       if(!(_loc13_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(!(_loc13_ && param1))
                                                                                                {
                                                                                                   §§push(b2Settings.b2_maxTranslation);
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§push(param1.§finally§);
                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                      {
                                                                                                         addr759:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc13_ && param1))
                                                                                                         {
                                                                                                            addr767:
                                                                                                            §§pop().y = §§pop() * §§pop();
                                                                                                            addr768:
                                                                                                            if(_loc14_ || this)
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  addr691:
                                                                                                                  §§push(param1.§?!>§);
                                                                                                                  if(_loc14_ || param1)
                                                                                                                  {
                                                                                                                     addr700:
                                                                                                                     §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                     if(!(_loc13_ && this))
                                                                                                                     {
                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr716:
                                                                                                                           _loc9_ = §§pop();
                                                                                                                           addr717:
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!(_loc13_ && this))
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(_loc14_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!(_loc13_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc13_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  addr632:
                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr640:
                                                                                                                                                                        §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           addr645:
                                                                                                                                                                           if(§§pop() < 0)
                                                                                                                                                                           {
                                                                                                                                                                              addr646:
                                                                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * param1.§finally§);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                 addr666:
                                                                                                                                                                                 if(_loc14_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr519:
                                                                                                                                                                                          _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                          addr525:
                                                                                                                                                                                          addr516:
                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr507:
                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr512:
                                                                                                                                                                                                §§pop().a0 = _loc6_.m_sweep.a;
                                                                                                                                                                                                addr511:
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr488:
                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr502:
                                                                                                                                                                                                      §§pop().c.x = _loc6_.m_sweep.c.x + param1.§?!>§ * _loc6_.§69§.x;
                                                                                                                                                                                                      addr391:
                                                                                                                                                                                                      addr503:
                                                                                                                                                                                                      addr495:
                                                                                                                                                                                                      addr497:
                                                                                                                                                                                                      addr501:
                                                                                                                                                                                                      addr500:
                                                                                                                                                                                                      addr499:
                                                                                                                                                                                                      addr494:
                                                                                                                                                                                                      addr493:
                                                                                                                                                                                                      addr491:
                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                      if(!(_loc13_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                                                                         if(_loc14_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param1.§?!>§);
                                                                                                                                                                                                                        if(_loc14_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.§69§);
                                                                                                                                                                                                                           if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                              if(_loc14_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr450:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc14_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc14_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr465:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          addr473:
                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                   if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                      if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param1.§?!>§);
                                                                                                                                                                                                                                                            if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc14_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                                                                                                                            addr380:
                                                                                                                                                                                                                                                            if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr332);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr525);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr512);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr511);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr391);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr646);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr546:
                                                                                                                                                                                                                                             if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr516);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr666);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr503);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr495);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr497);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr501);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr500);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr499);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr450);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr502);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr465);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr494);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr493);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr491);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr488);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr507);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr717);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr519);
                                                                                                                                                                                             addr527:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr640);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr869);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr801);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr768);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr843);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                           if(_loc14_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * param1.§finally§);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                           §§goto(addr546);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr859);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr519);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr700);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr645);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr820);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr833);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr691);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr700);
                                                                                                                                                }
                                                                                                                                                §§goto(addr640);
                                                                                                                                             }
                                                                                                                                             addr877:
                                                                                                                                             _loc7_ = §§pop() * §§pop();
                                                                                                                                             §§goto(addr878);
                                                                                                                                          }
                                                                                                                                          §§goto(addr859);
                                                                                                                                       }
                                                                                                                                       §§goto(addr838);
                                                                                                                                    }
                                                                                                                                    §§goto(addr632);
                                                                                                                                 }
                                                                                                                                 §§goto(addr842);
                                                                                                                              }
                                                                                                                              §§goto(addr716);
                                                                                                                           }
                                                                                                                           §§goto(addr640);
                                                                                                                        }
                                                                                                                        §§goto(addr878);
                                                                                                                     }
                                                                                                                     §§goto(addr859);
                                                                                                                  }
                                                                                                                  §§goto(addr877);
                                                                                                               }
                                                                                                               §§goto(addr862);
                                                                                                            }
                                                                                                            §§goto(addr839);
                                                                                                         }
                                                                                                         §§goto(addr799);
                                                                                                      }
                                                                                                      §§goto(addr798);
                                                                                                   }
                                                                                                   §§goto(addr759);
                                                                                                }
                                                                                                §§goto(addr791);
                                                                                             }
                                                                                             §§goto(addr800);
                                                                                          }
                                                                                          §§goto(addr767);
                                                                                       }
                                                                                       §§goto(addr790);
                                                                                    }
                                                                                    §§goto(addr842);
                                                                                 }
                                                                                 addr841:
                                                                                 §§goto(addr841);
                                                                              }
                                                                              §§goto(addr691);
                                                                           }
                                                                           §§goto(addr877);
                                                                        }
                                                                     }
                                                                     §§goto(addr838);
                                                                  }
                                                                  §§goto(addr833);
                                                               }
                                                               §§goto(addr820);
                                                            }
                                                            addr872:
                                                            §§push(_loc6_.§69§);
                                                         }
                                                         §§goto(addr877);
                                                         §§push(§§pop().x);
                                                      }
                                                      §§goto(addr512);
                                                   }
                                                   §§goto(addr473);
                                                }
                                                §§goto(addr380);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr872);
                                          §§push(param1.§?!>§);
                                       }
                                       §§goto(addr527);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr883);
                     }
                     else
                     {
                        this.§4!I§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr273);
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §8C§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc6_)
         {
            if(this.§9_§ == null)
            {
               if(_loc6_ || param1)
               {
                  return;
               }
            }
         }
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         for(; _loc2_ < this.§9!?§; if(true)
         {
            continue;
         },§§goto(addr101))
         {
            _loc3_ = this.§+W§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(_loc6_ || this)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        addr101:
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop5:
                           while(true)
                           {
                              if(§§pop() < _loc4_.§[![§)
                              {
                                 §§push(§%!L§);
                                 break;
                              }
                              if(_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    this.§9_§.PostSolve(_loc3_,§%!L§);
                                    loop6:
                                    for(; !(_loc7_ && param1); _loc2_ = §§pop(),if(_loc6_ || _loc3_)
                                    {
                                       continue loop0;
                                    })
                                    {
                                       §§push(_loc2_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc7_ && param1)
                                          {
                                             continue;
                                          }
                                       }
                                       if(_loc6_)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(int(§§pop()));
                                             continue;
                                          }
                                          addr152:
                                          addr152:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             break loop6;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    addr117:
                                 }
                                 else
                                 {
                                    addr200:
                                    while(true)
                                    {
                                       §§push(§%!L§);
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       §§pop().§+&§[_loc5_] = _loc4_.§&!3§[_loc5_].tangentImpulse;
                                    }
                                    addr200:
                                 }
                                 while(true)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop3;
                                    }
                                    §§push(_loc5_);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       if(_loc7_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§§pop() + 1);
                                       if(!_loc7_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                              }
                              §§goto(addr117);
                           }
                           while(true)
                           {
                              §§pop().§`!c§[_loc5_] = _loc4_.§&!3§[_loc5_].normalImpulse;
                              §§goto(addr200);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr200);
         }
      }
      
      public function §@4§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            param1.§>!B§ = this.§8y§;
         }
         var _loc2_:* = this.§8y§++;
         this.§6!#§[_loc2_] = param1;
      }
      
      public function §>!=§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§9!?§++;
         this.§+W§[_loc2_] = param1;
      }
      
      public function get(param1:b2Joint) : void
      {
         var _loc2_:* = this.§8%§++;
         this.§4!I§[_loc2_] = param1;
      }
   }
}
