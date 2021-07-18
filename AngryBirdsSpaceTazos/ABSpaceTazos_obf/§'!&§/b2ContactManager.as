package §'!&§
{
   import §3c§.§>!e§;
   import §3c§.b2ContactPoint;
   import §3c§.b2DynamicTreeBroadPhase;
   import §=!n§.b2Contact;
   import §=!n§.b2ContactEdge;
   import §=!n§.b2ContactFactory;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §#,§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#,§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §2"$§:§>!e§;
      
      b2internal var §1!Z§:b2Contact;
      
      b2internal var §3!G§:int;
      
      b2internal var §?"8§:b2ContactFilter;
      
      b2internal var §0Q§:b2ContactListener;
      
      b2internal var §2!P§:b2ContactFactory;
      
      b2internal var § B§;
      
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
               while(_loc1_ || _loc1_)
               {
                  this.§0Q§ = b2ContactListener.§,!6§;
                  loop4:
                  while(_loc1_)
                  {
                     this.§2!P§ = new b2ContactFactory(this.§ B§);
                     while(!(_loc2_ && this))
                     {
                        this.§2"$§ = new b2DynamicTreeBroadPhase();
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              addr32:
                              if(_loc2_ && this)
                              {
                                 while(true)
                                 {
                                    this.§?"8§ = b2ContactFilter.§'!7§;
                                    break loop4;
                                    §§goto(addr32);
                                 }
                                 addr100:
                              }
                              return;
                           }
                           continue loop4;
                        }
                     }
                     while(true)
                     {
                        this.§3!G§ = 0;
                        §§goto(addr100);
                        §§goto(addr57);
                     }
                     addr57:
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §;X§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(!(_loc14_ && param2))
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc13_)
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§<!r§();
         loop0:
         while(true)
         {
            if(_loc7_)
            {
               if(_loc7_.§1!>§ == _loc5_)
               {
                  if(!_loc13_)
                  {
                     break;
                  }
                  _loc9_ = _loc7_.§%!b§.§'J§();
                  _loc10_ = _loc7_.§%!b§.§#"%§();
               }
               continue;
               if(_loc13_)
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
                              addr146:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr145:
                        }
                        while(true)
                        {
                           loop6:
                           for(; !§§pop(); if(!(_loc13_ || this))
                           {
                              continue;
                           },§§goto(addr96))
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(_loc9_ == _loc4_);
                                 if(!_loc14_)
                                 {
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop());
                                       if(_loc14_)
                                       {
                                          continue loop2;
                                       }
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(§§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                if(_loc13_ || param1)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr109);
                                                   }
                                                   break loop6;
                                                }
                                                while(!_loc14_)
                                                {
                                                   §§push(_loc10_ == _loc3_);
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      continue loop6;
                                                      continue loop8;
                                                   }
                                                   §§pop();
                                                }
                                             }
                                             else if(true)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          continue loop0;
                                          addr96:
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr145);
                                    }
                                 }
                                 while(!_loc14_)
                                 {
                                    §§goto(addr126);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr146);
                           }
                           if(_loc13_)
                           {
                              break;
                           }
                           §§goto(addr146);
                        }
                        return;
                     }
                  }
               }
               addr109:
               return;
            }
            if(!(_loc14_ && param2))
            {
               §§push(_loc6_.§!!Z§(_loc5_));
               if(!_loc14_)
               {
                  §§push(false);
                  if(_loc13_ || param1)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_)
                        {
                           break;
                        }
                        addr184:
                        §§push(this.§?"8§.§!!Z§(_loc3_,_loc4_));
                        §§push(false);
                     }
                     §§goto(addr184);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc14_ && param2))
                     {
                        return;
                     }
                  }
                  var _loc8_:b2Contact;
                  _loc3_ = (_loc8_ = this.§2!P§.§]H§(_loc3_,_loc4_)).§'J§();
                  _loc4_ = _loc8_.§#"%§();
                  _loc5_ = _loc3_.m_body;
                  _loc6_ = _loc4_.m_body;
                  if(_loc13_)
                  {
                     _loc8_.§20§ = null;
                     _loc8_.§+!o§ = this.m_world.§1!Z§;
                     addr515:
                     addr519:
                     §§push(this.m_world);
                     if(!(_loc14_ && param2))
                     {
                        §§push(§§pop().§1!Z§);
                        if(!(_loc14_ && param2))
                        {
                           if(§§pop() != null)
                           {
                              addr501:
                              §§push(this.m_world);
                              if(_loc13_)
                              {
                                 addr506:
                                 §§pop().§1!Z§.§20§ = _loc8_;
                                 addr508:
                                 §§push(this.m_world);
                                 if(!_loc14_)
                                 {
                                    §§pop().§1!Z§ = _loc8_;
                                    addr470:
                                    _loc8_.§?s§.§%!b§ = _loc8_;
                                    addr472:
                                    addr480:
                                    §§push(_loc8_.§?s§);
                                    if(!(_loc14_ && this))
                                    {
                                       §§pop().§1!>§ = _loc6_;
                                       addr466:
                                       §§push(_loc8_.§?s§);
                                       if(_loc13_ || param2)
                                       {
                                          §§pop().§8!$§ = null;
                                          addr446:
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(_loc8_.§?s§);
                                             if(!(_loc14_ && this))
                                             {
                                                §§pop().§ X§ = _loc5_.§1!Z§;
                                                addr419:
                                                if(_loc13_ || _loc3_)
                                                {
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(_loc5_.§1!Z§);
                                                      if(!_loc14_)
                                                      {
                                                         addr390:
                                                         if(§§pop() != null)
                                                         {
                                                            addr391:
                                                            if(_loc13_ || this)
                                                            {
                                                               addr400:
                                                               _loc5_.§1!Z§.§8!$§ = _loc8_.§?s§;
                                                               if(!_loc14_)
                                                               {
                                                                  addr378:
                                                                  _loc5_.§1!Z§ = _loc8_.§?s§;
                                                                  addr368:
                                                                  _loc8_.§ E§.§%!b§ = _loc8_;
                                                                  addr383:
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     addr351:
                                                                     §§push(_loc8_.§ E§);
                                                                     if(_loc13_)
                                                                     {
                                                                        §§pop().§1!>§ = _loc5_;
                                                                        addr355:
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(_loc13_ || param1)
                                                                           {
                                                                              addr345:
                                                                              _loc8_.§ E§.§8!$§ = null;
                                                                              addr347:
                                                                              §§push(_loc8_.§ E§);
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(!(_loc14_ && _loc3_))
                                                                                 {
                                                                                    §§pop().§ X§ = _loc6_.§1!Z§;
                                                                                    addr320:
                                                                                    if(_loc13_ || param2)
                                                                                    {
                                                                                       if(_loc13_ || param2)
                                                                                       {
                                                                                          if(!(_loc14_ && param2))
                                                                                          {
                                                                                             addr234:
                                                                                             §§push(_loc6_.§1!Z§);
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc13_ || this)
                                                                                                {
                                                                                                   §§push(null);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         if(!(_loc14_ && this))
                                                                                                         {
                                                                                                            if(_loc13_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc13_ || param1)
                                                                                                               {
                                                                                                                  if(_loc13_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        addr292:
                                                                                                                        _loc6_.§1!Z§.§8!$§ = _loc8_.§ E§;
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(!(_loc14_ && this))
                                                                                                                           {
                                                                                                                              addr225:
                                                                                                                              _loc6_.§1!Z§ = _loc8_.§ E§;
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr234);
                                                                                                                                 }
                                                                                                                                 addr522:
                                                                                                                                 var _loc11_:*;
                                                                                                                                 §§push((_loc11_ = this.m_world).§3!G§);
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                 }
                                                                                                                                 var _loc12_:* = §§pop();
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    _loc11_.§3!G§ = _loc12_;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr546);
                                                                                                                           }
                                                                                                                           §§goto(addr472);
                                                                                                                        }
                                                                                                                        §§goto(addr546);
                                                                                                                     }
                                                                                                                     §§goto(addr383);
                                                                                                                  }
                                                                                                                  §§goto(addr355);
                                                                                                               }
                                                                                                               §§goto(addr347);
                                                                                                            }
                                                                                                            §§goto(addr320);
                                                                                                         }
                                                                                                         addr546:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr225);
                                                                                                   }
                                                                                                   §§goto(addr390);
                                                                                                }
                                                                                                §§goto(addr400);
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          §§goto(addr508);
                                                                                       }
                                                                                       §§goto(addr446);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              §§goto(addr345);
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr501);
                                                               }
                                                               §§goto(addr480);
                                                            }
                                                            §§goto(addr419);
                                                         }
                                                         §§goto(addr378);
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   §§goto(addr515);
                                                }
                                             }
                                             §§goto(addr466);
                                          }
                                          §§goto(addr519);
                                       }
                                       §§goto(addr472);
                                    }
                                    §§goto(addr470);
                                 }
                                 addr505:
                              }
                              §§goto(addr522);
                           }
                           §§goto(addr508);
                        }
                        §§goto(addr506);
                     }
                     §§goto(addr505);
                  }
                  §§goto(addr506);
               }
            }
            §§goto(addr184);
         }
      }
      
      public function §^!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§2"$§.§ J§(this.§;X§);
         }
      }
      
      public function §^!a§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§'J§();
         var _loc3_:b2Fixture = param1.§#"%§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!(_loc8_ && this))
         {
            if(param1.§]Q§())
            {
               while(true)
               {
                  this.§0Q§.EndContact(param1);
                  addr341:
                  while(true)
                  {
                  }
               }
               addr337:
            }
            loop2:
            while(true)
            {
               §§push(param1.§20§);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1.§20§);
                        addr330:
                        while(true)
                        {
                           §§pop().§+!o§ = param1.§+!o§;
                           addr333:
                           while(true)
                           {
                           }
                        }
                        loop13:
                        while(true)
                        {
                           if(!(_loc9_ || this))
                           {
                              continue loop3;
                           }
                           §§push(param1.§?s§);
                           loop14:
                           while(true)
                           {
                              §§push(§§pop().§ X§);
                              loop31:
                              while(true)
                              {
                                 §§push(param1.§?s§.§8!$§);
                                 loop32:
                                 while(true)
                                 {
                                    §§pop().§8!$§ = §§pop();
                                    loop33:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(param1.§?s§);
                                          if(_loc8_)
                                          {
                                             continue loop14;
                                          }
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(_loc9_)
                                             {
                                                if(§§pop() == _loc4_.§1!Z§)
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         _loc4_.§1!Z§ = param1.§?s§.§ X§;
                                                         while(true)
                                                         {
                                                            addr170:
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(param1.§ E§);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop().§8!$§);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§ E§);
                                                                              addr193:
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§8!$§);
                                                                                 addr194:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§ E§.§ X§);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§pop().§ X§ = §§pop();
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          addr109:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§ E§);
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                §§push(§§pop().§ X§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc8_ && _loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(param1.§ E§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§ X§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ && _loc2_)
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     §§push(param1.§ E§.§8!$§);
                                                                                                                     if(!(_loc9_ || this))
                                                                                                                     {
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                     §§pop().§8!$§ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ && param1)
                                                                                                                        {
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop31;
                                                                                                                  addr142:
                                                                                                               }
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(_loc9_ || this)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.m_world.§1!Z§ = param1.§+!o§;
                                                                                                                  addr304:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr262:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§?s§);
                                                                                                                        break loop15;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr286:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(param1 == this.m_world.§1!Z§)
                                                                                                                  {
                                                                                                                     §§goto(addr292);
                                                                                                                  }
                                                                                                                  §§goto(addr262);
                                                                                                                  continue loop38;
                                                                                                               }
                                                                                                            }
                                                                                                            addr292:
                                                                                                            addr321:
                                                                                                         }
                                                                                                         addr101:
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ || param1))
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§2!P§.§^!a§(param1);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr372:
                                                                                                               addr372:
                                                                                                               addr372:
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§goto(addr68);
                                                                                                }
                                                                                                §§goto(addr142);
                                                                                             }
                                                                                             §§goto(addr134);
                                                                                             continue loop29;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    loop35:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§ X§ = §§pop();
                                                                                       addr285:
                                                                                       loop36:
                                                                                       while(true)
                                                                                       {
                                                                                          addr233:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§?s§);
                                                                                             addr236:
                                                                                             loop12:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().§ X§);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   continue loop31;
                                                                                                }
                                                                                                addr280:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§8!$§);
                                                                                                   addr281:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                             }
                                                                                             continue loop36;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ && this)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop33;
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       _loc5_.§1!Z§ = param1.§ E§.§ X§;
                                                                                       §§goto(addr101);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§+!o§);
                                                                                    addr318:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§20§ = param1.§20§;
                                                                                       §§goto(addr321);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr55);
                                                                              }
                                                                              §§goto(addr193);
                                                                           }
                                                                        }
                                                                        §§goto(addr109);
                                                                     }
                                                                     §§goto(addr281);
                                                                  }
                                                                  §§goto(addr194);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr170);
                                             }
                                             break;
                                          }
                                          §§goto(addr236);
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop().§8!$§);
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr280);
                                                      §§push(param1.§?s§);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr372);
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr304);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr333);
                     }
                  }
                  while(true)
                  {
                     §§push(param1.§+!o§);
                     if(_loc9_ || this)
                     {
                        if(§§pop())
                        {
                           §§goto(addr316);
                        }
                        §§goto(addr286);
                     }
                     §§goto(addr318);
                     §§goto(addr333);
                  }
               }
               §§goto(addr330);
            }
         }
         §§goto(addr299);
      }
      
      public function §%!L§() : void
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
         var _loc1_:b2Contact = this.m_world.§1!Z§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§'J§();
            _loc3_ = _loc1_.§#"%§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_)
               {
                  §§push(false);
                  if(!(_loc10_ && _loc1_))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc11_)
                     {
                        §§push(§§pop());
                        if(!(_loc10_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 §§pop();
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    addr99:
                                    §§push(_loc5_.IsAwake());
                                    if(_loc11_)
                                    {
                                       addr103:
                                       §§push(false);
                                       if(_loc11_)
                                       {
                                          addr106:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr114:
                                             if(§§pop())
                                             {
                                                if(_loc11_ || _loc3_)
                                                {
                                                   _loc1_ = _loc1_.§`!y§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§0" § & b2Contact.§+a§)
                                                {
                                                   if(!(_loc10_ && this))
                                                   {
                                                      addr150:
                                                      §§push(_loc5_.§!!Z§(_loc4_));
                                                      if(_loc11_)
                                                      {
                                                         addr155:
                                                         §§push(false);
                                                         if(!_loc10_)
                                                         {
                                                            addr158:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  addr166:
                                                                  _loc1_ = (_loc9_ = _loc1_).§`!y§();
                                                                  if(!_loc10_)
                                                                  {
                                                                     this.§^!a§(_loc9_);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr193:
                                                                  _loc1_ = (_loc9_ = _loc1_).§`!y§();
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     this.§^!a§(_loc9_);
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            §§push(this.§?"8§.§!!Z§(_loc2_,_loc3_));
                                                            §§goto(addr193);
                                                         }
                                                         addr185:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc11_ || _loc1_)
                                                            {
                                                               §§goto(addr193);
                                                            }
                                                            else
                                                            {
                                                               addr219:
                                                               _loc6_ = _loc2_.§@L§;
                                                               _loc7_ = _loc3_.§@L§;
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(this.§2"$§.§5"0§(_loc6_,_loc7_));
                                                                  if(_loc11_ || _loc1_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc10_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           addr253:
                                                                           §§push(false);
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              addr257:
                                                                              _loc1_ = (_loc9_ = _loc1_).§`!y§();
                                                                              if(_loc11_ || _loc1_)
                                                                              {
                                                                                 this.§^!a§(_loc9_);
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc1_.§]P§(this.§0Q§);
                                                                        }
                                                                        _loc1_ = _loc1_.§`!y§();
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.§0" § &= ~b2Contact.§+a§;
                                                            §§goto(addr219);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr185);
                                                      §§push(false);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr219);
                                             }
                                             §§goto(addr193);
                                          }
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr158);
               }
               §§goto(addr155);
            }
            §§goto(addr99);
         }
      }
   }
}
