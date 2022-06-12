package §48§
{
   import §!D§.b2Contact;
   import §!D§.b2ContactEdge;
   import §!D§.b2ContactFactory;
   import §4!!§.b2internal;
   import §55§.§0!K§;
   import §55§.b2ContactPoint;
   import §55§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §7$§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7$§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §"!q§:§0!K§;
      
      b2internal var §>"#§:b2Contact;
      
      b2internal var §3M§:int;
      
      b2internal var §1!9§:b2ContactFilter;
      
      b2internal var §&!Y§:b2ContactListener;
      
      b2internal var §=!N§:b2ContactFactory;
      
      b2internal var §"!7§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.m_world = null;
               while(!(_loc2_ && this))
               {
                  this.§1!9§ = b2ContactFilter.§"!$§;
                  loop3:
                  for(; _loc1_ || _loc2_; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },addr42:,if(_loc1_ || this)
                  {
                     return;
                  },while(true)
                  {
                     this.§3M§ = 0;
                     break loop3;
                     §§goto(addr42);
                  },addr120:)
                  {
                     this.§&!Y§ = b2ContactListener.§3!§;
                     while(true)
                     {
                        this.§=!N§ = new b2ContactFactory(this.§"!7§);
                        while(_loc1_ || this)
                        {
                           this.§"!q§ = new b2DynamicTreeBroadPhase();
                           if(!(_loc2_ && this))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function §'=§(param1:*, param2:*) : void
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
               if(_loc14_)
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§0!@§();
         loop0:
         while(true)
         {
            if(_loc7_)
            {
               if(_loc7_.§ `§ == _loc5_)
               {
                  if(_loc13_ && param2)
                  {
                     break;
                  }
                  _loc9_ = _loc7_.§0q§.§5§();
                  _loc10_ = _loc7_.§0q§.§]h§();
                  if(_loc14_)
                  {
                     §§push(_loc9_ == _loc3_);
                     if(!_loc13_)
                     {
                        §§push(§§pop());
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr146:
                              while(true)
                              {
                                 §§pop();
                                 addr147:
                                 while(true)
                                 {
                                    §§push(_loc10_ == _loc4_);
                                 }
                              }
                              addr146:
                           }
                           while(true)
                           {
                              loop3:
                              while(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc9_ == _loc4_);
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc14_)
                                       {
                                          §§push(§§pop());
                                          if(_loc13_)
                                          {
                                             continue loop1;
                                          }
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(_loc10_ == _loc3_);
                                                   if(!_loc13_)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            break;
                                                            addr89:
                                                         }
                                                         while(§§pop())
                                                         {
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop7;
                                                            }
                                                            if(!(_loc13_ && this))
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr89);
                                       }
                                       else
                                       {
                                          §§goto(addr146);
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                              }
                              if(!(_loc13_ && _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr146);
                  }
               }
               continue;
               addr137:
               return;
            }
            if(_loc14_ || param1)
            {
               §§push(_loc6_.§8N§(_loc5_));
               if(_loc14_ || _loc3_)
               {
                  §§push(false);
                  if(_loc14_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc14_ || this)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr196:
                        if(this.§1!9§.§8N§(_loc3_,_loc4_) == false)
                        {
                           if(!(_loc14_ || param2))
                           {
                              addr205:
                              var _loc8_:b2Contact;
                              _loc3_ = (_loc8_ = this.§=!N§.§?!Q§(_loc3_,_loc4_)).§5§();
                              _loc4_ = _loc8_.§]h§();
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(_loc14_ || this)
                              {
                                 _loc8_.§-!Q§ = null;
                                 _loc8_.§%"@§ = this.m_world.§>"#§;
                                 addr531:
                                 addr535:
                                 §§push(this.m_world.§>"#§);
                                 if(!(_loc13_ && param1))
                                 {
                                    if(§§pop() != null)
                                    {
                                       addr512:
                                       this.m_world.§>"#§.§-!Q§ = _loc8_;
                                       addr509:
                                       addr511:
                                    }
                                    §§push(this.m_world);
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       if(_loc14_ || this)
                                       {
                                          if(!(_loc13_ && this))
                                          {
                                             §§pop().§>"#§ = _loc8_;
                                             addr491:
                                             if(_loc14_)
                                             {
                                                if(!_loc13_)
                                                {
                                                   addr462:
                                                   _loc8_.§-v§.§0q§ = _loc8_;
                                                   addr442:
                                                   addr464:
                                                   §§push(_loc8_.§-v§);
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      §§pop().§ `§ = _loc6_;
                                                      addr451:
                                                      if(!(_loc13_ && this))
                                                      {
                                                         addr436:
                                                         _loc8_.§-v§.§[g§ = null;
                                                         addr438:
                                                         §§push(_loc8_.§-v§);
                                                         if(!(_loc13_ && this))
                                                         {
                                                            if(_loc14_ || this)
                                                            {
                                                               §§pop().§5"&§ = _loc5_.§>"#§;
                                                               if(_loc14_ || param2)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        addr388:
                                                                        addr389:
                                                                        if(_loc5_.§>"#§ != null)
                                                                        {
                                                                           addr392:
                                                                           _loc5_.§>"#§.§[g§ = _loc8_.§-v§;
                                                                           addr390:
                                                                        }
                                                                        _loc5_.§>"#§ = _loc8_.§-v§;
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr367:
                                                                           _loc8_.§1a§.§0q§ = _loc8_;
                                                                           addr369:
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              addr359:
                                                                              _loc8_.§1a§.§ `§ = _loc5_;
                                                                              addr361:
                                                                              if(!_loc13_)
                                                                              {
                                                                                 addr349:
                                                                                 §§push(_loc8_.§1a§);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§pop().§[g§ = null;
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(_loc8_.§1a§);
                                                                                       if(_loc14_ || param1)
                                                                                       {
                                                                                          if(_loc14_ || _loc3_)
                                                                                          {
                                                                                             §§pop().§5"&§ = _loc6_.§>"#§;
                                                                                             if(!(_loc13_ && param2))
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr281:
                                                                                                      §§push(_loc6_.§>"#§);
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(null);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr301:
                                                                                                                     §§push(_loc6_.§>"#§);
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§pop().§[g§ = _loc8_.§1a§;
                                                                                                                        addr306:
                                                                                                                        if(_loc14_ || param2)
                                                                                                                        {
                                                                                                                           addr236:
                                                                                                                           _loc6_.§>"#§ = _loc8_.§1a§;
                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc13_ && this))
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!(_loc13_ && this))
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr281);
                                                                                                                                       }
                                                                                                                                       addr538:
                                                                                                                                       var _loc11_:*;
                                                                                                                                       §§push((_loc11_ = this.m_world).§3M§);
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                       }
                                                                                                                                       var _loc12_:* = §§pop();
                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc11_.§3M§ = _loc12_;
                                                                                                                                       }
                                                                                                                                       §§goto(addr557);
                                                                                                                                    }
                                                                                                                                    §§goto(addr390);
                                                                                                                                 }
                                                                                                                                 §§goto(addr369);
                                                                                                                              }
                                                                                                                              §§goto(addr306);
                                                                                                                           }
                                                                                                                           §§goto(addr557);
                                                                                                                        }
                                                                                                                        §§goto(addr361);
                                                                                                                     }
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                               }
                                                                                                               §§goto(addr236);
                                                                                                            }
                                                                                                            §§goto(addr389);
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   §§goto(addr531);
                                                                                                }
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                             §§goto(addr557);
                                                                                          }
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 §§goto(addr359);
                                                                              }
                                                                              §§goto(addr509);
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     §§goto(addr491);
                                                                  }
                                                                  §§goto(addr451);
                                                               }
                                                               addr557:
                                                               return;
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr436);
                                                      }
                                                      §§goto(addr464);
                                                   }
                                                   §§goto(addr462);
                                                }
                                                §§goto(addr535);
                                             }
                                             §§goto(addr509);
                                          }
                                          §§goto(addr531);
                                       }
                                       §§goto(addr511);
                                    }
                                    §§goto(addr538);
                                 }
                                 §§goto(addr512);
                              }
                              §§goto(addr538);
                           }
                        }
                        §§goto(addr205);
                     }
                     return;
                  }
               }
               §§goto(addr196);
            }
            §§goto(addr205);
         }
      }
      
      public function §>!=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§"!q§.§+_§(this.§'=§);
         }
      }
      
      public function §'S§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§5§();
         var _loc3_:b2Fixture = param1.§]h§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc9_)
         {
            if(param1.§[l§())
            {
               while(true)
               {
                  this.§&!Y§.EndContact(param1);
                  addr365:
                  while(true)
                  {
                  }
               }
               addr361:
            }
            loop2:
            while(true)
            {
               §§push(param1.§-!Q§);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§-!Q§);
                        addr344:
                        while(true)
                        {
                           §§pop().§%"@§ = param1.§%"@§;
                           addr347:
                           while(true)
                           {
                           }
                        }
                     }
                     addr342:
                  }
                  loop4:
                  while(true)
                  {
                     §§push(param1.§%"@§);
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§push(param1.§%"@§);
                                 while(true)
                                 {
                                    §§pop().§-!Q§ = param1.§-!Q§;
                                    if(!_loc9_)
                                    {
                                       while(true)
                                       {
                                          if(param1 == this.m_world.§>"#§)
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                this.m_world.§>"#§ = param1.§%"@§;
                                                addr319:
                                                while(true)
                                                {
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   if(!(_loc8_ || param1))
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(param1.§-v§);
                                                   loop29:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§5"&§);
                                                      loop30:
                                                      while(true)
                                                      {
                                                         §§push(param1.§-v§.§[g§);
                                                         loop31:
                                                         while(true)
                                                         {
                                                            §§pop().§[g§ = §§pop();
                                                            loop32:
                                                            while(true)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(param1.§-v§);
                                                                  if(!(_loc8_ || this))
                                                                  {
                                                                     continue loop29;
                                                                  }
                                                                  if(§§pop() == _loc4_.§>"#§)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc4_.§>"#§ = param1.§-v§.§5"&§;
                                                                        addr256:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr251:
                                                                  }
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§1a§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§[g§);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ || _loc2_))
                                                                                    {
                                                                                       break loop5;
                                                                                    }
                                                                                    §§push(param1.§1a§);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§[g§);
                                                                                       addr220:
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.§1a§.§5"&§);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§pop().§5"&§ = §§pop();
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(!(_loc8_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr237:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§1a§);
                                                                                                         if(!(_loc8_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         §§push(§§pop().§5"&§);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc9_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§1a§);
                                                                                                                  if(!(_loc8_ || _loc2_))
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  if(§§pop() == _loc5_.§>"#§)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           _loc5_.§>"#§ = param1.§1a§.§5"&§;
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr251);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ || param1))
                                                                                                                        {
                                                                                                                           addr171:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                           addr171:
                                                                                                                        }
                                                                                                                        if(_loc9_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop32;
                                                                                                                        }
                                                                                                                        if(!(_loc8_ || _loc2_))
                                                                                                                        {
                                                                                                                           break loop13;
                                                                                                                        }
                                                                                                                        addr47:
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 var _loc6_:*;
                                                                                                                                 §§push((_loc6_ = this).§3M§);
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                 }
                                                                                                                                 var _loc7_:* = §§pop();
                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    _loc6_.§3M§ = _loc7_;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr386:
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                              addr386:
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr257:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§-v§);
                                                                                                                           if(!(_loc8_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§5"&§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                                 addr153:
                                                                                                                                 while(!(_loc9_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(param1.§1a§.§[g§);
                                                                                                                                    if(_loc9_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    §§pop().§[g§ = §§pop();
                                                                                                                                    §§goto(addr171);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr270:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr302:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§[g§);
                                                                                                                                 addr303:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§-v§.§5"&§);
                                                                                                                                    break loop27;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr302:
                                                                                                                           }
                                                                                                                           continue loop35;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr307:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§=!N§.§'S§(param1);
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr47);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr386);
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                               addr58:
                                                                                                            }
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(param1.§1a§);
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§goto(addr171);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr153);
                                                                                                         }
                                                                                                         §§goto(addr237);
                                                                                                      }
                                                                                                      continue loop30;
                                                                                                      addr109:
                                                                                                   }
                                                                                                   §§goto(addr342);
                                                                                                }
                                                                                                addr300:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr302);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§5"&§ = §§pop();
                                                                                          §§goto(addr307);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr109);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr319);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§-v§);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop().§[g§);
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr257);
                                                }
                                                §§goto(addr303);
                                             }
                                             §§goto(addr302);
                                             §§goto(addr319);
                                          }
                                       }
                                       addr308:
                                    }
                                    §§goto(addr386);
                                 }
                                 addr330:
                              }
                              else
                              {
                                 §§goto(addr361);
                              }
                           }
                           continue loop2;
                        }
                        §§goto(addr308);
                     }
                     §§goto(addr330);
                  }
               }
               §§goto(addr344);
            }
         }
         §§goto(addr256);
      }
      
      public function § ! §() : void
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
         var _loc1_:b2Contact = this.m_world.§>"#§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§5§();
            _loc3_ = _loc1_.§]h§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!(_loc10_ && _loc1_))
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_ || _loc1_)
               {
                  §§push(false);
                  if(_loc11_ || _loc1_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc11_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc11_ || _loc2_)
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!(_loc10_ && this))
                                    {
                                       addr118:
                                       §§push(false);
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr126:
                                          §§push(§§pop() == §§pop());
                                          if(_loc11_ || _loc1_)
                                          {
                                             addr134:
                                             if(§§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   _loc1_ = _loc1_.§8!+§();
                                                   continue;
                                                }
                                                addr234:
                                                _loc6_ = _loc2_.§=!;§;
                                                _loc7_ = _loc3_.§=!;§;
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(this.§"!q§.§3§(_loc6_,_loc7_));
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc11_)
                                                      {
                                                         addr259:
                                                         §§push(§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr263:
                                                            §§push(false);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               addr282:
                                                               _loc1_ = (_loc9_ = _loc1_).§8!+§();
                                                               if(!(_loc10_ && _loc1_))
                                                               {
                                                                  this.§'S§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.§?"!§(this.§&!Y§);
                                                         }
                                                         _loc1_ = _loc1_.§8!+§();
                                                         continue;
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr282);
                                             }
                                             else
                                             {
                                                if(_loc1_.§`">§ & b2Contact.§;! §)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      addr160:
                                                      §§push(_loc5_.§8N§(_loc4_));
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         addr170:
                                                         §§push(false);
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            addr178:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  addr186:
                                                                  _loc1_ = (_loc9_ = _loc1_).§8!+§();
                                                                  if(!(_loc10_ && _loc1_))
                                                                  {
                                                                     this.§'S§(_loc9_);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            else
                                                            {
                                                               addr209:
                                                               §§push(this.§1!9§.§8N§(_loc2_,_loc3_));
                                                               §§push(false);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               _loc1_ = (_loc9_ = _loc1_).§8!+§();
                                                               if(!_loc10_)
                                                               {
                                                                  this.§'S§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.§`">§ &= ~b2Contact.§;! §;
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr234);
                                             }
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr178);
               }
               §§goto(addr134);
            }
            §§goto(addr160);
         }
      }
   }
}
