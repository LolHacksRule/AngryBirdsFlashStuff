package §`w§
{
   import §7!u§.b2internal;
   import §72§.§<X§;
   import §72§.b2ContactPoint;
   import §72§.b2DynamicTreeBroadPhase;
   import §break§.b2Contact;
   import §break§.b2ContactEdge;
   import §break§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §[!R§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §[!R§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §<Z§:§<X§;
      
      b2internal var §]3§:b2Contact;
      
      b2internal var §0V§:int;
      
      b2internal var §2!1§:b2ContactFilter;
      
      b2internal var §7Q§:b2ContactListener;
      
      b2internal var §,!&§:b2ContactFactory;
      
      b2internal var §`o§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               this.m_world = null;
               loop2:
               for(; !(_loc2_ && _loc2_); if(!(_loc1_ || this))
               {
                  continue;
               },§§goto(addr76))
               {
                  this.§2!1§ = b2ContactFilter.§#3§;
                  loop3:
                  while(true)
                  {
                     this.§7Q§ = b2ContactListener.§8=§;
                     loop4:
                     while(true)
                     {
                        this.§,!&§ = new b2ContactFactory(this.§`o§);
                        loop5:
                        while(true)
                        {
                           if(_loc1_ || this)
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           continue loop4;
                           addr76:
                           this.§<Z§ = new b2DynamicTreeBroadPhase();
                           if(_loc2_)
                           {
                              continue;
                           }
                           addr35:
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                           }
                           addr115:
                           while(true)
                           {
                              this.§0V§ = 0;
                              break loop5;
                              §§goto(addr35);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §&!%§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc14_)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc14_ || this)
               {
                  §§goto(addr53);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§"x§();
            loop0:
            while(true)
            {
               if(!_loc7_)
               {
                  if(!(_loc13_ && param2))
                  {
                     §§push(_loc6_.§9e§(_loc5_));
                     if(!_loc13_)
                     {
                        §§push(false);
                        if(!(_loc13_ && _loc3_))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc14_ || _loc3_)
                              {
                                 return;
                              }
                              §§goto(addr209);
                           }
                           break;
                        }
                        addr201:
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc13_ && param1))
                           {
                              addr209:
                              return;
                           }
                        }
                        var _loc8_:b2Contact;
                        _loc3_ = (_loc8_ = this.§,!&§.§`4§(_loc3_,_loc4_)).§?!l§();
                        _loc4_ = _loc8_.§0+§();
                        _loc5_ = _loc3_.m_body;
                        _loc6_ = _loc4_.m_body;
                        if(_loc14_)
                        {
                           _loc8_.§-!I§ = null;
                           loop13:
                           while(true)
                           {
                              _loc8_.§3=§ = this.m_world.§]3§;
                              loop14:
                              while(true)
                              {
                                 §§push(this.m_world);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop().§]3§);
                                    if(!(_loc13_ && param1))
                                    {
                                       if(§§pop() != null)
                                       {
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                             if(_loc14_ || param2)
                                             {
                                                §§push(§§pop().§]3§);
                                                while(true)
                                                {
                                                   §§pop().§-!I§ = _loc8_;
                                                   addr504:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr502:
                                             }
                                             break;
                                             addr346:
                                             if(!(_loc14_ || param1))
                                             {
                                                continue;
                                             }
                                             addr353:
                                             §§push(_loc8_.§#!T§);
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                §§pop().§-!3§ = _loc6_.§]3§;
                                                loop37:
                                                while(true)
                                                {
                                                   addr271:
                                                   loop38:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.§]3§);
                                                      if(_loc14_)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            addr278:
                                                            §§push(null);
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!(_loc13_ && param1))
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr298:
                                                                        _loc6_.§]3§.§;+§ = _loc8_.§#!T§;
                                                                        loop40:
                                                                        while(true)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 addr310:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_.§]3§ = _loc8_.§#!T§;
                                                                                    if(_loc13_ && param2)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    addr547:
                                                                                    addr547:
                                                                                    if(!(_loc13_ && param2))
                                                                                    {
                                                                                       continue loop37;
                                                                                    }
                                                                                    continue loop40;
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    addr385:
                                                                                    §§push(_loc5_.§]3§);
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       §§push(null);
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_.§]3§ = _loc8_.§6X§;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.§#!T§);
                                                                                                   loop31:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§+2§ = _loc8_;
                                                                                                      addr376:
                                                                                                      while(!_loc13_)
                                                                                                      {
                                                                                                         §§push(_loc8_.§#!T§);
                                                                                                         loop33:
                                                                                                         while(!_loc13_)
                                                                                                         {
                                                                                                            §§pop().§,H§ = _loc5_;
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc14_ || param2))
                                                                                                               {
                                                                                                                  addr397:
                                                                                                                  while(_loc14_ || this)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  loop23:
                                                                                                                  for(; !_loc13_; §§goto(addr397))
                                                                                                                  {
                                                                                                                     addr449:
                                                                                                                     §§push(_loc8_.§6X§);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§pop().§-!3§ = _loc5_.§]3§;
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     addr436:
                                                                                                                     addr453:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           addr438:
                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                           {
                                                                                                                              §§pop().§;+§ = null;
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           addr466:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§+2§ = _loc8_;
                                                                                                                              break loop38;
                                                                                                                              §§goto(addr438);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        §§goto(addr449);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().§,H§ = _loc6_;
                                                                                                                        break loop23;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr397:
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§push(_loc8_.§#!T§);
                                                                                                                  while(_loc14_)
                                                                                                                  {
                                                                                                                     §§pop().§;+§ = null;
                                                                                                                     continue loop34;
                                                                                                                     §§goto(addr353);
                                                                                                                  }
                                                                                                                  continue loop33;
                                                                                                                  addr328:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr476:
                                                                                                               }
                                                                                                               addr476:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.§6X§);
                                                                                                               }
                                                                                                               §§goto(addr466);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop31;
                                                                                                      }
                                                                                                      addr416:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc14_ || param1))
                                                                                                         {
                                                                                                            break loop38;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       addr396:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr413:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§;+§ = _loc8_.§6X§;
                                                                                       }
                                                                                       addr413:
                                                                                    }
                                                                                    §§goto(addr416);
                                                                                 }
                                                                                 addr432:
                                                                                 addr236:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr504);
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr432);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr547);
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr453);
                                                   }
                                                }
                                             }
                                             §§goto(addr328);
                                          }
                                          addr528:
                                          var _loc11_:*;
                                          §§push((_loc11_ = §§pop()).§0V§);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc12_:* = §§pop();
                                          if(_loc14_ || param2)
                                          {
                                             _loc11_.§0V§ = _loc12_;
                                          }
                                          §§goto(addr547);
                                       }
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          if(!_loc13_)
                                          {
                                             §§pop().§]3§ = _loc8_;
                                             §§goto(addr476);
                                          }
                                          else
                                          {
                                             §§goto(addr528);
                                          }
                                       }
                                    }
                                    §§goto(addr502);
                                 }
                                 §§goto(addr528);
                              }
                           }
                        }
                        §§goto(addr310);
                     }
                     addr200:
                     §§goto(addr201);
                     §§push(false);
                  }
                  break;
               }
               if(_loc7_.§,H§ != _loc5_)
               {
                  continue;
               }
               if(!_loc14_)
               {
                  break;
               }
               _loc9_ = _loc7_.§+2§.§?!l§();
               _loc10_ = _loc7_.§+2§.§0+§();
               if(!_loc13_)
               {
                  §§push(_loc9_ == _loc3_);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr157:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr156:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc14_)
                                 {
                                    if(_loc14_ || _loc3_)
                                    {
                                       return;
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr150:
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(_loc9_ == _loc4_);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(§§pop());
                                    if(!_loc14_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(§§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          if(_loc14_ || this)
                                          {
                                             return;
                                          }
                                          while(_loc14_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc10_ == _loc3_);
                                                if(!(_loc13_ && param1))
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             §§pop();
                                          }
                                          §§goto(addr150);
                                       }
                                       continue loop0;
                                       addr99:
                                    }
                                 }
                                 while(!_loc13_)
                                 {
                                    §§goto(addr130);
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr157);
                        }
                     }
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr200);
            §§push(this.§2!1§.§9e§(_loc3_,_loc4_));
         }
         addr53:
      }
      
      public function §0a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<Z§.§`!j§(this.§&!%§);
         }
      }
      
      public function §[M§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§?!l§();
         var _loc3_:b2Fixture = param1.§0+§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(_loc8_ || _loc2_)
         {
            if(param1.§!u§())
            {
               if(_loc8_)
               {
                  this.§7Q§.EndContact(param1);
                  loop41:
                  while(true)
                  {
                     addr294:
                     while(true)
                     {
                        §§push(param1.§-!I§);
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(param1.§-!I§);
                                 §§goto(addr302);
                              }
                           }
                           while(true)
                           {
                              §§push(param1.§3=§);
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr288);
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr290);
                              §§goto(addr305);
                           }
                        }
                        addr302:
                        while(true)
                        {
                           §§pop().§3=§ = param1.§3=§;
                           addr305:
                           while(true)
                           {
                           }
                        }
                        addr93:
                        if(_loc9_ && param1)
                        {
                           continue loop1;
                        }
                        addr40:
                        this.§,!&§.§[M§(param1);
                        if(!_loc9_)
                        {
                           if(_loc8_ || this)
                           {
                              if(!_loc8_)
                              {
                                 continue loop41;
                              }
                              if(false)
                              {
                                 loop32:
                                 while(true)
                                 {
                                    §§push(param1.§#!T§);
                                    if(!_loc9_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(§§pop() == _loc5_.§]3§)
                                          {
                                             if(!_loc9_)
                                             {
                                                addr70:
                                                if(_loc8_ || param1)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr79:
                                                      if(_loc8_ || this)
                                                      {
                                                         _loc5_.§]3§ = param1.§#!T§.§-!3§;
                                                         if(_loc8_)
                                                         {
                                                            §§goto(addr93);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      loop26:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §§push(param1.§#!T§);
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§;+§);
                                                               loop35:
                                                               while(_loc8_ || this)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(param1.§#!T§.§-!3§);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§pop().§-!3§ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              addr187:
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§#!T§);
                                                                                 addr104:
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(§§pop().§-!3§);
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop32;
                                                                                                }
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(param1.§#!T§);
                                                                                                      while(!_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop().§-!3§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§#!T§.§;+§);
                                                                                                            if(_loc9_ && this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§pop().§;+§ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                         }
                                                                                                         loop20:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().§;+§ = §§pop();
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§6X§);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           addr193:
                                                                                                                           if(!(_loc9_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr200:
                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(§§pop() == _loc4_.§]3§)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ || param1))
                                                                                                                                       {
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       _loc4_.§]3§ = param1.§6X§.§-!3§;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§6X§);
                                                                                                                                                addr255:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§;+§);
                                                                                                                                                   break loop35;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr253:
                                                                                                                                          }
                                                                                                                                          continue loop30;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr346);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§#!T§);
                                                                                                                                    addr146:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§;+§);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§;+§);
                                                                                                                                 addr252:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr253);
                                                                                                                                    }
                                                                                                                                    addr229:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§6X§);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr200);
                                                                                                                              }
                                                                                                                              addr251:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§-!3§);
                                                                                                                              break loop29;
                                                                                                                              §§goto(addr193);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr236:
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§-!3§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr255);
                                                                                                                     }
                                                                                                                     §§goto(addr305);
                                                                                                                     addr188:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr260:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && this))
                                                                                                                  {
                                                                                                                     §§goto(addr229);
                                                                                                                  }
                                                                                                                  §§goto(addr274);
                                                                                                               }
                                                                                                            }
                                                                                                            addr293:
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr268:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(param1 == this.m_world.§]3§)
                                                                                                                  {
                                                                                                                     addr274:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.m_world.§]3§ = param1.§3=§;
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr251);
                                                                                                                           }
                                                                                                                           addr248:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr346);
                                                                                                                  }
                                                                                                                  §§goto(addr248);
                                                                                                                  continue loop38;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop27;
                                                                                                      addr128:
                                                                                                   }
                                                                                                   §§goto(addr226);
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr239);
                                                                                       }
                                                                                       §§goto(addr131);
                                                                                    }
                                                                                    §§goto(addr146);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr236);
                                                                                       }
                                                                                       addr234:
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        addr180:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().§-!3§ = §§pop();
                                                                        §§goto(addr260);
                                                                     }
                                                                     addr259:
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr259);
                                                               }
                                                            }
                                                         }
                                                         addr288:
                                                         while(true)
                                                         {
                                                            §§push(param1.§3=§);
                                                            addr290:
                                                            while(true)
                                                            {
                                                               §§pop().§-!I§ = param1.§-!I§;
                                                               §§goto(addr293);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr119);
                                             }
                                             §§goto(addr93);
                                          }
                                          §§goto(addr40);
                                       }
                                       §§goto(addr104);
                                    }
                                    §§goto(addr128);
                                 }
                                 continue loop41;
                              }
                              var _loc6_:*;
                              §§push((_loc6_ = this).§0V§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc7_:* = §§pop();
                              if(!(_loc9_ && _loc3_))
                              {
                                 _loc6_.§0V§ = _loc7_;
                              }
                              §§goto(addr346);
                           }
                           §§goto(addr142);
                        }
                        addr346:
                        return;
                        continue loop41;
                     }
                  }
                  addr325:
               }
               §§goto(addr346);
            }
            §§goto(addr294);
         }
         §§goto(addr325);
      }
      
      public function §`!"§() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§]3§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§?!l§();
            _loc3_ = _loc1_.§0+§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!_loc11_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc10_ || _loc2_)
               {
                  §§push(false);
                  if(_loc10_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc11_ && _loc1_))
                     {
                        addr84:
                        §§push(§§pop());
                        if(!_loc11_)
                        {
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!(_loc11_ && _loc1_))
                                    {
                                       §§push(false);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc11_ && this))
                                          {
                                             addr113:
                                             if(§§pop())
                                             {
                                                if(_loc10_ || this)
                                                {
                                                   _loc1_ = _loc1_.§+!N§();
                                                   continue;
                                                }
                                                addr149:
                                                §§push(_loc5_.§9e§(_loc4_));
                                                if(!_loc11_)
                                                {
                                                   addr154:
                                                   §§push(false);
                                                   if(_loc10_ || _loc1_)
                                                   {
                                                      addr162:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            addr165:
                                                            _loc1_ = (_loc9_ = _loc1_).§+!N§();
                                                            if(!_loc11_)
                                                            {
                                                               this.§[M§(_loc9_);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr184:
                                                         if(this.§2!1§.§9e§(_loc2_,_loc3_) == false)
                                                         {
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               addr213:
                                                               _loc6_ = _loc2_.§!!o§;
                                                               _loc7_ = _loc3_.§!!o§;
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  §§push(this.§<Z§.§7l§(_loc6_,_loc7_));
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           addr252:
                                                                           §§push(false);
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              _loc1_ = (_loc9_ = _loc1_).§+!N§();
                                                                              if(!(_loc11_ && this))
                                                                              {
                                                                                 this.§[M§(_loc9_);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr293:
                                                                              _loc1_ = _loc1_.§+!N§();
                                                                           }
                                                                           continue;
                                                                        }
                                                                        _loc1_.§6!^§(this.§7Q§);
                                                                        §§goto(addr293);
                                                                        §§goto(addr293);
                                                                     }
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.§;!R§ &= ~b2Contact.§8,§;
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      _loc1_ = (_loc9_ = _loc1_).§+!N§();
                                                      if(_loc10_)
                                                      {
                                                         this.§[M§(_loc9_);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr184);
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§;!R§ & b2Contact.§8,§)
                                                {
                                                   if(!(_loc11_ && this))
                                                   {
                                                      §§goto(addr149);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr213);
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr213);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr162);
               }
               §§goto(addr84);
            }
            §§goto(addr165);
         }
      }
   }
}
