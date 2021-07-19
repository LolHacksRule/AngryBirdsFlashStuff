package §0"!§
{
   import §!§.§5!u§;
   import §!§.b2ContactPoint;
   import §!§.b2DynamicTreeBroadPhase;
   import §'!_§.b2internal;
   import §23§.b2Contact;
   import §23§.b2ContactEdge;
   import §23§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §6!a§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6!a§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §"V§:§5!u§;
      
      b2internal var § if§:b2Contact;
      
      b2internal var §^" §:int;
      
      b2internal var §&!W§:b2ContactFilter;
      
      b2internal var §>l§:b2ContactListener;
      
      b2internal var §>W§:b2ContactFactory;
      
      b2internal var §;!b§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.m_world = null;
               loop1:
               for(; _loc1_ || this; if(!(_loc1_ || _loc2_))
               {
                  continue;
               },§§goto(addr69))
               {
                  this.§^" § = 0;
                  loop2:
                  while(true)
                  {
                     this.§&!W§ = b2ContactFilter.§]2§;
                     loop3:
                     do
                     {
                        this.§>l§ = b2ContactListener.§7j§;
                        while(!_loc2_)
                        {
                           this.§>W§ = new b2ContactFactory(this.§;!b§);
                           while(_loc1_ || this)
                           {
                              continue loop1;
                              this.§"V§ = new b2DynamicTreeBroadPhase();
                              if(_loc1_ || _loc2_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                        continue loop2;
                     }
                     while(_loc2_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §2!o§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(!_loc14_)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc13_ || param1)
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§@d§();
         loop0:
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc13_)
               {
                  §§push(_loc6_.§^m§(_loc5_));
                  if(_loc13_ || this)
                  {
                     §§push(false);
                     if(!(_loc14_ && _loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        addr199:
                        §§push(this.§&!W§.§^m§(_loc3_,_loc4_));
                        §§push(false);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_)
                        {
                           §§goto(addr203);
                        }
                     }
                     var _loc8_:b2Contact;
                     _loc3_ = (_loc8_ = this.§>W§.§'!D§(_loc3_,_loc4_)).§6!'§();
                     _loc4_ = _loc8_.§]O§();
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if(_loc13_ || _loc3_)
                     {
                        _loc8_.§,!>§ = null;
                        _loc8_.§6!c§ = this.m_world.§ if§;
                        addr524:
                        addr520:
                        §§push(this.m_world);
                        if(!_loc14_)
                        {
                           §§push(§§pop().§ if§);
                           if(!(_loc14_ && this))
                           {
                              if(§§pop() != null)
                              {
                                 addr511:
                                 this.m_world.§ if§.§,!>§ = _loc8_;
                                 addr508:
                                 addr510:
                              }
                              §§push(this.m_world);
                              if(!(_loc14_ && param2))
                              {
                                 if(!(_loc14_ && this))
                                 {
                                    §§pop().§ if§ = _loc8_;
                                    addr468:
                                    _loc8_.§81§.§@"6§ = _loc8_;
                                    addr470:
                                    addr492:
                                    if(_loc13_)
                                    {
                                       addr462:
                                       _loc8_.§81§.§"l§ = _loc6_;
                                       addr464:
                                       §§push(_loc8_.§81§);
                                       if(!_loc14_)
                                       {
                                          if(!(_loc14_ && this))
                                          {
                                             §§pop().§3!B§ = null;
                                             addr451:
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(_loc8_.§81§);
                                                if(_loc13_ || param1)
                                                {
                                                   §§pop().next = _loc5_.§ if§;
                                                   addr412:
                                                   addr436:
                                                   if(_loc5_.§ if§ != null)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            addr419:
                                                            _loc5_.§ if§.§3!B§ = _loc8_.§81§;
                                                            _loc5_.§ if§ = _loc8_.§81§;
                                                            addr422:
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               addr381:
                                                               _loc8_.§!!'§.§@"6§ = _loc8_;
                                                               if(!(_loc14_ && param2))
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr375:
                                                                        _loc8_.§!!'§.§"l§ = _loc5_;
                                                                        addr377:
                                                                        §§push(_loc8_.§!!'§);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§pop().§3!B§ = null;
                                                                           addr369:
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(_loc8_.§!!'§);
                                                                              if(!(_loc14_ && _loc3_))
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§pop().next = _loc6_.§ if§;
                                                                                    addr263:
                                                                                    addr361:
                                                                                    §§push(_loc6_.§ if§);
                                                                                    if(_loc13_ || param2)
                                                                                    {
                                                                                       if(!(_loc14_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc14_ && this))
                                                                                          {
                                                                                             §§push(null);
                                                                                             if(_loc13_ || _loc3_)
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   addr306:
                                                                                                   if(!(_loc14_ && param2))
                                                                                                   {
                                                                                                      if(!(_loc14_ && param2))
                                                                                                      {
                                                                                                         if(!(_loc14_ && param2))
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr331:
                                                                                                               _loc6_.§ if§.§3!B§ = _loc8_.§!!'§;
                                                                                                               if(_loc13_ || param1)
                                                                                                               {
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        addr235:
                                                                                                                        _loc6_.§ if§ = _loc8_.§!!'§;
                                                                                                                        if(_loc13_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!(_loc14_ && param1))
                                                                                                                           {
                                                                                                                              if(!(_loc14_ && param2))
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr263);
                                                                                                                                 }
                                                                                                                                 addr527:
                                                                                                                                 var _loc11_:*;
                                                                                                                                 §§push((_loc11_ = this.m_world).§^" §);
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                 }
                                                                                                                                 var _loc12_:* = §§pop();
                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                 {
                                                                                                                                    _loc11_.§^" § = _loc12_;
                                                                                                                                 }
                                                                                                                                 §§goto(addr556);
                                                                                                                              }
                                                                                                                              §§goto(addr524);
                                                                                                                           }
                                                                                                                           §§goto(addr306);
                                                                                                                        }
                                                                                                                        addr556:
                                                                                                                        return;
                                                                                                                        addr345:
                                                                                                                     }
                                                                                                                     §§goto(addr451);
                                                                                                                  }
                                                                                                                  §§goto(addr369);
                                                                                                               }
                                                                                                               §§goto(addr556);
                                                                                                            }
                                                                                                            §§goto(addr470);
                                                                                                         }
                                                                                                         §§goto(addr422);
                                                                                                      }
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                                §§goto(addr235);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr412);
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§goto(addr377);
                                                                           }
                                                                           §§goto(addr436);
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     §§goto(addr492);
                                                                  }
                                                                  §§goto(addr464);
                                                               }
                                                            }
                                                            §§goto(addr556);
                                                         }
                                                         §§goto(addr520);
                                                      }
                                                   }
                                                   §§goto(addr419);
                                                }
                                                §§goto(addr464);
                                             }
                                             §§goto(addr508);
                                          }
                                          §§goto(addr468);
                                       }
                                       §§goto(addr462);
                                    }
                                    §§goto(addr508);
                                 }
                                 §§goto(addr510);
                              }
                              §§goto(addr527);
                           }
                           §§goto(addr511);
                        }
                        §§goto(addr527);
                     }
                     §§goto(addr345);
                  }
                  §§goto(addr199);
               }
               addr203:
               return;
            }
            if(_loc7_.§"l§ != _loc5_)
            {
               continue;
            }
            if(!_loc13_)
            {
               break;
            }
            _loc9_ = _loc7_.§@"6§.§6!'§();
            _loc10_ = _loc7_.§@"6§.§]O§();
            if(_loc13_ || this)
            {
               §§push(_loc9_ == _loc3_);
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
                           addr161:
                           while(true)
                           {
                              §§push(_loc10_ == _loc4_);
                           }
                        }
                        addr160:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr153:
                           }
                           loop7:
                           while(true)
                           {
                              §§push(_loc9_ == _loc4_);
                              if(!(_loc14_ && this))
                              {
                                 §§push(§§pop());
                                 if(_loc14_ && this)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    while(§§pop())
                                    {
                                       if(_loc13_ || this)
                                       {
                                          return;
                                       }
                                       if(_loc13_ || param2)
                                       {
                                          if(_loc13_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          addr154:
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       else
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc13_)
                                             {
                                                if(_loc13_)
                                                {
                                                   §§push(_loc10_ == _loc3_);
                                                   if(_loc13_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr139:
                                                   while(true)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                    continue loop0;
                                    addr98:
                                 }
                              }
                              §§goto(addr139);
                           }
                           continue loop2;
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr154);
         }
      }
      
      public function §+!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§"V§.§0!Y§(this.§2!o§);
         }
      }
      
      public function §7!d§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§6!'§();
         var _loc3_:b2Fixture = param1.§]O§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!(_loc9_ && this))
         {
            if(param1.§>k§())
            {
               loop0:
               while(true)
               {
                  this.§>l§.EndContact(param1);
                  addr340:
                  while(true)
                  {
                  }
                  loop17:
                  while(true)
                  {
                     if(!(_loc8_ || _loc3_))
                     {
                        continue loop0;
                     }
                     _loc4_.§ if§ = param1.§81§.next;
                     while(true)
                     {
                        loop19:
                        while(true)
                        {
                           §§push(param1.§!!'§);
                           if(_loc8_ || _loc2_)
                           {
                              §§push(§§pop().§3!B§);
                              if(!_loc9_)
                              {
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop17;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                       if(!_loc9_)
                                       {
                                          addr164:
                                          if(_loc8_ || this)
                                          {
                                             addr183:
                                             §§push(param1.§!!'§);
                                             while(true)
                                             {
                                                §§push(§§pop().§3!B§);
                                                addr184:
                                                while(_loc8_)
                                                {
                                                   §§push(param1.§!!'§.next);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§pop().next = §§pop();
                                                      continue loop17;
                                                   }
                                                   addr288:
                                                   while(true)
                                                   {
                                                      §§pop().next = §§pop();
                                                      while(true)
                                                      {
                                                         addr238:
                                                         while(true)
                                                         {
                                                            §§push(param1.§81§);
                                                            while(!(_loc9_ && param1))
                                                            {
                                                               §§push(§§pop().next);
                                                               if(_loc8_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(param1.§81§);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().next);
                                                                                 addr264:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§81§.§3!B§);
                                                                                    addr267:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§3!B§ = §§pop();
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr272:
                                                                                             break loop14;
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr340);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        addr327:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§,!>§);
                                                                           addr329:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§6!c§ = param1.§6!c§;
                                                                              break loop14;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                     loop36:
                                                                     while(true)
                                                                     {
                                                                        addr302:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§6!c§);
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§6!c§);
                                                                                    addr315:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§,!>§ = param1.§,!>§;
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr366:
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr164);
                                                                                 }
                                                                                 addr313:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(param1 == this.m_world.§ if§)
                                                                                 {
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 §§goto(addr273);
                                                                              }
                                                                           }
                                                                           §§goto(addr315);
                                                                           continue loop36;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§3!B§);
                                                               break loop19;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr238);
                                                }
                                             }
                                             addr183:
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr301);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr84);
                                       }
                                       addr81:
                                    }
                                    §§goto(addr183);
                                 }
                                 break;
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr183);
                        }
                        while(true)
                        {
                           §§goto(addr288);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(param1.§,!>§);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     §§goto(addr327);
                  }
                  §§goto(addr302);
               }
               §§goto(addr329);
               §§goto(addr340);
            }
         }
         §§goto(addr73);
      }
      
      public function §`!w§() : void
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
         var _loc1_:b2Contact = this.m_world.§ if§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§6!'§();
            _loc3_ = _loc1_.§]O§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!_loc11_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc10_)
               {
                  §§push(false);
                  if(!_loc11_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                        if(!(_loc11_ && this))
                        {
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!_loc11_)
                                    {
                                       §§push(false);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             addr103:
                                             if(§§pop())
                                             {
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   addr111:
                                                   _loc1_ = _loc1_.§2!9§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                §§push(Boolean(_loc1_.§1!h§ & b2Contact.§!c§));
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr128:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            addr131:
                                                            §§pop();
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc4_.§&!;§);
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr147:
                                                                     §§push(§§pop());
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        addr165:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr168:
                                                                              §§pop();
                                                                              if(!(_loc11_ && _loc1_))
                                                                              {
                                                                                 §§push(_loc5_.§&!;§);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr180:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr183:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                          }
                                                                                          addr245:
                                                                                          _loc6_ = _loc2_.§^!N§;
                                                                                          _loc7_ = _loc3_.§^!N§;
                                                                                          if(!(_loc11_ && _loc3_))
                                                                                          {
                                                                                             §§push(this.§"V§.§4I§(_loc6_,_loc7_));
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!(_loc11_ && _loc1_))
                                                                                                {
                                                                                                   addr275:
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      addr284:
                                                                                                      §§push(false);
                                                                                                   }
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         _loc1_ = (_loc9_ = _loc1_).§2!9§();
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            this.§7!d§(_loc9_);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr315:
                                                                                                         _loc1_ = _loc1_.§2!9§();
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   _loc1_.§%3§(this.§>l§);
                                                                                                   §§goto(addr315);
                                                                                                   §§goto(addr315);
                                                                                                }
                                                                                                §§goto(addr284);
                                                                                             }
                                                                                             §§goto(addr275);
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    addr215:
                                                                                    if(§§pop() == false)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          _loc1_ = (_loc9_ = _loc1_).§2!9§();
                                                                                          if(!(_loc11_ && _loc3_))
                                                                                          {
                                                                                             this.§7!d§(_loc9_);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc1_.§1!h§ &= ~b2Contact.§!c§;
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                              §§push(_loc5_.§^m§(_loc4_));
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr191:
                                                                                 §§push(false);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr194:
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr197:
                                                                                          _loc1_ = (_loc9_ = _loc1_).§2!9§();
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             this.§7!d§(_loc9_);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§&!W§.§^m§(_loc2_,_loc3_));
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                           }
                                                                           §§goto(addr180);
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                     §§goto(addr180);
                                                                  }
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr165);
               }
               §§goto(addr191);
            }
            §§goto(addr197);
         }
      }
   }
}
