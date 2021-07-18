package §`j§
{
   import §2!F§.b2internal;
   import §8Y§.b2Contact;
   import §8Y§.b2ContactEdge;
   import §8Y§.b2ContactFactory;
   import §9"§.§>![§;
   import §9"§.b2ContactPoint;
   import §9"§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §-!V§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!V§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §;!=§:§>![§;
      
      b2internal var §=-§:b2Contact;
      
      b2internal var §7M§:int;
      
      b2internal var §]!8§:b2ContactFilter;
      
      b2internal var §"1§:b2ContactListener;
      
      b2internal var §,!,§:b2ContactFactory;
      
      b2internal var §,]§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.m_world = null;
               loop1:
               while(true)
               {
                  this.§7M§ = 0;
                  while(true)
                  {
                     this.§]!8§ = b2ContactFilter.§+! §;
                     while(_loc2_ || _loc1_)
                     {
                        this.§"1§ = b2ContactListener.§[Q§;
                        while(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 this.§,!,§ = new b2ContactFactory(this.§,]§);
                                 loop5:
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§;!=§ = new b2DynamicTreeBroadPhase();
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    return;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §#!S§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc13_ || param2)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc13_)
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§6q§();
         loop0:
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc13_)
               {
                  §§push(_loc6_.§`V§(_loc5_));
                  if(_loc13_ || this)
                  {
                     §§push(false);
                     if(_loc13_ || param2)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc14_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr210:
                           addr209:
                           addr204:
                           if(this.§]!8§.§`V§(_loc3_,_loc4_) == false)
                           {
                              if(_loc13_ || _loc3_)
                              {
                                 §§goto(addr218);
                              }
                           }
                           var _loc8_:b2Contact;
                           _loc3_ = (_loc8_ = this.§,!,§.§>y§(_loc3_,_loc4_)).§&^§();
                           _loc4_ = _loc8_.§7I§();
                           _loc5_ = _loc3_.m_body;
                           _loc6_ = _loc4_.m_body;
                           if(_loc13_ || _loc3_)
                           {
                              _loc8_.§8`§ = null;
                              _loc8_.§#!&§ = this.m_world.§=-§;
                              addr489:
                              addr485:
                              §§push(this.m_world.§=-§);
                              if(_loc13_)
                              {
                                 if(§§pop() != null)
                                 {
                                    addr474:
                                    this.m_world.§=-§.§8`§ = _loc8_;
                                    addr471:
                                    addr473:
                                    if(_loc13_)
                                    {
                                       addr451:
                                       §§push(this.m_world);
                                       if(_loc13_)
                                       {
                                          if(_loc13_)
                                          {
                                             if(_loc13_)
                                             {
                                                §§pop().§=-§ = _loc8_;
                                                addr448:
                                                _loc8_.§!!7§.§"!$§ = _loc8_;
                                                addr450:
                                                addr462:
                                                §§push(_loc8_.§!!7§);
                                                if(!_loc14_)
                                                {
                                                   §§pop().§3!>§ = _loc6_;
                                                   addr437:
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      addr427:
                                                      _loc8_.§!!7§.§;!Z§ = null;
                                                      addr429:
                                                      §§push(_loc8_.§!!7§);
                                                      if(!(_loc14_ && _loc3_))
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            §§pop().§%Y§ = _loc5_.§=-§;
                                                            addr416:
                                                            if(_loc13_ || param2)
                                                            {
                                                               addr387:
                                                               if(_loc5_.§=-§ != null)
                                                               {
                                                                  addr389:
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr395:
                                                                        _loc5_.§=-§.§;!Z§ = _loc8_.§!!7§;
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr378:
                                                                           _loc5_.§=-§ = _loc8_.§!!7§;
                                                                           addr373:
                                                                           _loc8_.§7a§.§"!$§ = _loc8_;
                                                                           addr383:
                                                                           if(_loc13_)
                                                                           {
                                                                              addr356:
                                                                              _loc8_.§7a§.§3!>§ = _loc5_;
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       addr337:
                                                                                       §§push(_loc8_.§7a§);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§pop().§;!Z§ = null;
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§push(_loc8_.§7a§);
                                                                                                   if(_loc13_ || this)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§pop().§%Y§ = _loc6_.§=-§;
                                                                                                         addr276:
                                                                                                         addr333:
                                                                                                         §§push(_loc6_.§=-§);
                                                                                                         if(_loc13_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(null);
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  addr290:
                                                                                                                  §§push(_loc6_.§=-§);
                                                                                                                  if(!(_loc14_ && this))
                                                                                                                  {
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§pop().§;!Z§ = _loc8_.§7a§;
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    addr260:
                                                                                                                                    _loc6_.§=-§ = _loc8_.§7a§;
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       if(_loc13_ || param2)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr276);
                                                                                                                                          }
                                                                                                                                          addr492:
                                                                                                                                          var _loc11_:*;
                                                                                                                                          §§push((_loc11_ = this.m_world).§7M§);
                                                                                                                                          if(!(_loc14_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                          }
                                                                                                                                          var _loc12_:* = §§pop();
                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                          {
                                                                                                                                             _loc11_.§7M§ = _loc12_;
                                                                                                                                          }
                                                                                                                                          §§goto(addr526);
                                                                                                                                       }
                                                                                                                                       §§goto(addr290);
                                                                                                                                    }
                                                                                                                                    §§goto(addr526);
                                                                                                                                 }
                                                                                                                                 §§goto(addr429);
                                                                                                                              }
                                                                                                                              §§goto(addr416);
                                                                                                                           }
                                                                                                                           §§goto(addr333);
                                                                                                                        }
                                                                                                                        §§goto(addr526);
                                                                                                                     }
                                                                                                                     §§goto(addr387);
                                                                                                                  }
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                               §§goto(addr260);
                                                                                                            }
                                                                                                            §§goto(addr387);
                                                                                                         }
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   §§goto(addr337);
                                                                                                }
                                                                                                §§goto(addr450);
                                                                                             }
                                                                                             §§goto(addr383);
                                                                                          }
                                                                                          §§goto(addr526);
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    §§goto(addr471);
                                                                                 }
                                                                                 §§goto(addr373);
                                                                              }
                                                                              §§goto(addr526);
                                                                           }
                                                                           §§goto(addr389);
                                                                           addr400:
                                                                        }
                                                                        addr526:
                                                                        return;
                                                                     }
                                                                     §§goto(addr462);
                                                                  }
                                                                  §§goto(addr437);
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                            §§goto(addr471);
                                                         }
                                                         §§goto(addr450);
                                                      }
                                                      §§goto(addr427);
                                                   }
                                                   §§goto(addr489);
                                                }
                                                §§goto(addr448);
                                             }
                                             §§goto(addr489);
                                          }
                                          §§goto(addr473);
                                       }
                                       §§goto(addr492);
                                    }
                                    §§goto(addr485);
                                 }
                                 §§goto(addr451);
                              }
                              §§goto(addr474);
                           }
                           §§goto(addr400);
                        }
                        addr218:
                        return;
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr209);
               }
               §§goto(addr204);
            }
            else
            {
               if(_loc7_.§3!>§ != _loc5_)
               {
                  continue;
               }
               if(!(_loc13_ || param1))
               {
                  break;
               }
               _loc9_ = _loc7_.§"!$§.§&^§();
               _loc10_ = _loc7_.§"!$§.§7I§();
               if(_loc13_ || _loc3_)
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
                              addr166:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr165:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    addr142:
                                    loop9:
                                    for(; _loc13_ || this; while(true)
                                    {
                                       §§pop();
                                       continue loop9;
                                    })
                                    {
                                       §§push(_loc10_ == _loc3_);
                                       if(!_loc13_)
                                       {
                                          continue;
                                       }
                                       if(!_loc14_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(_loc9_ == _loc4_);
                                 if(_loc13_)
                                 {
                                    if(_loc14_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(!(_loc13_ || _loc3_))
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop0;
                                          }
                                          if(_loc14_)
                                          {
                                             if(false)
                                             {
                                                continue loop7;
                                             }
                                             continue loop0;
                                          }
                                          if(!(_loc14_ && param2))
                                          {
                                             if(_loc13_ || this)
                                             {
                                                return;
                                             }
                                             break;
                                          }
                                          §§goto(addr142);
                                          continue loop1;
                                       }
                                       §§goto(addr166);
                                       addr103:
                                    }
                                 }
                                 §§goto(addr141);
                              }
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr166);
            }
         }
      }
      
      public function §&k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;!=§.§=h§(this.§#!S§);
         }
      }
      
      public function §;@§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§&^§();
         var _loc3_:b2Fixture = param1.§7I§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(_loc8_)
         {
            if(param1.§=^§())
            {
               while(true)
               {
                  this.§"1§.EndContact(param1);
                  addr325:
                  while(true)
                  {
                  }
               }
               addr321:
            }
            loop2:
            while(true)
            {
               §§push(param1.§8`§);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1.§8`§);
                        addr314:
                        while(true)
                        {
                           §§pop().§#!&§ = param1.§#!&§;
                           addr317:
                           while(true)
                           {
                           }
                        }
                        loop37:
                        while(true)
                        {
                           if(_loc9_ && param1)
                           {
                              continue loop3;
                           }
                           addr305:
                           while(true)
                           {
                              if(param1 == this.m_world.§=-§)
                              {
                                 while(true)
                                 {
                                    this.m_world.§=-§ = param1.§#!&§;
                                    addr286:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr281:
                              }
                              while(true)
                              {
                                 §§push(param1.§!!7§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§§pop().§;!Z§);
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§!!7§);
                                             addr269:
                                             while(true)
                                             {
                                                §§push(§§pop().§;!Z§);
                                                addr270:
                                                while(true)
                                                {
                                                   §§push(param1.§!!7§.§%Y§);
                                                   addr273:
                                                   while(true)
                                                   {
                                                      §§pop().§%Y§ = §§pop();
                                                      addr274:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr267:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§!!7§);
                                          loop18:
                                          while(true)
                                          {
                                             §§push(§§pop().§%Y§);
                                             if(_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(_loc8_ || param1)
                                                   {
                                                      §§push(param1.§!!7§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§%Y§);
                                                         addr255:
                                                         while(true)
                                                         {
                                                            §§push(param1.§!!7§.§;!Z§);
                                                            addr258:
                                                            while(true)
                                                            {
                                                               §§pop().§;!Z§ = §§pop();
                                                               addr259:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr317);
                                                   addr245:
                                                }
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(param1.§!!7§);
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(§§pop() == _loc4_.§=-§)
                                                         {
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc4_.§=-§ = param1.§!!7§.§%Y§;
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc8_ || _loc2_))
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(_loc8_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§7a§);
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop().§;!Z§);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop37;
                                                                                                   }
                                                                                                   §§push(param1.§7a§);
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§;!Z§);
                                                                                                      addr187:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§7a§.§%Y§);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§pop().§%Y§ = §§pop();
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  addr202:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1.§7a§);
                                                                                                                     loop26:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§%Y§);
                                                                                                                        if(_loc8_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§7a§);
                                                                                                                                    addr111:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§%Y§);
                                                                                                                                       addr112:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§7a§.§;!Z§);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§pop().§;!Z§ = §§pop();
                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   addr132:
                                                                                                                                                   if(_loc9_ && this)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§#!&§);
                                                                                                                                                         addr295:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§8`§ = param1.§8`§;
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr132);
                                                                                                                                                      }
                                                                                                                                                      addr293:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr267);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break loop22;
                                                                                                                                          }
                                                                                                                                          §§goto(addr258);
                                                                                                                                       }
                                                                                                                                       §§goto(addr273);
                                                                                                                                    }
                                                                                                                                    addr82:
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       addr35:
                                                                                                                                       this.§,!,§.§;@§(param1);
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          break loop22;
                                                                                                                                       }
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§7a§);
                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc8_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() == _loc5_.§=-§)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || this)
                                                                                                                                                      {
                                                                                                                                                         _loc5_.§=-§ = param1.§7a§.§%Y§;
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         break loop22;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr82);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr35);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr111);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop32;
                                                                                                                                             addr46:
                                                                                                                                          }
                                                                                                                                          var _loc6_:*;
                                                                                                                                          §§push((_loc6_ = this).§7M§);
                                                                                                                                          if(_loc8_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                          }
                                                                                                                                          var _loc7_:* = §§pop();
                                                                                                                                          if(_loc8_ || this)
                                                                                                                                          {
                                                                                                                                             _loc6_.§7M§ = _loc7_;
                                                                                                                                          }
                                                                                                                                          break loop22;
                                                                                                                                       }
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr46);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr255);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr112);
                                                                                                                     }
                                                                                                                     §§goto(addr202);
                                                                                                                  }
                                                                                                                  addr90:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr281);
                                                                                                               }
                                                                                                            }
                                                                                                            break loop22;
                                                                                                         }
                                                                                                         §§goto(addr273);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§goto(addr286);
                                                                                       }
                                                                                       §§goto(addr90);
                                                                                    }
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 §§goto(addr187);
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           continue loop11;
                                                                           addr140:
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr245);
                                                               }
                                                            }
                                                            §§goto(addr361);
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr255);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr305);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(param1.§#!&§);
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr293);
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr295);
                     §§goto(addr317);
                  }
               }
               §§goto(addr314);
            }
         }
         addr361:
      }
      
      public function §73§() : void
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
         var _loc1_:b2Contact = this.m_world.§=-§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§&^§();
            _loc3_ = _loc1_.§7I§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!(_loc11_ && _loc3_))
            {
               §§push(_loc4_.IsAwake());
               if(_loc10_)
               {
                  §§push(false);
                  if(!(_loc11_ && _loc3_))
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc10_ || this)
                        {
                           if(§§pop())
                           {
                              if(!(_loc11_ && _loc3_))
                              {
                                 §§pop();
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(_loc10_)
                                    {
                                       §§push(false);
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc10_ || _loc1_)
                                          {
                                             addr128:
                                             if(§§pop())
                                             {
                                                if(!(_loc11_ && this))
                                                {
                                                   addr136:
                                                   _loc1_ = _loc1_.§[;§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§@x§ & b2Contact.§45§)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§push(_loc5_.§`V§(_loc4_));
                                                      if(_loc10_)
                                                      {
                                                         addr164:
                                                         §§push(false);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            addr172:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  _loc1_ = (_loc9_ = _loc1_).§[;§();
                                                                  if(_loc10_ || _loc1_)
                                                                  {
                                                                     this.§;@§(_loc9_);
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr199:
                                                               if(this.§]!8§.§`V§(_loc2_,_loc3_) == false)
                                                               {
                                                                  if(!(_loc10_ || _loc3_))
                                                                  {
                                                                     addr233:
                                                                     _loc6_ = _loc2_.§!§;
                                                                     _loc7_ = _loc3_.§!§;
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        §§push(this.§;!=§.§[!K§(_loc6_,_loc7_));
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr268:
                                                                              §§push(§§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 addr272:
                                                                                 §§push(false);
                                                                              }
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr276:
                                                                                    _loc1_ = (_loc9_ = _loc1_).§[;§();
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       this.§;@§(_loc9_);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc1_.§?!R§(this.§"1§);
                                                                              }
                                                                              _loc1_ = _loc1_.§[;§();
                                                                              continue;
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc1_.§@x§ &= ~b2Contact.§45§;
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                }
                                                §§goto(addr233);
                                             }
                                             _loc1_ = (_loc9_ = _loc1_).§[;§();
                                             if(!(_loc11_ && _loc1_))
                                             {
                                                this.§;@§(_loc9_);
                                             }
                                             continue;
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr199);
            }
            §§goto(addr233);
         }
      }
   }
}
