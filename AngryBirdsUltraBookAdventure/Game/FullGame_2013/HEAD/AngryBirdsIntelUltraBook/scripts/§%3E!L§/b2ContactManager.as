package §>!L§
{
   import §!m§.§"%§;
   import §!m§.b2ContactPoint;
   import §!m§.b2DynamicTreeBroadPhase;
   import §#!0§.b2Contact;
   import §#!0§.b2ContactEdge;
   import §#!0§.b2ContactFactory;
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §<!6§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!6§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §%%§:§"%§;
      
      b2internal var §7!V§:b2Contact;
      
      b2internal var § !Q§:int;
      
      b2internal var §!!'§:b2ContactFilter;
      
      b2internal var §'!j§:b2ContactListener;
      
      b2internal var § !2§:b2ContactFactory;
      
      b2internal var §6I§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.m_world = null;
               loop1:
               while(true)
               {
                  this.§ !Q§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§!!'§ = b2ContactFilter.§4"§;
                     while(!_loc2_)
                     {
                        this.§'!j§ = b2ContactListener.§1K§;
                        do
                        {
                           this.§ !2§ = new b2ContactFactory(this.§6I§);
                           continue loop2;
                        }
                        while(_loc2_ && _loc2_);
                        
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §3!V§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc13_)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc13_)
               {
                  §§goto(addr49);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§2!c§();
            loop0:
            while(true)
            {
               §§push(Boolean(_loc7_));
               if(!_loc14_)
               {
                  if(!§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§push(_loc6_.§,!5§(_loc5_));
                        if(!(_loc14_ && param1))
                        {
                           §§push(false);
                           if(_loc13_ || this)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc14_ && param2))
                                 {
                                    break;
                                 }
                              }
                              addr237:
                              §§push(this.§!!'§.§,!5§(_loc3_,_loc4_));
                              §§push(false);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc13_)
                              {
                                 return;
                              }
                           }
                        }
                        §§goto(addr237);
                     }
                     var _loc8_:b2Contact = this.§ !2§.§@!L§(_loc3_,_loc4_);
                     _loc3_ = _loc8_.§'$§();
                     _loc4_ = _loc8_.§<!2§();
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if(!(_loc14_ && param2))
                     {
                        _loc8_.§<!9§ = null;
                        _loc8_.§,!Z§ = this.m_world.§7!V§;
                        addr513:
                        addr517:
                        §§push(this.m_world);
                        if(_loc13_)
                        {
                           §§push(§§pop().§7!V§);
                           if(_loc13_)
                           {
                              if(§§pop() != null)
                              {
                                 addr489:
                                 §§push(this.m_world);
                                 if(_loc13_)
                                 {
                                    addr494:
                                    §§pop().§7!V§.§<!9§ = _loc8_;
                                    addr496:
                                 }
                                 §§goto(addr520);
                              }
                              §§push(this.m_world);
                              if(_loc13_ || this)
                              {
                                 §§pop().§7!V§ = _loc8_;
                                 addr463:
                                 _loc8_.§6+§.§7![§ = _loc8_;
                                 addr478:
                                 addr465:
                                 §§push(_loc8_.§6+§);
                                 if(_loc13_)
                                 {
                                    §§pop().§@X§ = _loc6_;
                                    addr449:
                                    _loc8_.§6+§.§3!j§ = null;
                                    addr459:
                                    addr451:
                                    §§push(_loc8_.§6+§);
                                    if(_loc13_ || _loc3_)
                                    {
                                       if(!_loc14_)
                                       {
                                          §§pop().§<!D§ = _loc5_.§7!V§;
                                          if(_loc13_ || param1)
                                          {
                                             if(_loc13_ || this)
                                             {
                                                if(_loc13_)
                                                {
                                                   §§push(_loc5_.§7!V§);
                                                   if(!_loc14_)
                                                   {
                                                      addr403:
                                                      if(§§pop() != null)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            addr408:
                                                            _loc5_.§7!V§.§3!j§ = _loc8_.§6+§;
                                                            addr411:
                                                            if(!_loc14_)
                                                            {
                                                               addr382:
                                                               _loc5_.§7!V§ = _loc8_.§6+§;
                                                               addr387:
                                                               if(!(_loc14_ && param2))
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr372:
                                                                     _loc8_.§%W§.§7![§ = _loc8_;
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        addr364:
                                                                        §§push(_loc8_.§%W§);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§pop().§@X§ = _loc5_;
                                                                           addr356:
                                                                           _loc8_.§%W§.§3!j§ = null;
                                                                           addr368:
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(_loc8_.§%W§);
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(_loc13_ || _loc3_)
                                                                                 {
                                                                                    §§pop().§<!D§ = _loc6_.§7!V§;
                                                                                    addr350:
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       addr305:
                                                                                       §§push(_loc6_.§7!V§);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                addr314:
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   addr318:
                                                                                                   §§push(_loc6_.§7!V§);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§pop().§3!j§ = _loc8_.§%W§;
                                                                                                      addr323:
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                            {
                                                                                                               addr283:
                                                                                                               _loc6_.§7!V§ = _loc8_.§%W§;
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr305);
                                                                                                                              }
                                                                                                                              addr520:
                                                                                                                              var _loc11_:*;
                                                                                                                              §§push((_loc11_ = §§pop()).§ !Q§);
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                              }
                                                                                                                              var _loc12_:* = §§pop();
                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                              {
                                                                                                                                 _loc11_.§ !Q§ = _loc12_;
                                                                                                                              }
                                                                                                                              return;
                                                                                                                              §§push(this.m_world);
                                                                                                                           }
                                                                                                                           §§goto(addr513);
                                                                                                                        }
                                                                                                                        §§goto(addr489);
                                                                                                                     }
                                                                                                                     §§goto(addr314);
                                                                                                                  }
                                                                                                                  §§goto(addr323);
                                                                                                               }
                                                                                                               §§goto(addr489);
                                                                                                            }
                                                                                                            §§goto(addr411);
                                                                                                         }
                                                                                                         §§goto(addr387);
                                                                                                      }
                                                                                                      §§goto(addr368);
                                                                                                   }
                                                                                                   §§goto(addr408);
                                                                                                }
                                                                                                §§goto(addr350);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       §§goto(addr318);
                                                                                    }
                                                                                    §§goto(addr459);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           §§goto(addr489);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr489);
                                                                  }
                                                                  §§goto(addr478);
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr489);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   §§goto(addr408);
                                                }
                                                §§goto(addr517);
                                             }
                                             §§goto(addr496);
                                          }
                                          §§goto(addr489);
                                       }
                                       §§goto(addr478);
                                    }
                                    §§goto(addr449);
                                 }
                                 §§goto(addr463);
                              }
                              §§goto(addr489);
                           }
                           §§goto(addr494);
                        }
                     }
                     §§goto(addr489);
                  }
                  else
                  {
                     if(_loc7_.§@X§ != _loc5_)
                     {
                        continue;
                     }
                     if(_loc14_)
                     {
                        break;
                     }
                     _loc9_ = _loc7_.§7![§.§'$§();
                     _loc10_ = _loc7_.§7![§.§<!2§();
                     if(_loc13_)
                     {
                        §§push(_loc9_ == _loc3_);
                        loop1:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr186:
                                          while(true)
                                          {
                                             §§push(_loc10_ == _loc4_);
                                             addr173:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                       addr185:
                                    }
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc9_ == _loc4_);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc14_)
                                                      {
                                                         if(!(_loc13_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!(_loc13_ || param1))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               break loop8;
                                                            }
                                                            if(!_loc13_)
                                                            {
                                                               break;
                                                            }
                                                            addr158:
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc13_ || this))
                                                               {
                                                                  §§goto(addr176);
                                                               }
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(_loc10_ == _loc3_);
                                                                  if(!(_loc13_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc14_ && _loc3_))
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           break;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr186);
                                                               §§goto(addr158);
                                                            }
                                                            addr159:
                                                            if(!_loc13_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr100:
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr159);
                                                                  §§goto(addr100);
                                                               }
                                                               continue loop0;
                                                               addr107:
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                         continue loop2;
                                                         addr154:
                                                      }
                                                      §§goto(addr107);
                                                   }
                                                   §§goto(addr154);
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr185);
                                          }
                                          addr176:
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr186);
                  }
               }
               §§goto(addr237);
            }
            return;
         }
         addr49:
      }
      
      public function §default§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%%§.§"!P§(this.§3!V§);
         }
      }
      
      public function §"G§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§'$§();
         var _loc3_:b2Fixture = param1.§<!2§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc8_)
         {
            §§push(param1.§%&§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§'!j§.EndContact(param1);
                     addr406:
                     while(true)
                     {
                     }
                  }
                  addr401:
               }
               while(true)
               {
                  §§push(param1.§<!9§);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(param1.§<!9§);
                              addr394:
                              while(true)
                              {
                                 §§pop().§,!Z§ = param1.§,!Z§;
                                 addr397:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr382:
                        }
                        while(true)
                        {
                           §§push(param1.§,!Z§);
                           if(_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§,!Z§);
                                       addr366:
                                       while(true)
                                       {
                                          §§pop().§<!9§ = param1.§<!9§;
                                          addr369:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr364:
                                 }
                                 while(true)
                                 {
                                    if(param1 == this.m_world.§7!V§)
                                    {
                                       loop10:
                                       while(_loc9_ || param1)
                                       {
                                          this.m_world.§7!V§ = param1.§,!Z§;
                                          loop11:
                                          while(true)
                                          {
                                             addr313:
                                             while(true)
                                             {
                                                §§push(param1.§6+§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop().§3!j§);
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param1.§6+§);
                                                               addr332:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§3!j§);
                                                                  addr333:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§6+§.§<!D§);
                                                                     addr336:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§<!D§ = §§pop();
                                                                        addr337:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr88:
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(param1.§6+§);
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(§§pop().§<!D§);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(_loc9_ || _loc2_)
                                                                        {
                                                                           §§push(param1.§6+§);
                                                                           loop38:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§<!D§);
                                                                              loop39:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§6+§.§3!j§);
                                                                                 loop40:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§3!j§ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§6+§);
                                                                                             if(!(_loc9_ || param1))
                                                                                             {
                                                                                                continue loop38;
                                                                                             }
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop() == _loc4_.§7!V§)
                                                                                                {
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      _loc4_.§7!V§ = param1.§6+§.§<!D§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr234:
                                                                                                         while(_loc9_ || param1)
                                                                                                         {
                                                                                                            §§push(param1.§%W§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§3!j§);
                                                                                                               addr244:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§%W§.§<!D§);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§pop().§<!D§ = §§pop();
                                                                                                                     addr250:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr124:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§%W§);
                                                                                                                           addr127:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§<!D§);
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              addr181:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§%W§.§3!j§);
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop().§3!j§ = §§pop();
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              continue loop39;
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr250:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr336);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr210);
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                          continue loop13;
                                                                                          addr251:
                                                                                       }
                                                                                       §§goto(addr382);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr406);
                                                                     }
                                                                     §§goto(addr251);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr333);
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                       §§goto(addr369);
                                    }
                                    §§goto(addr313);
                                 }
                              }
                           }
                           §§goto(addr366);
                        }
                     }
                  }
                  §§goto(addr394);
               }
            }
         }
         §§goto(addr337);
      }
      
      public function §;T§() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§7!V§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§'$§();
            _loc3_ = _loc1_.§<!2§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!(_loc10_ && this))
            {
               §§push(_loc4_.IsAwake());
               if(!_loc10_)
               {
                  §§push(false);
                  if(_loc11_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc11_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(§§pop());
                           if(!_loc10_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc11_ || _loc2_)
                              {
                                 addr99:
                                 if(§§pop())
                                 {
                                    if(!_loc10_)
                                    {
                                       §§pop();
                                       if(!_loc10_)
                                       {
                                          addr105:
                                          §§push(_loc5_.IsAwake());
                                          if(_loc11_ || _loc1_)
                                          {
                                             addr114:
                                             §§push(false);
                                             if(!(_loc10_ && _loc1_))
                                             {
                                                addr122:
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      addr133:
                                                      if(§§pop())
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            addr136:
                                                            _loc1_ = _loc1_.§'!;§();
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(Boolean(_loc1_.§]!D§ & b2Contact.§'!I§));
                                                         if(_loc11_)
                                                         {
                                                            addr160:
                                                            if(§§pop())
                                                            {
                                                               if(_loc11_ || _loc1_)
                                                               {
                                                                  §§push(_loc5_.§,!5§(_loc4_));
                                                                  if(_loc11_)
                                                                  {
                                                                     addr173:
                                                                     §§push(false);
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        addr181:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr184:
                                                                              _loc9_ = _loc1_;
                                                                              _loc1_ = _loc9_.§'!;§();
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 this.§"G§(_loc9_);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           addr245:
                                                                           _loc6_ = _loc2_.§;1§;
                                                                           _loc7_ = _loc3_.§;1§;
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(this.§%%§.§ V§(_loc6_,_loc7_));
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    if(_loc11_ || this)
                                                                                    {
                                                                                       addr279:
                                                                                       if(_loc8_ == false)
                                                                                       {
                                                                                          if(_loc10_ && this)
                                                                                          {
                                                                                             addr322:
                                                                                             _loc1_ = _loc1_.§'!;§();
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc1_.§%!-§(this.§'!j§);
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                    }
                                                                                    _loc9_ = _loc1_;
                                                                                    _loc1_ = _loc9_.§'!;§();
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       this.§"G§(_loc9_);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr208:
                                                                           §§push(this.§!!'§.§,!5§(_loc2_,_loc3_));
                                                                           §§push(false);
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           addr217:
                                                                           _loc9_ = _loc1_;
                                                                           _loc1_ = _loc9_.§'!;§();
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              this.§"G§(_loc9_);
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc1_.§]!D§ &= ~b2Contact.§'!I§;
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr133);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr99);
               }
               §§goto(addr114);
            }
            §§goto(addr105);
         }
      }
   }
}
