package §&!"§
{
   import § G§.*;
   import §3g§.*;
   import §69§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §7?§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §7?§ = new b2ContactImpulse();
         }
      }
      
      private var §@!=§;
      
      private var §+4§:b2ContactListener;
      
      private var § !%§:b2ContactSolver;
      
      b2internal var §!D§:Vector.<b2Body>;
      
      b2internal var §"V§:Vector.<b2Contact>;
      
      b2internal var §,D§:Vector.<b2Joint>;
      
      b2internal var §-!N§:int;
      
      b2internal var §>k§:int;
      
      b2internal var §4!D§:int;
      
      private var §`n§:int;
      
      b2internal var §%!P§:int;
      
      b2internal var §#$§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§!D§ = new Vector.<b2Body>();
               loop1:
               while(_loc1_ || this)
               {
                  this.§"V§ = new Vector.<b2Contact>();
                  while(true)
                  {
                     this.§,D§ = new Vector.<b2Joint>();
                     if(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §1D§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_)
         {
            this.§`n§ = param1;
            loop0:
            while(true)
            {
               this.§%!P§ = param2;
               loop1:
               while(true)
               {
                  this.§#$§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§-!N§ = 0;
                     while(true)
                     {
                        this.§4!D§ = 0;
                        addr224:
                        while(_loc8_ || this)
                        {
                           this.§+4§ = param5;
                           while(true)
                           {
                              if(_loc8_ || param3)
                              {
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              loop5:
                              while(true)
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    continue loop1;
                                 }
                                 addr255:
                                 while(true)
                                 {
                                    this.§>k§ = 0;
                                    continue loop5;
                                 }
                              }
                              continue loop1;
                              addr179:
                              if(!(_loc8_ || this))
                              {
                                 continue;
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          this.§!D§[_loc7_] = null;
                                          break;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§push(int(this.§"V§.length));
                                          loop13:
                                          while(true)
                                          {
                                             _loc7_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                do
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         §§push(param2);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               this.§"V§[_loc7_] = null;
                                                               addr108:
                                                            }
                                                            if(_loc9_ && this)
                                                            {
                                                               while(_loc8_ || param2)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!(_loc8_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop16;
                                                                     addr57:
                                                                  }
                                                               }
                                                               continue loop14;
                                                               addr100:
                                                            }
                                                            §§push(int(this.§,D§.length));
                                                            while(_loc8_ || param3)
                                                            {
                                                               _loc7_ = §§pop();
                                                            }
                                                            continue loop10;
                                                         }
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            _loc7_++;
                                                            continue;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop13;
                                                   }
                                                   §§goto(addr100);
                                                }
                                                while(_loc8_);
                                                
                                                addr159:
                                                if(!_loc8_)
                                                {
                                                   break loop11;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                    _loc7_++;
                                    §§goto(addr159);
                                 }
                              }
                           }
                           continue loop2;
                           while(_loc8_ || param1)
                           {
                              _loc7_ = int(this.§!D§.length);
                              if(_loc9_)
                              {
                                 continue;
                              }
                              §§goto(addr179);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr255);
      }
      
      public function §`Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!N§ = 0;
            while(true)
            {
               this.§4!D§ = 0;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§>k§ = 0;
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §;!D§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(_loc18_ || param2)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§-!N§)
         {
            if((_loc6_ = this.§!D§[_loc4_]).§0!$§() != b2Body.b2_dynamicBody)
            {
               if(_loc18_)
               {
                  loop17:
                  while(true)
                  {
                     _loc4_++;
                     if(!_loc19_)
                     {
                        if(!(_loc19_ && param1))
                        {
                           if(false)
                           {
                              loop13:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(!(_loc19_ && param1))
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§%G§);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * _loc6_.§0R§);
                                    }
                                    §§push(§§pop() * §§pop().§?!&§(§§pop() - §§pop(),0,1));
                                 }
                                 §§pop().m_angularVelocity = §§pop();
                                 addr194:
                                 while(true)
                                 {
                                    if(_loc18_)
                                    {
                                       addr196:
                                       if(_loc19_ && this)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          continue loop17;
                                       }
                                    }
                                    addr230:
                                    while(true)
                                    {
                                       continue loop13;
                                    }
                                 }
                                 addr263:
                                 while(true)
                                 {
                                    §§push(_loc6_.§%=§);
                                    if(_loc19_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§%G§);
                                       if(_loc18_ || param3)
                                       {
                                          §§push(§§pop() * _loc6_.§>!Q§);
                                       }
                                       §§push(§§pop().§?!&§(§§pop() - §§pop(),0,1));
                                       if(_loc18_)
                                       {
                                          while(true)
                                          {
                                             §§pop().§?Q§(§§pop());
                                             §§goto(addr230);
                                          }
                                          addr229:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop().y = §§pop();
                                          }
                                          addr300:
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc6_.§%=§);
                                    addr268:
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc18_ || param2)
                                       {
                                          §§push(param1.§%G§);
                                          if(_loc18_ || param2)
                                          {
                                             while(true)
                                             {
                                                §§push(param2.y);
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc6_.§]m§);
                                                   if(_loc18_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.§-U§);
                                                         addr295:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            addr296:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                      }
                                                      addr293:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   addr297:
                                                }
                                                addr298:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                             addr285:
                                          }
                                          while(true)
                                          {
                                          }
                                       }
                                       §§goto(addr300);
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
                           if(_loc18_)
                           {
                              §§push(param1.§%G§);
                              if(_loc18_ || this)
                              {
                                 §§push(_loc6_.§?0§);
                                 if(_loc18_)
                                 {
                                    addr261:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc19_ && param1))
                                    {
                                       §§push(_loc6_.§&m§);
                                    }
                                    §§pop().m_angularVelocity = §§pop() + §§pop();
                                    §§goto(addr263);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                           }
                           §§goto(addr261);
                        }
                     }
                     §§goto(addr194);
                  }
               }
               §§goto(addr203);
            }
            else
            {
               §§push(_loc6_.§%=§);
               if(!(_loc19_ && this))
               {
                  §§push(_loc6_.§%=§);
                  if(!(_loc19_ && param1))
                  {
                     §§push(§§pop().x);
                     if(_loc18_ || param1)
                     {
                        §§push(param1.§%G§);
                        if(!(_loc19_ && param1))
                        {
                           §§push(param2.x);
                           if(!_loc19_)
                           {
                              §§push(_loc6_.§]m§);
                              if(!_loc19_)
                              {
                                 §§push(_loc6_.§-U§);
                                 if(!(_loc19_ && this))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc18_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc19_ && param1))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc18_ || this)
                                          {
                                             addr140:
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_)
                                             {
                                                addr143:
                                                §§push(§§pop() + §§pop());
                                                if(_loc18_)
                                                {
                                                   addr146:
                                                   §§pop().x = §§pop();
                                                   if(_loc18_ || param3)
                                                   {
                                                      §§goto(addr263);
                                                      §§push(_loc6_.§%=§);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr298);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr296);
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr297);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr268);
               }
            }
            §§goto(addr209);
         }
         if(!_loc19_)
         {
            §§push(this.§ !%§);
            if(!(_loc19_ && param1))
            {
               §§pop().§1D§(param1,this.§"V§,this.§4!D§,this.§@!=§);
               addr325:
               §§push(this.§ !%§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!(_loc19_ && this))
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
                        if(_loc18_)
                        {
                           §§push(this.§>k§);
                           if(!_loc19_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§,D§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!_loc19_)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!(_loc19_ && param3))
                              {
                                 §§push(0);
                                 if(_loc18_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc18_)
                                    {
                                       loop135:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc19_)
                                          {
                                             loop144:
                                             while(true)
                                             {
                                                §§push(param1.§-!>§);
                                                if(_loc18_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!(_loc19_ && param3))
                                                      {
                                                         §§push(0);
                                                         if(!_loc19_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc18_ || param1)
                                                            {
                                                               addr488:
                                                               §§push(_loc4_);
                                                               if(!_loc19_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§>k§);
                                                                     if(!_loc19_)
                                                                     {
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(_loc18_)
                                                                              {
                                                                                 _loc8_.§>h§();
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr502:
                                                                                    §§push(0);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          loop50:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(this.§-!N§);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      addr1324:
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            break loop135;
                                                                                                         }
                                                                                                         addr1573:
                                                                                                         §§push(this.§-!N§);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            addr1582:
                                                                                                            loop100:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= §§pop())
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr1585:
                                                                                                                     if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                                                     {
                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                        {
                                                                                                                           addr1596:
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc19_ && param3))
                                                                                                                           {
                                                                                                                              break loop21;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr1612:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           break loop100;
                                                                                                                        }
                                                                                                                        addr1641:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1645);
                                                                                                               }
                                                                                                               §§push((_loc6_ = this.§!D§[_loc4_]).§0!$§());
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(b2Body.b2_staticBody);
                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                  {
                                                                                                                     if(§§pop() == §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           loop123:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc4_++;
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             loop109:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(b2Math.§&f§(_loc15_,_loc6_.§"!?§));
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr1414:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1453:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop123;
                                                                                                                                                                           }
                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(b2Math.§9-§(_loc6_.§%=§,_loc6_.§%=§));
                                                                                                                                                                              break loop109;
                                                                                                                                                                           }
                                                                                                                                                                           addr1453:
                                                                                                                                                                           addr1541:
                                                                                                                                                                           addr1389:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1453);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop109;
                                                                                                                                                                     }
                                                                                                                                                                     addr1433:
                                                                                                                                                                  }
                                                                                                                                                                  loop126:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr1543:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.§?z§);
                                                                                                                                                                           addr1545:
                                                                                                                                                                           loop131:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(b2Body.§5]§);
                                                                                                                                                                              addr1547:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() & §§pop());
                                                                                                                                                                                 addr1548:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    addr1549:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1559:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr1560:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                             addr1516:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1525:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop126;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1562:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop131;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                  addr1527:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1530);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1540);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1458);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1516);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1459);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1414);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc19_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      if(!(_loc19_ && param3))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1500);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1559);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1540);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1525);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1527);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(!(_loc18_ || this))
                                                                                                                                                {
                                                                                                                                                   break loop100;
                                                                                                                                                }
                                                                                                                                                continue loop100;
                                                                                                                                             }
                                                                                                                                             addr1565:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1560);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1502);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1460);
                                                                                                                              }
                                                                                                                              §§goto(addr1433);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1509);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc6_.§?z§);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(b2Body.§5]§);
                                                                                                                           if(_loc18_ || this)
                                                                                                                           {
                                                                                                                              addr1369:
                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          _loc6_.§"!?§ = 0;
                                                                                                                                          if(_loc18_ || param2)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1562);
                                                                                                                                             §§push(0);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1509);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1453);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1543);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1549);
                                                                                                                              }
                                                                                                                              §§goto(addr1548);
                                                                                                                           }
                                                                                                                           §§goto(addr1547);
                                                                                                                        }
                                                                                                                        §§goto(addr1545);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1369);
                                                                                                               }
                                                                                                               §§goto(addr1545);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§-!N§);
                                                                                                               §§goto(addr1641);
                                                                                                            }
                                                                                                            addr1582:
                                                                                                         }
                                                                                                      }
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param3);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(!(_loc19_ && this))
                                                                                                            {
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(Number.MAX_VALUE));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc15_ = §§pop();
                                                                                                                              addr1309:
                                                                                                                              loop36:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                 loop37:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                    loop38:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop39:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          loop40:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc19_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop36;
                                                                                                                                                }
                                                                                                                                                if(!(_loc18_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                      if(!(_loc19_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue loop40;
                                                                                                                                                         }
                                                                                                                                                         §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop38;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  continue loop37;
                                                                                                                                                               }
                                                                                                                                                               continue loop39;
                                                                                                                                                            }
                                                                                                                                                            addr1255:
                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1312:
                                                                                                                                                                     loop45:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§<W§);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1316:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop40;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr1189:
                                                                                                                                                                                 §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(_loc19_ && param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop45;
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop34;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1319:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§1! §(_loc8_.§9,§);
                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1328:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1327:
                                                                                                                                                                                    loop43:
                                                                                                                                                                                    while(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_++;
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1311:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop45;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop45;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          addr1326:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1328);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1189:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1319);
                                                                                                                                                                           }
                                                                                                                                                                           addr1316:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1582);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1201);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1330);
                                                                                                                                                                     }
                                                                                                                                                                     addr1198:
                                                                                                                                                                     addr1312:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop41;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1565);
                                                                                                                                                                           }
                                                                                                                                                                           addr1213:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1328);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr1645:
                                                                                                                                                                  return;
                                                                                                                                                                  addr1208:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1573);
                                                                                                                                                               addr1258:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1585);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1585);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1201);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1612);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1305:
                                                                                                                     }
                                                                                                                     §§goto(addr1309);
                                                                                                                  }
                                                                                                                  §§goto(addr1645);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1326);
                                                                                                         }
                                                                                                         §§goto(addr1327);
                                                                                                      }
                                                                                                      loop137:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr1063:
                                                                                                         addr1075:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            if(_loc18_ || param1)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr1324);
                                                                                                            }
                                                                                                            §§goto(addr1189);
                                                                                                            continue loop137;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc18_ || param3)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               if(_loc18_ || param2)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr1063);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1163:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           break loop50;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr1163:
                                                                                                                  }
                                                                                                                  §§goto(addr1208);
                                                                                                               }
                                                                                                               §§goto(addr1328);
                                                                                                            }
                                                                                                            break loop21;
                                                                                                         }
                                                                                                      }
                                                                                                      addr1324:
                                                                                                      addr1100:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      if((_loc6_ = this.§!D§[_loc4_]).§0!$§() == b2Body.b2_staticBody)
                                                                                                      {
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            loop96:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_++;
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  loop97:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc6_.§,M§();
                                                                                                                           continue loop97;
                                                                                                                        }
                                                                                                                        addr566:
                                                                                                                     }
                                                                                                                     continue loop50;
                                                                                                                  }
                                                                                                                  addr564:
                                                                                                               }
                                                                                                               loop83:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && param3))
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 continue loop96;
                                                                                                                              }
                                                                                                                              loop84:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1.§5!B§);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().m_angularVelocity = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr751:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                          addr754:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                             break loop83;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr908:
                                                                                                                                 }
                                                                                                                                 loop86:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§%=§);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§%=§);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§5!B§);
                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr956:
                                                                                                                                                            §§push(§§pop() * (§§pop() * §§pop()));
                                                                                                                                                            if(!(_loc18_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            loop87:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc19_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  loop88:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§%G§);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc19_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr819:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(_loc18_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr837:
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr848:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr851:
                                                                                                                                                                                                      if(!(_loc19_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop87;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr751);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop54:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr993:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                                                                           addr994:
                                                                                                                                                                                                                           loop56:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr998:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr999:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr837);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr997:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    break loop56;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1018:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1019:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr1020:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                                                                                                                 addr1021:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                    addr991:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop54;
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
                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop88;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.§%=§);
                                                                                                                                                                                                                     loop93:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                                                                        addr1005:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.§%=§);
                                                                                                                                                                                                                           addr976:
                                                                                                                                                                                                                           while(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop93;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr985:
                                                                                                                                                                                                                           continue loop86;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1019);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr991);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr993);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            break loop88;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr885:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1020);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr997);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr994);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr848);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr851);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr998);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr999);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr819);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop84;
                                                                                                                                                                     }
                                                                                                                                                                     addr777:
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                     if(!(_loc19_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * param1.§5!B§);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr751);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1021);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr985);
                                                                                                                                                }
                                                                                                                                                §§goto(addr956);
                                                                                                                                             }
                                                                                                                                             §§goto(addr985);
                                                                                                                                          }
                                                                                                                                          §§goto(addr956);
                                                                                                                                       }
                                                                                                                                       §§goto(addr985);
                                                                                                                                    }
                                                                                                                                    §§goto(addr976);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr777);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     loop69:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        loop70:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           addr712:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              addr714:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 addr715:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc18_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§%G§);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§%=§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             addr730:
                                                                                                                                             addr676:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             §§push(_loc6_.§%=§);
                                                                                                                                             if(_loc19_ && param1)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr689:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr692:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc19_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      loop80:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().a);
                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§%G§);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().a = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop80;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr566);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1005);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr908);
                                                                                                                                                                        continue loop83;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr876);
                                                                                                                                                                     addr618:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().a0 = §§pop();
                                                                                                                                                                     continue loop69;
                                                                                                                                                                  }
                                                                                                                                                                  addr749:
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop70;
                                                                                                                                                            addr707:
                                                                                                                                                         }
                                                                                                                                                         addr733:
                                                                                                                                                         while(!(_loc19_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            continue loop70;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1002);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr749);
                                                                                                                                                      }
                                                                                                                                                      addr748:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr732:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                      }
                                                                                                                                                      addr732:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr733);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr731:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr731:
                                                                                                                                                }
                                                                                                                                                §§goto(addr732);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr730);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr731);
                                                                                                                                    }
                                                                                                                                    §§goto(addr732);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr618);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr744);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(param1.§%G§);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(_loc6_.§%=§);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc18_ || param3)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr999);
                                                                                                                  }
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                  {
                                                                                                                     §§push(param1.§%G§);
                                                                                                                     if(!(_loc19_ && param3))
                                                                                                                     {
                                                                                                                        addr1017:
                                                                                                                        §§goto(addr1018);
                                                                                                                        §§push(_loc6_.§%=§.y);
                                                                                                                     }
                                                                                                                     §§goto(addr1020);
                                                                                                                  }
                                                                                                                  §§goto(addr883);
                                                                                                               }
                                                                                                               §§goto(addr1001);
                                                                                                            }
                                                                                                            §§goto(addr1017);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr999);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      §§goto(addr1645);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      (_loc6_ = this.§!D§[_loc4_]).SetAwake(false);
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         _loc4_++;
                                                                                                      }
                                                                                                      §§goto(addr1612);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§>k§);
                                                                                             if(!(_loc19_ && param3))
                                                                                             {
                                                                                                break loop144;
                                                                                             }
                                                                                             §§goto(addr1582);
                                                                                          }
                                                                                          addr1166:
                                                                                       }
                                                                                       §§goto(addr1324);
                                                                                    }
                                                                                    §§goto(addr1312);
                                                                                 }
                                                                                 §§goto(addr1075);
                                                                              }
                                                                              §§goto(addr502);
                                                                           }
                                                                           else
                                                                           {
                                                                              (_loc7_ = this.§,D§[_loc4_]).§>h§();
                                                                              if(_loc18_ || param2)
                                                                              {
                                                                                 _loc4_++;
                                                                              }
                                                                              §§goto(addr488);
                                                                           }
                                                                        }
                                                                        addr1604:
                                                                        _loc4_ = §§pop();
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           §§goto(addr1612);
                                                                        }
                                                                        §§goto(addr1645);
                                                                        addr495:
                                                                     }
                                                                     §§goto(addr1316);
                                                                  }
                                                                  addr491:
                                                               }
                                                               §§goto(addr1604);
                                                            }
                                                            §§goto(addr502);
                                                         }
                                                         §§goto(addr1312);
                                                      }
                                                      §§goto(addr1309);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc18_ || param1)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc18_ || param1)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  break loop20;
                                                               }
                                                               §§goto(addr491);
                                                            }
                                                            addr422:
                                                         }
                                                         §§goto(addr1258);
                                                      }
                                                   }
                                                   §§goto(addr1166);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc18_ || param2)
                                                   {
                                                      §§push(_loc12_);
                                                      if(_loc18_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc18_)
                                                         {
                                                            §§goto(addr1189);
                                                         }
                                                      }
                                                      §§goto(addr1326);
                                                   }
                                                   §§goto(addr1324);
                                                }
                                                else
                                                {
                                                   §§push((_loc7_ = this.§,D§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                   if(_loc18_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         _loc14_ = §§pop();
                                                         if(_loc18_)
                                                         {
                                                            §§push(_loc13_);
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr1159:
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr1162:
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    continue loop31;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(_loc19_ && this)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 while(!_loc19_)
                                                                                 {
                                                                                    _loc5_++;
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break loop26;
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                 }
                                                                                 continue loop25;
                                                                              }
                                                                           }
                                                                           §§goto(addr1163);
                                                                        }
                                                                     }
                                                                     addr1161:
                                                                  }
                                                                  §§goto(addr1151);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1162);
                                                      }
                                                      §§goto(addr1159);
                                                   }
                                                   §§goto(addr1161);
                                                }
                                             }
                                             addr447:
                                          }
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(_loc18_)
                                       {
                                          §§goto(addr1311);
                                       }
                                       §§goto(addr1100);
                                       addr444:
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 _loc4_++;
                                 if(_loc18_)
                                 {
                                    §§goto(addr444);
                                 }
                                 break;
                              }
                              §§goto(addr1596);
                           }
                           §§goto(addr495);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§>k§);
                        if(_loc18_)
                        {
                           if(§§pop() < §§pop())
                           {
                              (_loc7_ = this.§,D§[_loc5_]).SolveVelocityConstraints(param1);
                              if(!(_loc19_ && this))
                              {
                                 _loc5_++;
                              }
                              continue;
                           }
                           if(_loc18_)
                           {
                              _loc8_.SolveVelocityConstraints();
                              if(_loc18_)
                              {
                                 §§goto(addr441);
                              }
                              §§goto(addr1075);
                           }
                           §§goto(addr1201);
                        }
                        break;
                     }
                     §§goto(addr1316);
                  }
                  §§goto(addr1305);
               }
               §§goto(addr447);
            }
            §§goto(addr1213);
         }
         §§goto(addr325);
      }
      
      public function §%d§(param1:b2TimeStep) : void
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
            §§push(this.§ !%§);
            if(_loc13_ || _loc3_)
            {
               §§pop().§1D§(param1,this.§"V§,this.§4!D§,this.§@!=§);
               addr54:
               §§push(this.§ !%§);
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
                  §§push(this.§>k§);
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
                              while(_loc13_ || param1)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc13_)
                                    {
                                       if(_loc13_ || _loc2_)
                                       {
                                          §§push(param1.§-!>§);
                                          if(_loc13_ || _loc3_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc13_ || _loc3_)
                                                {
                                                   §§push(0);
                                                   if(_loc13_)
                                                   {
                                                      addr92:
                                                      if(_loc13_)
                                                      {
                                                         if(_loc13_ || this)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(_loc13_)
                                                            {
                                                               addr106:
                                                               if(_loc13_ || this)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     addr721:
                                                                     §§push(_loc2_);
                                                                     §§push(this.§-!N§);
                                                                     break;
                                                                  }
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr117:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>k§);
                                                                        if(!(_loc13_ || _loc2_))
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(_loc13_ || param1)
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc2_++;
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       _loc2_++;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr207:
                                                                                    }
                                                                                    continue loop6;
                                                                                    break loop5;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                           break loop7;
                                                                        }
                                                                        addr160:
                                                                        this.§,D§[_loc3_].SolveVelocityConstraints(param1);
                                                                        while(true)
                                                                        {
                                                                           _loc3_++;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              loop8:
                                                                              while(!_loc13_)
                                                                              {
                                                                                 while(_loc13_ || _loc2_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       continue loop8;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr724:
                                                                  §§push(0.75);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc5_:* = §§pop();
                                                                  if(_loc13_)
                                                                  {
                                                                     addr973:
                                                                     _loc2_ = 0;
                                                                     addr736:
                                                                     addr974:
                                                                     §§push(_loc2_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(param1.§<W§);
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(_loc13_ || this)
                                                                                 {
                                                                                    addr754:
                                                                                    this.§1! §(_loc4_.§9,§);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr818:
                                                                                             addr948:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc13_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   addr836:
                                                                                                   if(§§pop() >= this.§>k§)
                                                                                                   {
                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                      {
                                                                                                         addr845:
                                                                                                         §§push(_loc10_);
                                                                                                         if(!(_loc14_ && this))
                                                                                                         {
                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  addr862:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc14_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr880:
                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr888:
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc13_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                addr785:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr792:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr794:
                                                                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr808:
                                                                                                                                                            §§goto(addr754);
                                                                                                                                                         }
                                                                                                                                                         addr895:
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr818);
                                                                                                                                                         }
                                                                                                                                                         _loc3_ = 0;
                                                                                                                                                         §§goto(addr948);
                                                                                                                                                         addr952:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr888);
                                                                                                                                                   }
                                                                                                                                                   _loc2_++;
                                                                                                                                                   addr810:
                                                                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr736);
                                                                                                                                                   }
                                                                                                                                                   addr924:
                                                                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr900:
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr903:
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(!(_loc14_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               addr914:
                                                                                                                                                               _loc11_ = Boolean(§§pop());
                                                                                                                                                               _loc3_++;
                                                                                                                                                               §§goto(addr895);
                                                                                                                                                               addr912:
                                                                                                                                                               addr915:
                                                                                                                                                            }
                                                                                                                                                            addr970:
                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                            §§push(true);
                                                                                                                                                            addr971:
                                                                                                                                                         }
                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                         §§goto(addr952);
                                                                                                                                                      }
                                                                                                                                                      addr919:
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr922:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr923:
                                                                                                                                                            §§pop();
                                                                                                                                                            §§goto(addr924);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr912);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr970);
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr971);
                                                                                                                                                }
                                                                                                                                                §§goto(addr862);
                                                                                                                                             }
                                                                                                                                             §§goto(addr845);
                                                                                                                                          }
                                                                                                                                          §§goto(addr880);
                                                                                                                                       }
                                                                                                                                       §§goto(addr785);
                                                                                                                                    }
                                                                                                                                    §§goto(addr974);
                                                                                                                                 }
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 addr944:
                                                                                                                              }
                                                                                                                              §§goto(addr919);
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr792);
                                                                                                                        }
                                                                                                                        §§goto(addr922);
                                                                                                                     }
                                                                                                                     §§goto(addr923);
                                                                                                                  }
                                                                                                                  §§goto(addr903);
                                                                                                               }
                                                                                                               addr943:
                                                                                                               _loc12_ = §§pop();
                                                                                                               §§goto(addr944);
                                                                                                            }
                                                                                                            §§goto(addr900);
                                                                                                         }
                                                                                                         §§goto(addr914);
                                                                                                      }
                                                                                                      §§goto(addr888);
                                                                                                   }
                                                                                                   §§goto(addr943);
                                                                                                   §§push(Boolean(this.§,D§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                }
                                                                                                §§goto(addr973);
                                                                                             }
                                                                                             §§goto(addr895);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr915);
                                                                                    }
                                                                                    §§goto(addr810);
                                                                                 }
                                                                                 §§goto(addr794);
                                                                              }
                                                                              §§goto(addr754);
                                                                           }
                                                                           §§goto(addr900);
                                                                           §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                        }
                                                                        §§goto(addr836);
                                                                     }
                                                                     §§goto(addr818);
                                                                  }
                                                                  §§goto(addr808);
                                                               }
                                                               §§goto(addr160);
                                                            }
                                                            §§goto(addr724);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                   §§goto(addr721);
                                                }
                                                §§goto(addr106);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr172);
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr92);
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if((_loc6_ = this.§!D§[_loc2_]).§0!$§() == b2Body.b2_staticBody)
                                    {
                                       if(!_loc14_)
                                       {
                                          addr259:
                                          _loc2_++;
                                          if(!_loc14_)
                                          {
                                             if(!(_loc14_ && param1))
                                             {
                                                if(false)
                                                {
                                                   addr271:
                                                   _loc6_.§,M§();
                                                   addr274:
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      §§goto(addr259);
                                                   }
                                                   if(!_loc14_)
                                                   {
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§goto(addr271);
                                                      }
                                                      addr719:
                                                      §§push(_loc7_);
                                                      if(!(_loc14_ && _loc2_))
                                                      {
                                                         addr696:
                                                         §§push(_loc7_);
                                                         if(!_loc14_)
                                                         {
                                                            addr694:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc8_ * _loc8_);
                                                         }
                                                         if(§§pop() + §§pop() > b2Settings.b2_maxTranslationSquared)
                                                         {
                                                            addr702:
                                                            _loc6_.§%=§.Normalize();
                                                            addr703:
                                                            addr700:
                                                            §§push(_loc6_.§%=§);
                                                            if(!(_loc14_ && this))
                                                            {
                                                               addr663:
                                                               addr676:
                                                               addr675:
                                                               addr662:
                                                               §§push(_loc6_.§%=§.x);
                                                               §§push(b2Settings.b2_maxTranslation);
                                                               if(!(_loc14_ && _loc3_))
                                                               {
                                                                  addr674:
                                                                  §§push(§§pop() * param1.§5!B§);
                                                               }
                                                               §§pop().x = §§pop() * §§pop();
                                                               addr677:
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(_loc6_.§%=§);
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     §§push(_loc6_.§%=§);
                                                                     if(!(_loc14_ && param1))
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(_loc13_ || _loc3_)
                                                                        {
                                                                           §§push(b2Settings.b2_maxTranslation);
                                                                           if(_loc13_)
                                                                           {
                                                                              if(_loc13_ || this)
                                                                              {
                                                                                 §§push(param1.§5!B§);
                                                                                 if(!(_loc14_ && param1))
                                                                                 {
                                                                                    addr638:
                                                                                    §§push(§§pop() * (§§pop() * §§pop()));
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          addr649:
                                                                                          §§push(param1.§%G§);
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             if(_loc13_ || _loc2_)
                                                                                             {
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   §§push(_loc6_.m_angularVelocity);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(!(_loc14_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(!(_loc14_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     addr524:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr527:
                                                                                                                        if(!(_loc14_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          addr547:
                                                                                                                                          §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr556:
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                addr557:
                                                                                                                                                if(_loc13_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr574:
                                                                                                                                                      addr573:
                                                                                                                                                      if(_loc6_.m_angularVelocity < 0)
                                                                                                                                                      {
                                                                                                                                                         addr575:
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr585:
                                                                                                                                                                  §§push(§§pop() * param1.§5!B§);
                                                                                                                                                               }
                                                                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                                                                               addr434:
                                                                                                                                                               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                               addr589:
                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     addr422:
                                                                                                                                                                     _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                                                                     addr421:
                                                                                                                                                                     addr419:
                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr386:
                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                        if(_loc13_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc14_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr414:
                                                                                                                                                                              addr404:
                                                                                                                                                                              addr403:
                                                                                                                                                                              addr401:
                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                              §§push(_loc6_.m_sweep.c.x);
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr409:
                                                                                                                                                                                 §§push(§§pop() + param1.§%G§ * _loc6_.§%=§.x);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              addr330:
                                                                                                                                                                              addr415:
                                                                                                                                                                              §§push(_loc6_.m_sweep.c);
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1.§%G§);
                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.§%=§);
                                                                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr372:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr377:
                                                                                                                                                                                                            §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc14_)
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
                                                                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.§%G§);
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                                                                              §§goto(addr271);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr422);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr421);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr386);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr330);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr589);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr415);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr409);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr372);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr414);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr377);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr404);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr403);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr401);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr434);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr419);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr434);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr557);
                                                                                                                                                               }
                                                                                                                                                               addr431:
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  addr463:
                                                                                                                                                                  §§goto(addr431);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr575);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr585);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr677);
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      §§push(b2Settings.b2_maxRotation);
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * param1.§5!B§);
                                                                                                                                                      }
                                                                                                                                                      §§pop().m_angularVelocity = §§pop();
                                                                                                                                                      §§goto(addr431);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr703);
                                                                                                                                                }
                                                                                                                                                §§goto(addr649);
                                                                                                                                             }
                                                                                                                                             §§goto(addr431);
                                                                                                                                          }
                                                                                                                                          §§goto(addr574);
                                                                                                                                       }
                                                                                                                                       §§goto(addr573);
                                                                                                                                    }
                                                                                                                                    addr718:
                                                                                                                                    _loc8_ = §§pop() * §§pop();
                                                                                                                                    addr717:
                                                                                                                                    §§goto(addr719);
                                                                                                                                 }
                                                                                                                                 §§goto(addr694);
                                                                                                                              }
                                                                                                                              §§goto(addr556);
                                                                                                                           }
                                                                                                                           §§goto(addr694);
                                                                                                                        }
                                                                                                                        §§goto(addr696);
                                                                                                                     }
                                                                                                                     §§goto(addr574);
                                                                                                                  }
                                                                                                                  §§goto(addr717);
                                                                                                               }
                                                                                                               §§goto(addr547);
                                                                                                            }
                                                                                                            §§goto(addr718);
                                                                                                         }
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                      §§goto(addr696);
                                                                                                   }
                                                                                                   §§goto(addr527);
                                                                                                }
                                                                                                §§goto(addr694);
                                                                                             }
                                                                                             §§goto(addr696);
                                                                                          }
                                                                                          §§goto(addr574);
                                                                                       }
                                                                                       §§goto(addr663);
                                                                                    }
                                                                                    §§goto(addr676);
                                                                                 }
                                                                                 §§goto(addr674);
                                                                              }
                                                                              §§goto(addr675);
                                                                           }
                                                                        }
                                                                        §§goto(addr638);
                                                                     }
                                                                     §§goto(addr662);
                                                                  }
                                                                  §§goto(addr703);
                                                               }
                                                               §§goto(addr700);
                                                            }
                                                            §§goto(addr702);
                                                         }
                                                         §§goto(addr649);
                                                      }
                                                      §§goto(addr694);
                                                   }
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr721);
                                             }
                                             §§goto(addr422);
                                          }
                                          §§goto(addr274);
                                       }
                                       §§push(param1.§%G§);
                                       if(!(_loc14_ && this))
                                       {
                                          addr715:
                                          §§goto(addr718);
                                          §§push(_loc6_.§%=§.y);
                                       }
                                       §§goto(addr718);
                                       addr257:
                                    }
                                    §§push(param1.§%G§);
                                    if(_loc13_ || _loc2_)
                                    {
                                       §§push(_loc6_.§%=§);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc13_ || _loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc14_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr463);
                                                }
                                                §§goto(addr718);
                                             }
                                             §§goto(addr547);
                                          }
                                          §§goto(addr694);
                                       }
                                       §§goto(addr715);
                                    }
                                    §§goto(addr524);
                                 }
                                 §§goto(addr724);
                              }
                              continue loop0;
                           }
                        }
                     }
                     else
                     {
                        this.§,D§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr207);
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §1! §(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_)
         {
            if(this.§+4§ == null)
            {
               if(_loc7_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < this.§4!D§)
            {
               _loc3_ = this.§"V§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!(_loc6_ && param1))
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     _loc5_ = §§pop();
                     addr152:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr103);
               if(true)
               {
                  continue;
               }
               §§goto(addr80);
            }
            return;
         }
         addr33:
      }
      
      public function §3J§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            param1.§0+§ = this.§-!N§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§-!N§ + 1;
         _loc3_.§-!N§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§-!N§;
         this.§!D§[_loc2_] = param1;
      }
      
      public function §-!R§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§4!D§ + 1;
         _loc3_.§4!D§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§4!D§;
         this.§"V§[_loc2_] = param1;
      }
      
      public function §-!T§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§>k§ + 1;
         _loc3_.§>k§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§>k§;
         this.§,D§[_loc2_] = param1;
      }
   }
}
