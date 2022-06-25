package §#I§
{
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §4]§.b2ContactFactory;
   import §>!Z§.§<P§;
   import §>!Z§.b2ContactPoint;
   import §>!Z§.b2DynamicTreeBroadPhase;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const § =§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § =§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §,>§:§<P§;
      
      b2internal var §0!?§:b2Contact;
      
      b2internal var §,l§:int;
      
      b2internal var §?Z§:b2ContactFilter;
      
      b2internal var §;!#§:b2ContactListener;
      
      b2internal var §,!1§:b2ContactFactory;
      
      b2internal var §'!H§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.m_world = null;
               while(true)
               {
                  this.§,l§ = 0;
                  while(!_loc1_)
                  {
                     this.§?Z§ = b2ContactFilter.§^!J§;
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!_loc1_)
                        {
                           return;
                           addr60:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§;!#§ = b2ContactListener.§8d§;
            while(_loc2_ || _loc1_)
            {
               this.§,!1§ = new b2ContactFactory(this.§'!H§);
               while(!(_loc1_ && this))
               {
                  this.§,>§ = new b2DynamicTreeBroadPhase();
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr41);
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §0]§(param1:*, param2:*) : void
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
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§>!3§();
         while(true)
         {
            if(!_loc7_)
            {
               if(!(_loc14_ && this))
               {
                  §§push(_loc6_.§'!F§(_loc5_));
                  if(_loc13_)
                  {
                     §§push(false);
                     if(!(_loc14_ && _loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc14_)
                           {
                              return;
                           }
                           §§goto(addr223);
                        }
                        break;
                     }
                     addr215:
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_ || param1)
                        {
                           §§goto(addr223);
                        }
                     }
                     var _loc8_:b2Contact;
                     _loc3_ = (_loc8_ = this.§,!1§.§1!Y§(_loc3_,_loc4_)).§`!a§();
                     _loc4_ = _loc8_.§2!s§();
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if(_loc13_ || param1)
                     {
                        _loc8_.§+!3§ = null;
                     }
                     loop12:
                     while(true)
                     {
                        _loc8_.§=!8§ = this.m_world.§0!?§;
                        loop13:
                        while(true)
                        {
                           §§push(this.m_world);
                           if(_loc13_)
                           {
                              §§push(§§pop().§0!?§);
                              if(!_loc14_)
                              {
                                 if(§§pop() != null)
                                 {
                                    while(true)
                                    {
                                       §§push(this.m_world);
                                       addr510:
                                       while(true)
                                       {
                                          §§push(§§pop().§0!?§);
                                          addr511:
                                          while(true)
                                          {
                                             §§pop().§+!3§ = _loc8_;
                                             addr513:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr459:
                                       if(!(_loc13_ || param2))
                                       {
                                          continue;
                                       }
                                       addr466:
                                       §§push(_loc8_.§=f§);
                                       if(!(_loc14_ && param1))
                                       {
                                          §§pop().§`!w§ = _loc5_.§0!?§;
                                          loop24:
                                          while(true)
                                          {
                                             §§push(_loc5_.§0!?§);
                                             loop25:
                                             while(true)
                                             {
                                                §§push(null);
                                                loop26:
                                                while(true)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.§0!?§);
                                                         addr427:
                                                         while(true)
                                                         {
                                                            §§pop().§!!m§ = _loc8_.§=f§;
                                                            addr430:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr425:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc5_.§0!?§ = _loc8_.§=f§;
                                                      loop31:
                                                      for(; !(_loc14_ && param2); while(!(_loc14_ && param2))
                                                      {
                                                         §§goto(addr316);
                                                         §§push(_loc6_.§0!?§);
                                                         §§goto(addr279);
                                                      })
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            §§push(_loc8_.§!!a§);
                                                            loop32:
                                                            while(true)
                                                            {
                                                               §§pop().§8!m§ = _loc8_;
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc8_.§!!a§);
                                                                        loop34:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§<!M§ = _loc5_;
                                                                           if(!_loc13_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr556:
                                                                           if(_loc14_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc8_.§!!a§);
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              if(_loc14_ && param1)
                                                                              {
                                                                                 continue loop34;
                                                                              }
                                                                              if(_loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().§!!m§ = null;
                                                                              loop36:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue loop35;
                                                                                 }
                                                                                 continue loop12;
                                                                                 addr346:
                                                                                 if(!(_loc13_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc13_ || param2)
                                                                                 {
                                                                                    loop37:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_.§0!?§);
                                                                                       if(_loc14_ && param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                break loop33;
                                                                                             }
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§pop().§!!m§ = _loc8_.§!!a§;
                                                                                          }
                                                                                          continue loop25;
                                                                                          addr316:
                                                                                       }
                                                                                       §§push(null);
                                                                                       if(_loc14_ && param2)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       loop39:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_.§0!?§ = _loc8_.§!!a§;
                                                                                          if(_loc14_ && this)
                                                                                          {
                                                                                             break loop36;
                                                                                          }
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             addr279:
                                                                                             if(_loc13_ || param1)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   var _loc11_:*;
                                                                                                   §§push((_loc11_ = this.m_world).§,l§);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   var _loc12_:* = §§pop();
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr537:
                                                                                                }
                                                                                                continue loop37;
                                                                                                if(_loc13_ || this)
                                                                                                {
                                                                                                   _loc11_.§,l§ = _loc12_;
                                                                                                }
                                                                                                break loop36;
                                                                                             }
                                                                                             continue loop31;
                                                                                          }
                                                                                          addr323:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc13_ || this))
                                                                                             {
                                                                                                break loop39;
                                                                                             }
                                                                                             continue loop39;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc13_ || this)
                                                                                          {
                                                                                             §§goto(addr459);
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.§=f§);
                                                                                          addr470:
                                                                                          addr483:
                                                                                          loop20:
                                                                                          while(_loc13_ || _loc3_)
                                                                                          {
                                                                                             §§pop().§<!M§ = _loc6_;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.§=f§);
                                                                                                addr448:
                                                                                                while(!_loc14_)
                                                                                                {
                                                                                                   §§pop().§!!m§ = null;
                                                                                                   §§goto(addr452);
                                                                                                   §§goto(addr466);
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§8!m§ = _loc8_;
                                                                                             continue loop19;
                                                                                             §§goto(addr470);
                                                                                          }
                                                                                       }
                                                                                       addr452:
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                    continue loop26;
                                                                                 }
                                                                                 §§goto(addr513);
                                                                                 §§goto(addr483);
                                                                              }
                                                                              §§goto(addr556);
                                                                           }
                                                                           continue loop32;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr479);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr425);
                                                                  }
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                         }
                                                         while(_loc13_)
                                                         {
                                                            §§goto(addr483);
                                                            §§push(_loc8_.§=f§);
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr448);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.m_world);
                                    if(!_loc14_)
                                    {
                                       if(_loc13_)
                                       {
                                          §§pop().§0!?§ = _loc8_;
                                          §§goto(addr495);
                                       }
                                       §§goto(addr510);
                                    }
                                    break;
                                    §§goto(addr513);
                                 }
                                 §§goto(addr537);
                              }
                              §§goto(addr511);
                           }
                           §§goto(addr537);
                        }
                     }
                  }
                  addr214:
                  §§goto(addr215);
                  §§push(false);
               }
               addr223:
               return;
            }
            if(_loc7_.§<!M§ != _loc5_)
            {
               continue;
            }
            if(_loc14_ && param2)
            {
               break;
            }
            _loc9_ = _loc7_.§8!m§.§`!a§();
            _loc10_ = _loc7_.§8!m§.§2!s§();
            if(_loc13_ || param1)
            {
               §§push(_loc9_ == _loc3_);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr174:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr175:
                        while(true)
                        {
                           §§pop();
                           addr176:
                           while(true)
                           {
                              §§push(_loc10_ == _loc4_);
                           }
                        }
                        addr175:
                     }
                     addr159:
                     while(true)
                     {
                        addr160:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr161:
                              return;
                           }
                           addr129:
                           while(true)
                           {
                              §§push(_loc9_ == _loc4_);
                              continue loop1;
                           }
                           §§goto(addr175);
                        }
                     }
                  }
               }
            }
            §§goto(addr176);
         }
         §§goto(addr214);
         §§push(this.§?Z§.§'!F§(_loc3_,_loc4_));
      }
      
      public function §-!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§,>§.§9N§(this.§0]§);
         }
      }
      
      public function §=_§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§`!a§();
         var _loc3_:b2Fixture = param1.§2!s§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc9_)
         {
            if(param1.§>5§())
            {
               loop0:
               while(true)
               {
                  this.§;!#§.EndContact(param1);
                  addr340:
                  while(true)
                  {
                  }
                  loop12:
                  while(true)
                  {
                     if(_loc9_ && param1)
                     {
                        continue loop0;
                     }
                     §§push(param1.§=f§);
                     loop13:
                     while(true)
                     {
                        §§push(§§pop().§!!m§);
                        loop14:
                        while(true)
                        {
                           §§push(param1.§=f§.§`!w§);
                           loop15:
                           while(true)
                           {
                              §§pop().§`!w§ = §§pop();
                              loop16:
                              while(!_loc9_)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    §§push(param1.§=f§);
                                    loop18:
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(§§pop().§`!w§);
                                             loop19:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1.§=f§);
                                                      addr245:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§`!w§);
                                                         addr246:
                                                         while(true)
                                                         {
                                                            §§push(param1.§=f§.§!!m§);
                                                            addr249:
                                                            while(true)
                                                            {
                                                               §§pop().§!!m§ = §§pop();
                                                               addr250:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr243:
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§=f§);
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() == _loc4_.§0!?§)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            addr221:
                                                            if(!(_loc9_ && this))
                                                            {
                                                               _loc4_.§0!?§ = param1.§=f§.§`!w§;
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  addr177:
                                                                  addr255:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§!!a§);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop().§!!m§);
                                                                        if(_loc8_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§!!a§);
                                                                                       addr192:
                                                                                       loop37:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§!!m§);
                                                                                          addr193:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§push(param1.§!!a§.§`!w§);
                                                                                             if(_loc9_ && this)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             §§pop().§`!w§ = §§pop();
                                                                                             loop36:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr208:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.§!!a§);
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop().§`!w§);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            §§goto(addr246);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§!!a§.§!!m§);
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  §§pop().§!!m§ = §§pop();
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr62:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§!!a§);
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    if(§§pop() == _loc5_.§0!?§)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             _loc5_.§0!?§ = param1.§!!a§.§`!w§;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr105:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr243);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr366);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§,!1§.§=_§(param1);
                                                                                                                                       if(_loc8_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr366);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr138:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                    addr138:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                              addr62:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr322:
                                                                                                                           }
                                                                                                                           loop40:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr292:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§=!8§);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§=!8§);
                                                                                                                                          addr300:
                                                                                                                                          §§goto(addr279);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param1 == this.m_world.§0!?§)
                                                                                                                                       {
                                                                                                                                          addr279:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§+!3§ = param1.§+!3§;
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr366);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr279:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             this.m_world.§0!?§ = param1.§=!8§;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr251:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§=f§);
                                                                                                                                                   break loop18;
                                                                                                                                                }
                                                                                                                                                continue loop33;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr366);
                                                                                                                                       }
                                                                                                                                       §§goto(addr251);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr300);
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr366);
                                                                                                                        }
                                                                                                                        §§goto(addr279);
                                                                                                                     }
                                                                                                                     §§goto(addr291);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr249);
                                                                                                      }
                                                                                                      §§goto(addr138);
                                                                                                      §§goto(addr208);
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                   addr106:
                                                                                                }
                                                                                                §§goto(addr250);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr190:
                                                                                 }
                                                                                 addr366:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr106);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                     §§goto(addr192);
                                                                     continue loop26;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                               }
                                                               addr233:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1.§+!3§);
                                                                  addr319:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§=!8§ = param1.§=!8§;
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               addr317:
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                continue loop18;
                                             }
                                          }
                                          break;
                                       }
                                       continue loop13;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr255);
                                    }
                                 }
                              }
                              §§goto(addr340);
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(param1.§+!3§);
               if(_loc8_ || _loc2_)
               {
                  if(§§pop())
                  {
                     §§goto(addr317);
                  }
                  §§goto(addr292);
               }
               §§goto(addr319);
               §§goto(addr340);
            }
         }
         §§goto(addr190);
      }
      
      public function §7@§() : void
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
         var _loc1_:b2Contact = this.m_world.§0!?§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§`!a§();
            _loc3_ = _loc1_.§2!s§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!_loc11_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc10_ || _loc1_)
               {
                  §§push(false);
                  if(_loc10_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc11_ && this))
                     {
                        §§push(§§pop());
                        if(_loc10_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc10_)
                              {
                                 §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!(_loc11_ && this))
                                    {
                                       addr107:
                                       §§push(false);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc10_)
                                          {
                                             addr113:
                                             if(§§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   _loc1_ = _loc1_.§?!^§();
                                                   continue;
                                                }
                                                addr139:
                                                §§push(_loc5_.§'!F§(_loc4_));
                                                if(_loc10_ || _loc3_)
                                                {
                                                   addr149:
                                                   §§push(false);
                                                   if(_loc10_)
                                                   {
                                                      addr152:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            _loc1_ = (_loc9_ = _loc1_).§?!^§();
                                                            if(!_loc11_)
                                                            {
                                                               this.§=_§(_loc9_);
                                                            }
                                                            continue;
                                                         }
                                                         addr203:
                                                         _loc6_ = _loc2_.§8""§;
                                                         _loc7_ = _loc3_.§8""§;
                                                         if(!_loc11_)
                                                         {
                                                            §§push(this.§,>§.§]I§(_loc6_,_loc7_));
                                                            if(!_loc11_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  addr228:
                                                                  §§push(§§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     addr232:
                                                                     §§push(false);
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        addr251:
                                                                        _loc1_ = (_loc9_ = _loc1_).§?!^§();
                                                                        if(!_loc11_)
                                                                        {
                                                                           this.§=_§(_loc9_);
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc1_.§3!r§(this.§;!#§);
                                                                  }
                                                                  _loc1_ = _loc1_.§?!^§();
                                                                  continue;
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      else
                                                      {
                                                         addr173:
                                                         §§push(this.§?Z§.§'!F§(_loc2_,_loc3_));
                                                         §§push(false);
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         addr182:
                                                         _loc1_ = (_loc9_ = _loc1_).§?!^§();
                                                         if(_loc10_)
                                                         {
                                                            this.§=_§(_loc9_);
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc1_.§[B§ &= ~b2Contact.§]!Y§;
                                                   }
                                                }
                                                §§goto(addr173);
                                             }
                                             else if(_loc1_.§[B§ & b2Contact.§]!Y§)
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr203);
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr113);
                        }
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr152);
               }
               §§goto(addr173);
            }
            §§goto(addr182);
         }
      }
   }
}
